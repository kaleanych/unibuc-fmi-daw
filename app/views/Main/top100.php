<div class="container py-3">
    <div class="row">

        <h1 class="section-title">TOP from GoodReads</h1>
        <?php foreach ($top as $book): ?>
            <div class="card col-md-3 p-2">
                <div class="row mb-3">
                    <img style="float: left; width: auto;" src="<?= $book['img']; ?>" alt="<?= $book['name']; ?>">
                    <div class="card-body pt-0" style="float: left; width: auto; max-width: 70%">
                        <h5 class="card-title mb-1"><a href="<?= $book['url']; ?>"
                                                  target="_blank"><?= $book['name']; ?></a>
                        </h5>
                        <small>by <a href="<?= $book['author_url']; ?>"
                                     target="_blank"><?= $book['author']; ?></a></small>
                    </div>
                    <div>
                        <p class="card-text">
                            <?php
                            $rating = $book['rating'];
                            for ($i = 1; $i <= 5; $i++) {
                                if ($rating >= $i) {
                                    echo '<i class="fas fa-star"></i>';
                                } else if ($rating == $i - 0.5) {
                                    echo '<i class="fas fa-star-half-alt"></i>';
                                } else {
                                    echo '<i class="far fa-star"></i>';
                                }
                            }
                            ?><small class="mx-2"><?= $rating; ?></small>
                        </p>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>