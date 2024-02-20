<?php

use wfm\View;

/** @var $this View */
?>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb bg-light p-2">
            <?= $breadcrumbs ?>
        </ol>
    </nav>
</div>


<div class="container py-3">
    <div class="row">

        <div class="col-md-6 order-md-2">

            <h1><?= $item['title'] ?></h1>
            <p>
                <?php __('tpl_book_by'); ?> <a
                        href="author/<?= $item['author_slug'] ?>"><?= $item['author_name']; ?></a>
            </p>
            <p>
                <?=$item['excerpt'];?>
            </p>
            <ul class="list-unstyled">

            </ul>

            <div id="item">
                <div class="input-group mb-3">
                    <input id="input-quantity" type="number" class="form-control" name="quantity" value="1">
                    <button class="btn btn-danger add-to-cart" type="button"
                            data-id="<?= $item['id'] ?>"><?php __('item_view_borrow'); ?></button>
                </div>
            </div>

        </div>

        <div class="col-md-6 order-md-1">

            <ul class="thumbnails list-unstyled clearfix">

                <li class="thumb-main text-center">
                    <a class="thumbnail" href="<?= SITE_URL . $item['img'] ?>" data-effect="mfp-zoom-in">
                        <img src="<?php display_image($item['img']) ?>" alt="">
                    </a></li>

                <?php if (!empty($gallery)): ?>
                    <?php foreach ($gallery as $gallery_item): ?>
                        <li class="thumb-additional"><a class="thumbnail" href="<?= SITE_URL . $gallery_item['img'] ?>"
                                                        data-effect="mfp-zoom-in"><img
                                        src="<?= SITE_URL . $gallery_item['img'] ?>" alt=""></a>
                        </li>
                    <?php endforeach; ?>
                <?php endif; ?>
            </ul>

            <?= $item['content']; ?>


        </div>

    </div>
</div>