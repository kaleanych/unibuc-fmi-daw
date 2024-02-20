<?php

use wfm\View;

/** @var $this View */
?>
<hr>
<section class="services">
    <div class="container">
        <div class="row">

            <div class="col-sm-4">
                <div class="service-item text-center">
                    <p class="text-center"><i class="fas fa-book"></i></p>
                    <p><?php __('tpl_get_a_book');?></p>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="service-item text-center">
                    <p class="text-center"><i class="fas fa-book-open"></i></p>
                    <p><?php __('tpl_open_the_book');?></p>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="service-item text-center">
                    <p class="text-center"><i class="fas fa-book-reader"></i></p>
                    <p><?php __('tpl_read_the_book');?></p>
                </div>
            </div>

        </div>
    </div>
</section>
<footer>
    <section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-6">
                    <h4><?php __('tpl_information'); ?></h4>
                    <?php new \app\widgets\page\Page([
//                        'cache' => 0,
                        'class' => 'list-unstyled',
                        'prepend' => '<li><a href="' . base_url() . '">' . ___('tpl_home_link') . '</a></li>',
                    ]) ?>
                    <a href="<?=(base_url().'main/top100');?>"><?php __('tpl_top_goodreads_books');?></a>
                </div>

                <div class="col-md-3 col-6">
                    <h4><?php __('tpl_work_hours'); ?></h4>
                    <ul class="list-unstyled">
                        <li>Bucuresti</li>
                        <li>luni-duminica: 9:00 - 18:00</li>
                        <li>fara intreruper</li>
                    </ul>
                </div>

                <div class="col-md-3 col-6">
                    <h4><?php __('tpl_contacts'); ?></h4>
                    <a href="<?=(base_url().'contact/feedback');?>"><?php __('tpl_feedback');?></a>
                </div>

                <div class="col-md-3 col-6">
                    <h4><?php __('tpl_we_online'); ?></h4>
                    <div class="footer-icons">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</footer>

<button id="top">
    <i class="fas fa-angle-double-up"></i>
</button>

<div class="modal fade" id="cart-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><?php __('tpl_cart_title'); ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-cart-content">

            </div>
        </div>
    </div>
</div>

<?php $this->getDbLogs(); ?>

<script>
    const SITE_URL = '<?= SITE_URL ?>';
</script>
<script src="<?= SITE_URL ?>/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha384-1H217gwSVyLSIfaLxHbE7dRb3v4mYCKbpQvzx0cegeju1MVsGrX5xXxAvs/HgeFs"
        crossorigin="anonymous"></script>
<script src="<?= SITE_URL ?>/assets/js/jquery.magnific-popup.min.js"></script>
<script src="<?= SITE_URL ?>/assets/js/sweetalert2.js"></script>
<script src="<?= SITE_URL ?>/assets/js/main.js"></script>

</body>
</html>
