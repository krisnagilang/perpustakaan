<div class="">
    <div class="page-title" style="padding: 8px">
        <div class="title_left">
            <h1><i class="fa fa-book"></i> Edit Buku</h1>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Perbarui data buku</h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">
                        <?php
                        $announce = $this->session->flashdata('announce');
                        if (!empty($announce)) {
                            if ($announce == 'Berhasil menyimpan data') {
                                echo '
                                        <div class="alert alert-success">
                                        ' . $announce . '
                                        </div>
                                    ';
                            } else {
                                echo '
                                        <div class="alert alert-danger">
                                        ' . $announce . '
                                        </div>
                                    ';
                            }
                        }
                        ?>
                        <form method="post" action="<?php echo base_url() ?>buku/submits" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                            <input type="hidden" readonly name="id" value="<?php echo $detail->ID_BUKU ?>">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Judul Buku
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="judul" value="<?php echo $detail->TITLE ?>" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Penulis
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="penulis" value="<?php echo $detail->AUTHOR ?>" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Penerbit
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="penerbit" value="<?php echo $detail->PUBLISHER ?>" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tahun
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" name="tahun" value="<?php echo $detail->YEAR ?>" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-cs-12" for="first-name">Rak
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <label for="rak">--Pilih Lokasi Rak--</label>
                                    <select class="form-control" name="rak" id="rak" value="<?php echo $detail->SHELF ?>">
                                        <option value=""></option>
                                        <option value="R-1">R-1</option>
                                        <option value="R-2">R-2</option>
                                        <option value="R-3">R-3</option>
                                        <option value="R-4">R-4</option>
                                        <option value="R-5">R-5</option>
                                        <option value="R-6">R-6</option>
                                        <option value="R-7">R-7</option>
                                        <option value="R-8">R-8</option>
                                        <option value="R-9">R-9</option>
                                        <option value="R-10">R-10</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Jumlah
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" name="jumlah" value="<?php echo $detail->QTY ?>" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <a class="btn btn-primary" href="<?php echo base_url() ?>buku">Kembali</a>
                                    <input type="submit" class="btn btn-success" name="submit" value="Simpan">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>