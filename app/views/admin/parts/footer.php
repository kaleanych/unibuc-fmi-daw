<?php /** @var $this \wfm\View */ ?>

<footer class="main-footer">
    <div class="float-right d-none d-sm-block">
        <b>Version</b> 0.1.0
    </div>
    <strong>Copyright &copy; <?= date('Y');?> LiBRY.</strong> All rights reserved.
</footer>

<div class="logs">
    <?php $this->getDbLogs(); ?>
</div>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<script>
    const SITE_URL = '<?= SITE_URL ?>';
    const ADMIN_URL = '<?= ADMIN_URL ?>';
</script>

<!-- jQuery -->
<script src="<?= SITE_URL ?>/adminlte/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?= SITE_URL ?>/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= SITE_URL ?>/adminlte/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= SITE_URL ?>/adminlte/dist/js/demo.js"></script>
<script src="<?= SITE_URL ?>/adminlte/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="<?= SITE_URL ?>/adminlte/plugins/select2/js/select2.full.js"></script>
<script src="<?= SITE_URL ?>/adminlte/main.js"></script>
</body>
</html>
