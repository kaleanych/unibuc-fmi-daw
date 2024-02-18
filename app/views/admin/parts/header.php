<?php /** @var $this \wfm\View */ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<?= ADMIN_URL ?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <?= $this->getMeta() ?>

    <link rel="icon" type="image/png" sizes="32x32" href="<?= SITE_URL ?>/assets/img/favicon.png">

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= SITE_URL ?>/adminlte/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= SITE_URL ?>/adminlte/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="<?= SITE_URL ?>/adminlte/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="<?= SITE_URL ?>/adminlte/main.css?123">

    <script src="<?= SITE_URL ?>/adminlte/ckeditor/ckeditor.js"></script>
    <script src="<?= SITE_URL ?>/adminlte/ckfinder/ckfinder.js"></script>

</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->
