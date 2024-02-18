<?php
/** @var $this \wfm\View */
/** @var $items array */
?>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-2">
            <li class="breadcrumb-item"><a href="<?= base_url() ?>"><i class="fas fa-home"></i></a></li>
            <li class="breadcrumb-item"><?php __('wishlist_index_title'); ?></li>
        </ol>
    </nav>
</div>

<div class="container py-3">
    <div class="row">

        <div class="col-lg-12 category-content">
            <h1 class="section-title"><?php __('wishlist_index_title'); ?></h1>

            <div class="row">
                <?php if (!empty($items)): ?>
                    <?php $this->getPart('parts/items_loop', compact('items')); ?>
                <?php else: ?>
                    <p><?php __('wishlist_index_not_found'); ?></p>
                <?php endif; ?>
            </div>
        </div>

    </div>
</div>
