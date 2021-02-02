<style>
    .redtext {
        color: red;
    }


    body {
        background-color: white;
    }
</style>

<!-- <div class="page-title bg-white" style="padding: 8px">
        <div class="title_left">
            <div class="row">
                <div class="col-sm-2"><img class="d-inline" src="<?php echo base_url('assets/ico/angkasa.ico'); ?>"></img>
                </div>
                <div class="col-sm-9">
                <h1> Perpustakaan SMK Angkasa 1 Margahayu</h1>
                </div>
            </div>


        </div>
    </div> -->

<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <div class="row">
                    <h1>
                        <img width="120px" height="120px" src="<?php echo base_url('assets/img/logosmkangkasa1.png'); ?>">
                        &nbsp Perpustakaan SMK Angkasa 1 Margahayu
                    </h1>
                </div>
                <hr>
                <h2>List Buku |<small class="redtext">Berikut list buku yang dibutuhkan siswa untuk melakukan peminjaman. Untuk masuk sebagai Admin / Petugas tekan tombol <b>Masuk</b> di sebelah kanan !</small></h2>
                <a href="<?php echo base_url('login'); ?>" class="btn btn-primary pull-right"><i class="fa fa-arrow-right"></i> Masuk</a>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <!-- Notif -->
                <?php $announce = $this->session->userdata('announce') ?>
                <?php if (!empty($announce)) : ?>
                    <?php if ($announce == 'Berhasil menyimpan data') : ?>
                        <div class="alert alert-success fade in"><?php echo $announce; ?></div>
                    <?php else : ?>
                        <div class="alert alert-danger fade in"><?php echo $announce; ?></div>
                    <?php endif; ?>
                <?php endif; ?>
                <!-- Data -->
                <?php if ($total == 0) : ?>
                    <div class="alert alert-danger">Tidak ada data</div>
                <?php else : ?>
                    <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode</th>
                                <th>Judul Buku</th>
                                <th>Penulis</th>
                                <th>Penerbit</th>
                                <th>Tahun</th>
                                <th>Rak</th>
                                <th>Jumlah</th>
                                <th>Dipinjam</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            <?php foreach ($list as $bookList) : ?>
                                <tr>
                                    <td><?php echo $no ?></td>
                                    <td><?php echo $bookList->ID_BUKU ?></td>
                                    <td><?php echo $bookList->TITLE ?></td>
                                    <td><?php echo $bookList->AUTHOR ?></td>
                                    <td><?php echo $bookList->PUBLISHER ?></td>
                                    <td><?php echo $bookList->YEAR ?></td>
                                    <td><?php echo $bookList->SHELF ?></td>
                                    <td><?php echo $bookList->QTY ?></td>
                                    <td><?php echo $bookList->KELUAR ?></td>
                                </tr>
                                <?php $no++; ?>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
</div>
<!-- <footer>
    <div class="pull-right">
        Perpustakaan v1.0
    </div>
    <div class="clearfix"></div>
</footer> -->