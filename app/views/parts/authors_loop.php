<?php
/** @var $authors array */
?>
<?php foreach ($authors as $author): ?>
    <div class="col-lg-4 col-sm-6 mb-3">
        <div class="item-card">
            <div class="item-details">
                <h4><a href="author/<?= $author['slug'] ?>"><?= $author['name'] ?></a></h4>
                <div class="item-bottom-details d-flex justify-content-between">
                    <div class="item-price"></div>
                    <div class="item-links">
                        <a href="author/<?= $author['slug'] ?>" data-id="<?= $author['id'] ?>">
                          <i class="fa fa-book-open"></i>
                            <small><?=sprintf(___('tpl_count_books'), $author['count_books']);?></small>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
