<?php

    require_once('Category.php');

    class NaiveBayesClassifier {
    	private $stopWordRemover;
		private $tokenizer;
		private $stemmer;
		
		public function __construct() {
			require_once __DIR__ . '/vendor/autoload.php';
			
			$stopWordRemoverFactory = new \Sastrawi\StopWordRemover\StopWordRemoverFactory();
			$this->stopWordRemover = $stopWordRemoverFactory->createStopWordRemover();
			$tokenizerFactory = new \Sastrawi\Tokenizer\TokenizerFactory();
			$this->tokenizer = $tokenizerFactory->createDefaultTokenizer();
			$stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
			$this->stemmer  = $stemmerFactory->createStemmer();
		}
        /**
         * sentence is text(document) which will be classified as ham or spam
         * @return category- ham/spam
         */
    	public function classify($sentence) {
    		// extracting keywords from input text/sentence
    		$keywordsArray = $this->tokenize($sentence);

    		// classifying the category
    		$category = $this->decide($keywordsArray);

    		return $category;
    	}

    	/**
    	 * @sentence- text/document provided by user as training data
    	 * @category- category of sentence
    	 * this function will save sentence aka text/document in trainingSet table with given category
    	 * It will also update count of words (or insert new) in wordFrequency table
    	 */
    	public function train($sentence, $category) {
    		$spam = Category::$SPAM;
    		$ham = Category::$HAM;

    		if ($category == $spam || $category == $ham) {
	            // buat koneksi
	    	    require 'config.php';

	    	    // masukan data ke taining dataset dalam database
	    	    $sql = mysqli_query($conn, "INSERT into nb_trainingSet (document, category) values('$sentence', '$category')");

	    	    // extracting keywords
	    	    $keywordsArray = $this->tokenize($sentence);

	    	    // updating wordFrequency table
	    	    foreach ($keywordsArray as $word) {
	    	    	// if this word is already present with given category then update count else insert
	    	    	$sql = mysqli_query($conn, "SELECT count(*) as total FROM nb_wordFrequency WHERE word = '$word' and category= '$category' ");
	    	    	$count = mysqli_fetch_assoc($sql);

	    	    	if ($count['total'] == 0) {
	    	    		$sql = mysqli_query($conn, "INSERT into nb_wordFrequency (word, category, count) values('$word', '$category', 1)");
	    	    	} else {
	    	    		$sql = mysqli_query($conn, "UPDATE nb_wordFrequency set count = count + 1 where word = '$word'");
	    	    	}
	    	    }

	    	    //closing connection
	    	    $conn -> close();
    		} else {
    			throw new Exception('Unknown category. Valid categories are: $ham, $spam');
    		}
    	}

    	/**
    	 * this function takes a paragraph of text as input and returns an array of keywords.
    	 */
    	private function tokenize($sentence) {
			// remove stop word
			$removedText = $this->stopWordRemover->remove($sentence);
			// tokenize removed word
			$tokenizedText = $this->tokenizer->tokenize($removedText);
			// start stemming process
			$result = array();
			foreach ($tokenizedText as $word)
				array_push($result, $this->stemmer->stem($word));
				
			return $result;
    	}

    	private function decide ($keywordsArray) {
    		$spam = Category::$SPAM;
    		$ham = Category::$HAM;
			
            // by default assuming category to be ham
    		$category = $ham;

    		// making connection to database
    	    require 'config.php';

    		$sql = mysqli_query($conn, "SELECT count(*) as total FROM nb_trainingSet WHERE  category = '$spam' ");
    		$spamCount = mysqli_fetch_assoc($sql);
    		$spamCount = $spamCount['total'];

    		$sql = mysqli_query($conn, "SELECT count(*) as total FROM nb_trainingSet WHERE  category = '$ham' ");
    		$hamCount = mysqli_fetch_assoc($sql);
    		$hamCount = $hamCount['total'];

    		$sql = mysqli_query($conn, "SELECT count(*) as total FROM nb_trainingSet ");
    		$totalCount = mysqli_fetch_assoc($sql);
    		$totalCount = $totalCount['total'];

    		//p(spam)
    		$pSpam = $spamCount / $totalCount; // (no of documents classified as spam / total no of documents)

    		//p(ham)
    		$pHam = $hamCount / $totalCount; // (no of documents classified as ham / total no of documents)
    		
    		//echo $pSpam." ".$pHam;
            
            // no of distinct words (used for laplace smoothing)
            $sql = mysqli_query($conn, "SELECT count(*) as total FROM nb_wordFrequency ");
    		$distinctWords = mysqli_fetch_assoc($sql);
    		$distinctWords = $distinctWords['total'];

    		$bodyTextIsSpam = log($pSpam);
    		foreach ($keywordsArray as $word) {
    			$sql = mysqli_query($conn, "SELECT count as total FROM nb_wordFrequency where word = '$word' and category = '$spam' ");
    			$wordCount = mysqli_fetch_assoc($sql);
    			$wordCount = $wordCount['total'];
    			$bodyTextIsSpam += log(($wordCount + 1) / ($spamCount + $distinctWords));
    		}

    		$bodyTextIsHam = log($pHam);
    		foreach ($keywordsArray as $word) {
    			$sql = mysqli_query($conn, "SELECT count as total FROM nb_wordFrequency where word = '$word' and category = '$ham' ");
    			$wordCount = mysqli_fetch_assoc($sql);
    			$wordCount = $wordCount['total'];
    			$bodyTextIsHam += log(($wordCount + 1) / ($hamCount + $distinctWords));
    		}

    		if ($bodyTextIsHam >= $bodyTextIsSpam) {
    			$category = $ham;
    		} else {
    			$category = $spam;
    		}

    		$conn -> close();

    		return $category;
    	}
    }

?>
