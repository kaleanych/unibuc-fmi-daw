<?php
/** @var $this \wfm\View */
?>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-2">
            <li class="breadcrumb-item"><a href="./"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item active"><?php __('tpl_account'); ?></li>
        </ol>
    </nav>
</div>

<div class="container py-3">
    <div class="row">

        <div class="col-12">
            <h1 class="section-title"><?php __('tpl_account'); ?></h1>
        </div>

        <?php $this->getPart('parts/account_sidebar'); ?>

        <div class="col-md-9 order-md-1">
            <ul class="list-unstyled">
                <li><a href="user/orders"><?php __('tpl_orders'); ?></a></li>
                <?php if (0):?>
                <li><a href="user/files"><?php __('tpl_orders_files'); ?></a></li>
                <?php endif;?>
                <li><a href="user/credentials"><?php __('tpl_user_credentials'); ?></a></li>
                <li><a href="user/logout"><?php __('tpl_user_logout'); ?></a></li>
            </ul>
        </div>
    </div>
</div>
