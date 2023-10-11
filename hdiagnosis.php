<?php 
session_start();

if (!isset($_SESSION['level1'])) {
  header("Location: index.php");
  exit;  
}

date_default_timezone_set('Asia/Jakarta');

$date = date("d/m/Y, h:i:s a");

require 'functions.php';


$gejala = query("SELECT * FROM tgejala");
$dg = query("SELECT * FROM diagnosis");
$dp = query("SELECT * FROM tpenyakit");
$taturancf = query('select * from taturancf');

function findTAturan($gid, $taturancf) {
  foreach ($taturancf as $value) {
    if ($value['id_agejala'] = $gid) {
      var_dump($value);
      echo '<br/>';
      return $value;
    }
  }
  return null;
}

$user = $_SESSION['username'];



//selesai

if (isset($_POST['selesai'])) {
  
  if (selesai($_POST)>0) {
    
    header("Location: index.php");

  }

}

if (isset($_POST['batal'])) {
 
  if (batal($user)>0) {
   
   header("Location: index.php"); 
 
  }
  else{
 
    header("Location: index.php");
 
  }
 
 }

// id Konsultasi

$query = "SELECT max(id_konsultasi) as max_code FROM konsultasi";

$hasil = mysqli_query($conn, $query);

$data = mysqli_fetch_assoc($hasil);

$id = $data['max_code'];

$urutan = (int)substr($id, 1,3);

$urutan++;

$huruf = 'K';

$idk = $huruf. sprintf("%02s",$urutan);

// $idSol = mysqli_query($conn,"SELECT id_ksolusi FROM konsultasi WHERE id_konsultasi = '$id'");
// $idS = mysqli_fetch_assoc($idSol);
// $data_solusi = mysqli_query($conn, 'SELECT * FROM solusi WHERE id_solusi="'.$idS['id_ksolusi'].'"');
// $dSolusi = mysqli_fetch_assoc($data_solusi);

// akhir id Konsultasi
if(isset($_GET['kode_penyakit'])){
    $data_solusi = mysqli_query($conn, 'SELECT * FROM solusi WHERE id_spenyakit="'.$_GET['kode_penyakit'].'"');
    $dSolusi = mysqli_fetch_assoc($data_solusi);    
}


 ?>



<!DOCTYPE html>
<html>

<head>
    <title>Hasil Diagnosis</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- jumbotron -->

    <section>
        <div class="jumbotron jumbotron-fluid pb-4 mb-0 pt-4 bg-light">
            <div class="container">
                <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-primary">
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
            </div>
        </div>
    </section>

    <!-- akhir jumbotron -->

    <section>

        <div class="jumbotron jumbotron-fluid pb-4 mb-0 pt-4 bg-light">
            <div class="container">

                <hr>
                <p class="text-black">Hasil konsultasi berupa persentase jenis gangguan Obsessive Compulsive Disorder.
                    <b> Jika tidak ditampilkan persentase jenis gangguan, maka Obsessive Compulsive Disorder (OCD) Anda
                        masuk dalam kategori normal.
                        <b>
                </p>
            </div>
        </div>

    </section>

    <!-- awal form input -->

    <section id="app" class="bg-light pt-2 mt-0 pb-5">
        <div class="container pt-6">

            <div class="row">
                <!-- awal form data -->

                <div class="col pb-4">

                    <div class="card mt-3">

                        <div class="card-header bg-secondary">
                            <div class="card-title font-weight-bold pt-2 text-white">
                                <h5>Data Gejala</h5>
                            </div>
                        </div>
                        <table class="table table-bordered table-striped">
                            <tr class="text-center">
                                <th>No.</th>
                                <th>Gejala yang dipilih</th>
                                <th>Keyakinan</th>
                            </tr>

                            <?php

                    //ambil ID user 

                    $datau = mysqli_query($conn,"SELECT id_tuser FROM tuser WHERE username = '$user'"); 

                    $iduu = mysqli_fetch_assoc($datau);

                    $idu = $iduu["id_tuser"];


                     $ddiagnosis = query("SELECT * FROM diagnosis WHERE idduser = '$idu'");

                     ?>

                            <?php $i = 1; foreach($ddiagnosis as $diag) : ?>
                            <tr>
                                <td class="text-center"><?= $i++;?></td>
                                <td class="text-capitalize font-weight-bold"><?= $diag["dgej"];?></td>
                                <td class="text-capitalize text-center"><?= $diag["dfrasa"];?></td>

                            </tr>



                            <?php endforeach; ?>

                        </table>

                    </div>
                    <br>
                    <div class="card ">
                        <div class="card-header bg-dark text-white font-weight-bold">
                            <h4 class="pt-2">Hasil Konsultasi</h4>
                        </div>
                        <div class="card-body">


                            <div class="card-body">

                                <form action="" method="post">

                                    <table id="tabel-konsul" class="table table-bordered table-striped">
                                        <tr class="text-center">
                                            <th>No.</th>
                                            <th>Gangguan</th>
                                            <th>Persentase</th>
                                        </tr>
                                        <tr v-for="p, index in diagnosisResult" :id="index"
                                            class="text-center text-capitalize">
                                            <td class="font-weight-bold">{{ index + 1 }}</td>
                                            <td>{{ p.n_penyakit }}</td>
                                            <td>{{ p.believe }} %</td>
                                        </tr>
                                    </table>

                                    <div class="card">
                                        <div class="card-header bg-primary">
                                            <div class="card-title font-weight-bold pt-2 text-white">
                                                <h5>Hasil Diagnosa Persentase Tertinggi</h5>
                                            </div>
                                        </div>
                                        <div class="card-body">

                                            <h4 class="text-capitalize">{{ topResult.n_penyakit }} =
                                                {{ topResult.believe }} %</h4>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-header bg-primary">
                                            <div class="card-title font-weight-bold pt-2 text-white">
                                                <h5>Solusi</h5>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <p class="text-capitalize"><?= $dSolusi['des_solusi'] ?? '-';?></p>
                                        </div>
                                    </div>
                            </div>
                            </form>

                            <!-- tombol cetak laporan -->
                            <hr>
                            <form action="claporan.php" method="post">

                                <div class="row mt-4">
                                    <div class="col-lg-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary rounded-pill font-weight-bold"
                                            name="cetakh">Cetak <i class="fa fa-print"></i></button>
                                        <!-- <a href="claporan.php" class="btn btn-success rounded-pill font-weight-bold" name="cetakh">Laporan <i class="fa fa-print"></i></a> -->
                                    </div>
                                    <!-- <div class="col mt-1">
                                        Cetak laporan hasil konsultasi untuk melihat jenis gangguan dan solusi yang
                                        tepat.
                                    </div> -->
                                </div>

                                <input type="text" hidden="" name="idk" value="<?= $idk;?>">
                                <input type="text" hidden="" name="idkp" v-bind:value="topResult.n_penyakit">
                                <input type="text" hidden="" name="pre" v-bind:value="topResult.believe">

                            </form>

                            <!-- akhir cetak laporan -->


                        </div>
                    </div>

                </div>

            </div>

            <hr>
            <form action="" method="post">


                <input type="text" hidden="" name="idk" value="<?= $idk;?>">
                <input type="text" hidden="" name="idku" value="<?= $user;?>">
                <input type="text" hidden="" name="idkp" v-bind:value="topResult.n_penyakit">
                <input type="text" hidden="" name="pre" v-bind:value="topResult.believe">
                <input type="text" hidden="" name="date" value="<?= $date;?>">

                <div class="d-flex justify-content-end">
                    <a class="btn btn-primary font-weight-bold mr-3 mb-2" href="./igejala.php">ULANG</a>
                    <button name="selesai" class="btn btn-dark font-weight-bold mr-3 mb-2">SELESAI</button>
                </div>


            </form>

        </div>

    </section> <br>
    <!-- <form action="" method="post">
        <button name="batal" class="btn btn-dark mr-3 mb-2" style="margin-left:1100px;"
            onclick="return confirm('Anda yakin ingin kembali?')">Kembali</button>
    </form> -->

    <!-- akhir form data -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous">
    </script>
    <script src="./js/vue.js"></script>

