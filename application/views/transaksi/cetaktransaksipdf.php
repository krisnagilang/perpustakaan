<?php require_once __DIR__ . '/../../../assets/mpdf/autoload.php'; ?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

  <title>Cetak Transaksi Peminjaman</title>
</head>

<body>
  <div class="container mt-5">
    <div class="row">
      <div class="col-sm-12">
        <h2 class="text-center">Cetak Transaksi Peminjaman</h2>
        <table class="table">
          <thead>
            <tr>
              <th scope="col">No</th>
              <th scope="col">Kode</th>
              <th scope="col">Nama Peminjam</th>
              <th scope="col">Tanggal Peminjaman</th>
              <th scope="col">Tanggal Pengembalian</th>
              <th scope="col">Petugas</th>
              <th scope="col">Jumlah Buku</th>
            </tr>
          </thead>
          <tbody>
            <?php $no = 1; ?>
            <?php foreach ($pmnList as $pmn) : ?>
              <tr>
                <td><?php echo $no ?></td>
                <td><?php echo $pmn->ID_PINJAM ?></td>
                <td><?php echo $pmn->FULL_NAME ?></td>
                <td><?php $tgl = date_create($pmn->TGL_PINJAM);
                    echo date_format($tgl, 'D, d M Y'); ?>
                </td>
                <td><?php $tgl = date_create($pmn->TGL_PENGEMBALIAN);
                    echo date_format($tgl, 'D, d M Y'); ?>
                </td>
                <td><?php echo $pmn->FULLNAME ?></td>
                <td><?php echo $pmn->JML_BUKU ?></td>
              </tr>
              <?php $no++; ?>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</body>

</html>

<?php

$nama_dokumen = 'Laporan Peminjaman';
$html = ob_get_contents();
$mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8', 'format' => 'A4-L']);

$mpdf->WriteHTML(utf8_encode($html));
ob_clean();
$mpdf->Output($nama_dokumen . ".pdf", 'I');
?>