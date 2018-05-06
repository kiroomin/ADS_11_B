<?php 

require_once("auth.php"); 

$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "test";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}

if(isset($_POST['cari'])){
	// filter data yang diinputkan
    $nama = filter_input(INPUT_POST, 'nama', FILTER_SANITIZE_STRING);
    $nim = filter_input(INPUT_POST, 'nim', FILTER_SANITIZE_STRING);
    $prodi = filter_input(INPUT_POST, 'prodi',FILTER_SANITIZE_STRING);
    $akun = filter_input(INPUT_POST, 'akun', FILTER_SANITIZE_STRING);


    // menyiapkan query
    $sql = "INSERT INTO mahasiswa (nama, nim, prodi, akun) 
            VALUES (:nama, :nim, :prodi, :akun)";
    $stmt = $db->prepare($sql);

    // bind parameter ke query
    $params = array(
        ":nama" => $nama,
        ":nim" => $nim,
        ":prodi" => $prodi,
        ":akun" => $akun
    );

    // eksekusi query untuk menyimpan ke database
    $saved = $stmt->execute($params);

	
    // jika query simpan berhasil, maka user sudah terdaftar
    // maka alihkan ke halaman timeline2
     if($saved) header("Location: timeline2.php");
	 else var_dump($stmt->errorInfo());
}
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

            
        </div>


        <div class="col-md-8">
			
			<form action="" method="POST">
			
				<div class="form-group"> 
					<label for="nama">Nama</label>
					<input class="form-control" type="text" name="nama" placeholder="Nama Mahasiswa" required />
				</div>

				<div class="form-group">
					<label for="nim">NIM</label>
					<input class="form-control" type="text" name="nim" placeholder="Nim mahasiswa" required/>
				</div>

				<div class="form-group">
					<label for="prodi">Prodi</label>
					<input class="form-control" type="text" name="prodi" placeholder="Prodi mahasiswa" required/>
				</div>

				<div class="form-group">
					<label for="akun">Akun</label>
					<input class="form-control" type="text" name="akun" placeholder="Akun sosmed mahasiswa" required/>
				</div>

				<input type="submit" class="btn btn-success btn-block" name="cari" value="cari" />

			</form>
       
            
        </div>
    
    </div>
</div>

</body>
</html>