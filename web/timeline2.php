<?php
	set_time_limit(0);

	require_once("auth.php");
	require_once("NaiveBayesClassifier.php");

	$naiveBayesClassifier = new NaiveBayesClassifier();

	if (isset($_GET['training'])) {
		// koneksi database
		require 'config.php';
		// masukan data ke taining dataset dalam database
		$sql = mysqli_query($conn, "SELECT * FROM `data_latih`");
		// melatih naive bayes
		while($row=mysqli_fetch_array($sql, MYSQLI_ASSOC)) {
			//var_dump($row);
			$naiveBayesClassifier->train($row['data'], $row['kategori']);
		}
	}

	$fh = fopen('dictionary.txt','r');
	$netralTotal = 0;
	$negativeTotal = 0;
	$dataStatus = array();
	$dataClassify = array();
	while ($status = fgets($fh)) {
		$classify = $naiveBayesClassifier->classify($status);
		array_push($dataStatus, $status);
		array_push($dataClassify, $classify);
		if ($classify == "Netral") {
			$netralTotal++;
		} else {
			$negativeTotal++;
		}
	}
	fclose($fh);
	//Persentase status negatif
	$persent = $negativeTotal/($netralTotal+$negativeTotal)*100;
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Radit Timeline</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <img class="img img-responsive rounded-circle mb-3" width="160" src="img/photo.png"<?php echo $_SESSION['user']['photo'] ?>" />
                    
                    <h3><?php echo  $_SESSION["user"]["name"] ?></h3>
                    <p><?php echo $_SESSION["user"]["email"] ?></p>

                    <p><a href="logout.php">Logout</a></p>
                </div>
            </div>
			<br> <!--persentase negatif -->
			<div class="card mb-3 text-center">
					<h5><?php echo "Radikalisme";?></h5>
					<div class="card mb-3" style="font-size: 80px; font-wight: bold">
						<?php echo $persent." %";?>
					</div>
			</div>
        </div>
        <div class="col-md-8">
            <form action="" method="post" />
                <div class="form-group">
					<?php
						$i = -1;
						foreach($dataStatus as $status) {
							$i++;
					?>
							<div class="card mb-3">
								<div class="card-body">
								
									<!--Munculin status negatif-->
									<?php echo "Status: ".$status."<br>"."Klasifikasi: ".$dataClassify[$i]."<br>"; ?>
								</div>
							</div>
					<?php
						}
					?>
                </div>
            </form>
            <p><a href="Timeline1.php">Cari mahasiswa lain --></a></p>
        </div>
    </div>
</div>
</body>
</html>