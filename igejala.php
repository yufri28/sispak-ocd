<?php 
session_start();

if (!isset($_SESSION['level1'])) {
  header("Location: index.php");
  exit;  
}


require 'functions.php';


$gejala = query("SELECT * FROM tgejala");

$dg = query("SELECT * FROM diagnosis");


$user = $_SESSION['username'];


if (isset($_SESSION['level1'])) {
	
	$ready = true;

}
if (isset($_POST["tambah"])) {
 

  if (tmbgejala($_POST) > 0) {
   
   echo "
    <script>
    
    document.location = 'igejala.php'; 
    </script>
    ";
    
  }

  else{

    echo "
    <script>
    alert('Tambah Gejala Gagal!!');
    document.location = 'igejala.php';
    </script>
    ";

  }


}

//cek data diagnosa sudah ada atau belum

if (cekdiag($user)>0) {

  $ready = true;

}

//hapus daftar gejala untuk diagnosa

if (isset($_GET['id'])) {
  
$id = $_GET['id'];

if (hapusdg($id)>0) {

  header("Location: igejala.php");
}

}

//batal diagnosis

if (isset($_POST['batal'])) {
 
 if (batal($user)>0) {
  
  header("Location: index.php"); 

 }
 else{

   header("Location: index.php");

 }

}


// id Diagnosis

$query = "SELECT max(id_d) as max_code FROM diagnosis";

$hasil = mysqli_query($conn, $query);

$data = mysqli_fetch_assoc($hasil);

$id = $data['max_code'];

$urutan = (int)substr($id, 1,3);

$urutan++;

$huruf = 'D';

$idd = $huruf. sprintf("%02s",$urutan);

// akhir id diagnosis


if (isset($_POST["diagnosis"])) {
  
  header("Location: hdiagnosis.php");

}


 ?>


<!DOCTYPE html>
<html>

<head>
    <title>Input Gejala</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
</head>

