<?php
/** @var $authors array */
?>
<?php foreach ($authors as $author): ?>
    <div class="col-lg-4 col-sm-6 mb-3">
        <div class="item-card">
            <div class="item-tumb">
                <a href="author/<?= $author['slug'] ?>" class="text-left"><img src="<?php display_image($author['photo']) ?>" alt=""></a>
            </div>
            <div class="item-details">
                <h4><a href="author/<?= $author['slug'] ?>"><?= $author['name'] ?></a></h4>
                <p>
                    <?=sprintf(___('tpl_count_books'), "<b>".$author['count_books']."</b>");?>
                </p>
                <div class="item-bottom-details d-flex justify-content-between text-primary">
                    <div class="item-price">
                    </div>
                    <div class="item-links">
                        <a href="author/<?= $author['slug'] ?>" data-id="<?= $author['id'] ?>">
                          <i class="fa fa-book-open"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
