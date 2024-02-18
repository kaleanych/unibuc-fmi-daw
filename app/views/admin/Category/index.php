<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a href="<?= ADMIN_URL ?>/category/add" class="btn btn-default btn-flat"><i class="fas fa-plus"></i> Add category</a>
    </div>

    <div class="card-body">

        <div class="table-responsive">
            <?php new \app\widgets\menu\category\Menu([
                'cache' => 0,
                'cacheKey' => 'admin_menu',
                'class' => 'table table-bordered',
                'tpl' => APP . '/widgets/menu/category/admin_table_tpl.php',
                'container' => 'table',
                'values' => $categories
            ]); ?>
        </div>

    </div>
</div>
<!-- /.card -->