</body>

<script type='text/javascript'>
if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}
// $gejala = query("SELECT * FROM tgejala");
// $dg = query("SELECT * FROM diagnosis");
// $dp = query("SELECT * FROM tpenyakit");
// $taturancf = query('select * from taturancf');
const gejala = <?php echo json_encode($gejala); ?>;
const dg = <?php echo json_encode($dg); ?>;
const dp = <?php echo json_encode($dp); ?>;
const taturancf = <?php echo json_encode($taturancf); ?>;
console.log(gejala, dg, dp, taturancf)

function findTAturan(gid) {

}
//perhitungan metode certainty factor
function runDiagnosis() {
    const believeP = dp.map(p => {
        const filteredAturan = taturancf.filter(tat => tat.id_apenyakit == p.id_penyakit);
        const prods = dg.map(g => {
            const dbot = parseFloat(g.dbot);
            const targetAturan = filteredAturan.find(t => t.id_agejala == g.iddgej);
            if (!targetAturan) {
                return 0;
            }
            const bobotcf = parseFloat(targetAturan.bobotcf);
            return bobotcf * dbot;
        });
        const filteredProds = prods.filter(p => p > 0);
        if (filteredProds.length == 0) {
            return 0;
        }
        if (filteredProds.length == 1) {
            return filteredProds[0] * 100
        }

        let [lastCf, ...restCf] = filteredProds
        const believe = filteredProds.reduce((a, b) => {
            return a + b * (1 - a)
        });
        return believe * 100;
    });
    return believeP;
    // console.log(believeP);
}

const believeP = runDiagnosis();
let diagnosisResult = believeP.map((b, index) => {
    return {
        ...dp[index],
        believe: b.toFixed(2)
    }
});
diagnosisResult = diagnosisResult.filter(d => d.believe > 0);
diagnosisResult.sort((a, b) => b.believe - a.believe);

var app = new Vue({
    el: '#app',
    data: {
        message: 'Hello Vue!',
        diagnosisResult
    },
    computed: {
        topResult() {
            console.log(this.diagnosisResult[0])
            return this.diagnosisResult[0]
        }
    },
    created() {
        <?php 
          if(!isset($_GET['kode_penyakit'])):
        ?>
        window.location = window.location.href + '?kode_penyakit=' + this.topResult.id_penyakit
        <?php endif; ?>
    }
})



// console.log(dg);
// console.log(gejala);
// console.log(taturancf);
</script>

</html>