<body>

    <!-- jumbotron -->

    <section>
        <div class="jumbotron jumbotron-fluid pb-4 mb-0 pt-4 bg-light">
            <div class="container">
                <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-danger">
                    <ul class="navbar-nav ml-auto mr-auto">
                        <a href="./index.php"
                            onclick="if (!confirm('Anda yakin ingin membatalkan proses Diagnosis?')) { event.preventDefault(); }"
                            class="nav-link text-white">
                            Beranda
                        </a>
                        <a href="./igejala.php" class="nav-link text-white">
                            Diagnosis
                        </a>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <?php if(isset($ready)) : ?>
                        <li class="nav-item dropdown pb-3 " style="margin-top: 2px; margin-right: 120px">
                            <a class="dropdown-toggle active text-decoration-none text-reset" href="#"
                                id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false"><img class="img-profile rounded-circle "
                                    src="admin/img/undraw_profile.svg" style="width: 30px;"> <b class="lead"
                                    style="color: white;"><?=$_SESSION['username'];?></b></a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item text-dark font-weight-bold page-sc" href="#riwayat"><i
                                        class="fa fa-history"></i> Riwayat Konsultasi</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-dark font-weight-bold" data-toggle="modal"
                                    data-target="#ubah_data" href="#ubah_data"><i class="fa fa-user-edit"></i> Kelola
                                    Akun</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger font-weight-bold shadow" href="logout.php"
                                    onclick="return confirm('Anda yakin ingin keluar?')"><i
                                        class="fas fa-sign-out-alt"></i>
                                    Keluar</a>
                            </div>
                        </li>
                        <?php endif; ?>
                    </ul>
                </nav>
                <hr>
                <hr>
                <p class="text-danger">Pilih gejala dan tentukan tingkat keyakinan terjadinya gejala yang Anda
                    alami sesuai gejala yang Anda
                    miliki atau ingat pada form yang tersedia.
                    Selanjutnya pilih tombol tambah untuk memasukan data kedalam tabel data diagnosis. Setelah itu
                    silahkan memilih tombol diagnosis untuk melanjutkan proses diagnosa.
                </p>
            </div>
        </div>
    </section>

    <!-- akhir jumbotron -->


    <!-- awal form input -->

    <section class="bg-light pt-2 mt-0 pb-5">
        <div class="container pt-2">

            <div class="row">
                <div class="col pb-3">

                    <div class="card ">
                        <div class="card-header bg-dark text-white font-weight-bold">
                            Form Input Data Gejala & Tingkat Keyakinan.
                        </div>
                        <div class="card-body">
                            <form action="" method="post">

                                <input type="text" hidden name="un" value="<?= $user;?>">
                                <input type="text" hidden name="idd" value="<?= $idd;?>">

                                <div class="form-group">
                                    <label for="exampleFormControlSelect2" class="font-weight-bold">Pilih Gejala</label>
                                    <select multiple class="form-control pb-4" id="pgejala" name="dgejala" required="">

                                        <?php foreach ($gejala as $gej) : ?>

                                        <option class="text-capitalize" value="<?= $gej['id_gejala'];?>">
                                            <?= $gej['id_gejala'];?> | <?= $gej['n_gejala'];?></option>

                                        <?php endforeach; ?>

                                    </select>
                                </div>


                                <label class="font-weight-bold pt-2">Pilih Tingkat Keyakinan</label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ptk" id="op1" value="selalu"
                                        required="">
                                    <label class="form-check-label" for="op1">
                                        Selalu
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ptk" id="op2" value="sering">
                                    <label class="form-check-label" for="op2">
                                        Sering
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ptk" id="op3" value="kadang">
                                    <label class="form-check-label" for="op3">
                                        Kadang
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ptk" id="op4" value="jarang">
                                    <label class="form-check-label" for="op4">
                                        Jarang
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ptk" id="op5" value="tidak tahu">
                                    <label class="form-check-label" for="op5">
                                        Tidak Tahu
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="ptk" id="op6"
                                        value="tidak pernah">
                                    <label class="form-check-label" for="op6">
                                        Tidak Pernah
                                    </label>
                                </div>

                                <br>

                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-danger rounded-pill font-weight-bold"
                                        style="align:center;" name="tambah">Tambah Gejala</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
                <!-- Akhir form Input -->

                <!-- awal form data -->

                <div class="col pb-4">

                    <div class="card ">
                        <div class="card-header bg-dark text-white font-weight-bold">
                            Tabel Data Diagnosis
                        </div>
                        <div class="card-body">
                            <form action="" method="post">
                                <table class="table table-bordered table-striped">
                                    <tr class="text-center">
                                        <th>No.</th>
                                        <th>Gejala</th>
                                        <th>Keyakinan</th>
                                        <th>Aksi</th>
                                    </tr>

                                    <?php
           $i = 1;
           foreach ($dg as $dd) : ?>

                                    <tr class=" text-capitalize">
                                        <td class=" text-center"><?= $i++;?></td>
                                        <td class="font-weight-bold text-danger"><?= $dd['dgej'];?></td>
                                        <td class="text-center"><?= $dd['dfrasa'];?></td>
                                        <td class="text-center"><a href="?id=<?= $dd['id_d'];?>"
                                                class="btn btn-warning btn-sm rounded-circle"><i
                                                    class="fa fa-times"></i></a></td>
                                    </tr>

                                    <?php endforeach; ?>

                                </table>

                                <?php if(isset($ready)): ?>

                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-danger rounded-pill font-weight-bold" style=""
                                        name="diagnosis">Mulai Diagnosa</button>
                                </div>

                                <?php endif; ?>

                            </form>
                        </div>
                    </div>

                </div>

            </div>

            <hr>
            <!-- <form action="" method="post">
                <button name="batal" class="btn btn-dark ml-auto"
                    onclick="return confirm('Anda yakin ingin membatalkan proses Diagnosis?')">Batal</button>
            </form> -->

        </div>

    </section>

    <!-- akhir form data -->




    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>

</body>

<script type='text/javascript'>
if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}
</script>

</html>