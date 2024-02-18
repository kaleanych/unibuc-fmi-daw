<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a href="<?= ADMIN_URL ?>/item/add" class="btn btn-default btn-flat"><i class="fas fa-plus"></i> Add item</a>
    </div>

    <div class="card-body">

        <?php if (!empty($items)): ?>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Image</th>
                        <th>Title</th>
                        <th>Price</th>
                        <th>Status</th>
                        <th></th>
                        <td><i class="fas fa-pencil-alt"></i></td>
                        <td><i class="far fa-trash-alt"></i></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($items as $item): ?>
                        <tr>
                            <td><?= $item['id'] ?></td>
                            <td>
                                <img src="<?= SITE_URL ?>/<?= $item['img'] ?>" alt="" height="40">
                            </td>
                            <td>
                                <?= $item['title'] ?>
                            </td>
                            <td>
                                <?= $item['price'] ?>
                            </td>
                            <td>
                                <?= $item['status'] ? '<i class="far fa-eye"></i>' : '<i class="far fa-eye-slash"></i>' ?>
                            </td>
                            <td>
                                <?= $item['is_download'] ? 'Downloadable' : 'Regular'; ?>
                            </td>
                            <td width="50">
                                <a class="btn btn-info btn-sm"
                                   href="<?= ADMIN_URL ?>/item/edit?id=<?= $item['id'] ?>"><i
                                        class="fas fa-pencil-alt"></i></a>
                            </td>
                            <td width="50">
                                <a class="btn btn-danger btn-sm delete"
                                   href="<?= ADMIN_URL ?>/item/delete?id=<?= $item['id'] ?>">
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
                    <p><?= count($items) ?> item(s) of <?= $total; ?></p>
                    <?php if ($pagination->countPages > 1): ?>
                        <?= $pagination; ?>
                    <?php endif; ?>
                </div>
            </div>

        <?php else: ?>
            <p>No items...</p>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->
