<?php
use wfm\View;
/** @var $this View */
?>
<?php if (!empty($slides)): ?>
    <div class="container-fluid my-carousel">

        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel"
             data-bs-interval="5000">
            <div class="carousel-indicators">
                <?php for ($i = 0; $i < count($slides); $i++): ?>
                    <button type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="<?= $i ?>" <?php if ($i == 0) echo 'class="active"' ?> aria-current="true"
                            aria-label="Slide <?= $i ?>"></button>
                <?php endfor; ?>
            </div>
            <div class="carousel-inner">
                <?php $i = 1;
                foreach ($slides as $slide): ?>
                    <div class="carousel-item <?php if ($i == 1) echo 'active' ?>">
                        <img src="<?= SITE_URL . $slide->img ?>" class="d-block w-100" alt="">
                    </div>
                    <?php $i++; endforeach; ?>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

    </div>
<?php endif; ?>

<?php if (!empty($items)): ?>
    <section class="featured-items">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="section-title"><?php __('main_index_featured_items'); ?></h3>
                </div>

                <?php $this->getPart('parts/items_loop', compact('items')); ?>

            </div>
        </div>
    </section>
<?php endif; ?>

<section class="services">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="section-title">HOME</h3>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-item">
                    <p class="text-center"><i class="fas fa-book"></i></p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-item">
                    <p class="text-center"><i class="fas fa-book-dead"></i></p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-item">
                    <p class="text-center"><i class="fas fa-book-open"></i></p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="service-item">
                    <p class="text-center"><i class="fas fa-book-reader"></i></p>
                </div>
            </div>

        </div>
    </div>
</section>
