<?php
/** @var $items array */
?>
<?php foreach ($items as $item): ?>
    <div class="col-lg-4 col-sm-6 mb-3">
        <div class="item-card">
            <div class="item-tumb">
                <a href="item/<?= $item['slug'] ?>"><img src="<?php display_image($item['img']) ?>" alt=""></a>
            </div>
            <div class="item-details">
                    <h4><a href="item/<?= $item['slug'] ?>"><?= $item['title'] ?></a></h4>

                <p><?= $item['excerpt'] ?></p>
                <small>
                    <?php __('tpl_book_by');?> <a href="author/<?= $item['author_slug'] ?>"><?= $item['author_name'];?></a>
                </small>
                <div class="item-bottom-details d-flex justify-content-between">

                    <div class="item-price">
                        <?php if (0):?>
                        <?php if ($item['old_price']): ?>
                            <small><?= $item['old_price'] ?></small>
                        <?php endif; ?>
                        <?= $item['price'] ?>
                        <?php endif;?>
                    </div>

                    <div class="item-links">
                        <a class="add-to-cart" href="cart/add?id=<?= $item['id'] ?>" data-id="<?= $item['id'] ?>"><?= get_cart_icon($item['id']); ?></a>

                        <?php if (in_array($item['id'], \wfm\App::$app->getProperty('wishlist'))): ?>
                            <a class="delete-from-wishlist" href="wishlist/delete?id=<?= $item['id'] ?>" data-id="<?= $item['id'] ?>"><i class="fas fa-hand-holding-heart"></i></a>
                        <?php else: ?>
                            <a class="add-to-wishlist" href="wishlist/add?id=<?= $item['id'] ?>" data-id="<?= $item['id'] ?>"><i class="far fa-heart"></i></a>
                        <?php endif; ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
