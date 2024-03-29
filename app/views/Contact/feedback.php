<?php

use app\models\Config;
use wfm\App; ?>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-2">
            <li class="breadcrumb-item"><a href="<?= base_url() ?>"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item">Feedback</li>
        </ol>
    </nav>
</div>

<div class="container py-3">
    <div class="row">

        <div class="col-lg-12">
            <h1 class="section-title">Feedback</h1>

            <?= $page['content'] ?>

        </div>

    </div>
    <div class="row">
        <div class="col-lg-12">
            <hr>
            <?php include_once '_form.php'; ?>
        </div>
    </div>
</div>

