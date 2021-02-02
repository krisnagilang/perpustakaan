<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Login - Perpustakaan</title>

  <!-- Bootstrap -->
  <link href="<?= base_url('assets/ico/angkasa.ico'); ?>" rel="shortcut icon">

  <link href="<?php echo base_url() ?>assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="<?php echo base_url() ?>assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- NProgress -->
  <link href="<?php echo base_url() ?>assets/vendors/nprogress/nprogress.css" rel="stylesheet">
  <!-- Animate.css -->
  <link href="<?php echo base_url() ?>assets/vendors/animate.css/animate.min.css" rel="stylesheet">

  <!-- Custom Theme Style -->
  <link href="<?php echo base_url() ?>assets/build/css/custom.min.css" rel="stylesheet">
</head>

<!--<style type="text/css">
  .bg-login {
    background-image: url(<?= base_url('assets/images/BCKGRND.jpg'); ?>);

  }
</style> -->

<body class="login">
  <div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>
    <div class="card-body p-0">
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post" action="<?php echo base_url() ?>login/dologin">
              <h1>Login</h1>
              <?php
              $announce = $this->session->flashdata('announce');
              if (!empty($announce)) {
                echo '
                    <div class="alert alert-danger">
                    ' . $announce . ' 
                    </div>
                  ';
              }
              ?>
              <div>
                <input type="text" class="form-control" name="username" placeholder="Username" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" />
              </div>
              <div>
                <button type="submit" name="login" class="btn btn-primary btn-user btn-block" value="Login" />
                Login
                </button>
              </div>

              <div class="clearfix"></div>
              <div class="separator">
                <div class="text-center">
                  <a class="fa fa-arrow-left pull-left" href="<?php echo base_url('Landing'); ?>"> Kembali ke List Buku!</a>
                </div>
                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-book"></i> Perpustakaan <br><br>SMK Angkasa 1 Margahayu</h1>
                  <p>&copy <?php echo date('Y') ?> Perpustakaan SMK Angkasa 1 Margahayu </p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
</body>

</html>