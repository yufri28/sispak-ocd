<?php 
session_start();

if (!isset($_SESSION["level2"])) {
  header("Location: ../index.php");
  exit;
}

require '../functions.php';

if (isset($_POST["reset"])) {

    $_SESSION["keywords"]="";

    header("Location:?hal=1");

}

$jdataS = count(query("SELECT * FROM solusi"));

//pagenation

$batas = 5;

if (isset($_SESSION["keywords"])) {

    $keyword = $_SESSION["keywords"];
    
    $jdata = count(query("SELECT * FROM solusi WHERE 
                          id_solusi LIKE '%$keyword%' OR
                          des_solusi LIKE '%$keyword%' OR
                          n_spenyakit LIKE '%$keyword%'"));

}elseif(!isset($_SESSION["keywords"])){

$jdata = count(query("SELECT * FROM solusi"));

}

$jhal = ceil($jdata / $batas);

// ternari (halaman aktif)

$hal = (isset($_GET["hal"]) ) ? $_GET["hal"] : 1;

$hal_awal = ($batas * $hal) - $batas;  

//limit pagination

$bts_hal = 1;

$send_num = ($hal < ($jhal - $bts_hal))? $hal + $bts_hal : $hal; 


//akhir pagenation

//query data

if (isset($_SESSION["keywords"])) {
  
  $solusii = "SELECT * FROM solusi WHERE
                id_solusi LIKE '%$keyword%' OR
                des_solusi LIKE '%$keyword%' OR
                n_spenyakit LIKE '%$keyword%' ORDER BY 
                id_solusi DESC LIMIT $hal_awal,$batas";

  $solusi = query($solusii);

}elseif(!isset($_SESSION["keywords"])){

$solusi = query("SELECT * FROM solusi ORDER BY id_solusi DESC LIMIT $hal_awal, $batas");

}

//query data penyakit

$penyakit = query("SELECT * FROM tpenyakit");


//tambah penanganan

if (isset($_POST["btnsimpan"]) ) {


  if (simpanS($_POST) > 0) {

    echo "
    <script>
    alert('Data solusi berhasil disimpan!');
    document.location = 'penanganan.php';
    </script>
    ";
  }
  else{
    echo "<script>
    alert('Data solusi gagal disimpan!');
    document.location = 'penanganan.php';
    </script>
    ";
  }

}

//akhir tambah penanganan


//ubah data penanganan

if (isset($_POST["btnubah"])) {

  if (ubahS($_POST) > 0) {

    echo "
    <script>
    alert('Data solusi berhasil diubah!');    
    document.location = 'penanganan.php';
    </script>
    ";


  } else{

    echo "<script>
    alert('Data solusi gagal diubah!');
    document.location = 'penanganan.php';
    </script>
    ";
  }


}


// id penanganan

$query = "SELECT max(id_solusi) as max_code FROM solusi";

$hasil = mysqli_query($conn, $query);

$data = mysqli_fetch_assoc($hasil);

$id = $data['max_code'];

$urutan = (int)substr($id, 1,3);

$urutan++;

$huruf = 'S';

$id_solusi = $huruf. sprintf("%02s",$urutan);

// akhir id penanganan

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OCD Test | Admin</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/gejala.css">

</head>

<body id="page-top">


    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <h3 class="text-center">DASHBOARD ADMIN</h3>
            <!-- Sidebar - Brand -->
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Konsultasi -->
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - User -->
            <li class="nav-item">
                <a class="nav-link" href="users.php">
                    <i class="fas fa-users"></i>
                    <span>Data User</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


            <!-- Nav Item - Penyakit -->
            <li class="nav-item">
                <a class="nav-link" href="Penyakit.php">
                    <i class="fas fa-viruses"></i>
                    <span>Data Gangguan</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


            <!-- Nav Item - Gejala -->
            <li class="nav-item">
                <a class="nav-link" href="gejala.php">
                    <i class="fas fa-stethoscope"></i>
                    <span>Data Gejala</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


            <!-- Nav Item - Penanganan -->
            <li class="nav-item bg-gradient-danger">
                <a class="nav-link" href="penanganan.php">
                    <i class="fas fa-hand-holding-medical"></i>
                    <span>Data Solusi</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <!-- Nav Item - Aturan -->
            <li class="nav-item">
                <a class="nav-link" href="aturan.php">
                    <i class="fas fa-cog"></i>
                    <span>Data Aturan</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">
            <li class="nav-item">
                <a class="nav-link" href="konsultasi.php">
                    <i class="fas fa-history"></i>
                    <span>Riwayat Diagnosa</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->


        <!-- Modal tambah penanganan -->

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-dark font-weight-bold" id="exampleModalLabel"><i
                                class="fa fa-file-medical fa-lg"></i> Tambah Solusi</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" class="font-weight-bold">

                            <div class="form-group">
                                <label for="idS" class="col-form-label">ID Solusi :</label>
                                <input class="form-control" type="text" id="idS" name="idS" readonly
                                    value="<?= $id_solusi;?>">
                            </div>


                            <div class="form-group">
                                <label for="spenyakit">Gangguan :</label>
                                <select class="form-control text-capitalize font-weight-bold" name="spenyakit"
                                    id="spenyakit" required="">

                                    <option class="font-italic" value="" hidden="" disabled="" selected="">----</option>

                                    <?php foreach($penyakit as $pen): ?>

                                    <option class="font-weight-bold text-dark"><a
                                            href="?n=<?= $pen["n_penyakit"]; ?>"><?= $pen["n_penyakit"];?></a></option>

                                    <?php endforeach; ?>

                                </select>
                            </div>


                            <div class="form-group">
                                <label for="des_penanganan" class="col-form-label">Solusi :</label>
                                <textarea class="form-control pb-5" name="des_penanganan" id="des_penanganan"
                                    required=""></textarea>
                            </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-dark" data-dismiss="modal">Batal</button>
                        <button type="submit" name="btnsimpan" class="btn btn-danger">Simpan</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>


        <!-- Modal Ubah Data penanganan -->

        <div class="modal fade" id="ubah_data" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-dark font-weight-bold" id="exampleModalLabel"><i
                                class="fa fa-edit fa-lg"></i> Ubah Data Solusi</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" class="font-weight-bold">

                            <div class="form-group">
                                <label for="uids" class="col-form-label">ID :</label>
                                <input class="form-control" type="text" id="uids" name="uids" readonly>
                            </div>

                            <div class="form-group">
                                <label for="uspenyakit" class="col-form-label">Gangguan :</label>
                                <input type="text" readonly="" class="form-control text-capitalize font-weight-bold"
                                    name="uspenyakit" id="uspenyakit" required="">
                            </div>

                            <div class="form-group">
                                <label for="des_penanganan" class="col-form-label">Solusi :</label>
                                <textarea class="form-control pb-5" name="udes_penanganan" id="udes_penanganan"
                                    required=""></textarea>
                            </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-dark" data-dismiss="modal">Batal</button>
                        <button type="submit" name="btnubah" class="btn btn-danger"
                            onclick="return confirm('Anda Yakin Ingin Mengubah Data Solusi?');">Ubah</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- <script src="../js/jquery-3.6.0.min.js"></script> -->
        <script src="js/cari.js"></script>

</body>

<script type='text/javascript'>
if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}
</script>

</html>