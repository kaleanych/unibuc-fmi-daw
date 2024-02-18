<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a href="<?= ADMIN_URL ?>/page/add" class="btn btn-default btn-flat"><i class="fas fa-plus"></i> Add page</a>
    </div>

    <div class="card-body">

        <?php if (!empty($pages)): ?>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <td style="width:50px" class="text-center"><i class="fas fa-pencil-alt"></i></td>
                        <td style="width:50px" class="text-center"><i class="far fa-trash-alt"></i></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($pages as $page): ?>
                        <tr>
                            <td><?= $page['id'] ?></td>
                            <td>
                                <?= $page['title'] ?>
                            </td>
                            <td width="50">
                                <a class="btn btn-info btn-sm"
                                   href="<?= ADMIN_URL ?>/page/edit?id=<?= $page['id'] ?>"><i
                                            class="fas fa-pencil-alt"></i></a>
                            </td>
                            <td width="50">
                                <a class="btn btn-danger btn-sm delete"
                                   href="<?= ADMIN_URL ?>/page/delete?id=<?= $page['id'] ?>">
                                    <i class="far fa-trash-alt"></i>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <p><?= count($pages) ?> page(s) of: <?= $total; ?></p>
                    <?php if ($pagination->countPages > 1): ?>
                        <?= $pagination; ?>
                    <?php endif; ?>
                </div>
            </div>

        <?php else: ?>
            <p>No pages found...</p>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->
