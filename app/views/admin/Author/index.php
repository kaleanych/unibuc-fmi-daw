<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a href="<?= ADMIN_URL ?>/author/add" class="btn btn-default btn-flat"><i class="fas fa-plus"></i> Add author</a>
    </div>

    <div class="card-body">

        <?php if (!empty($authors)): ?>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <td style="width:50px" class="text-center"><i class="fas fa-book"></i></td>
                        <td style="width:50px" class="text-center"><i class="fas fa-pencil-alt"></i></td>
                        <td style="width:50px" class="text-center"><i class="far fa-trash-alt"></i></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($authors as $author): ?>
                        <tr>
                            <td><?= $author['id'] ?></td>
                            <td>
                                <?= $author['name'] ?>
                            </td>
                            <td width="50">
                                <a class="btn btn-success btn-sm"
                                   href="<?= ADMIN_URL ?>/item?author_id=<?= $author['id'] ?>"><i
                                            class="fas fa-book-open"></i></a>
                            </td>
                            <td width="50">
                                <a class="btn btn-info btn-sm"
                                   href="<?= ADMIN_URL ?>/author/edit?id=<?= $author['id'] ?>"><i
                                            class="fas fa-pencil-alt"></i></a>
                            </td>
                            <td width="50">
                                <a class="btn btn-danger btn-sm delete"
                                   href="<?= ADMIN_URL ?>/author/delete?id=<?= $author['id'] ?>">
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
                    <p><?= count($authors) ?> author(s) of: <?= $total; ?></p>
                    <?php if ($pagination->countPages > 1): ?>
                        <?= $pagination; ?>
                    <?php endif; ?>
                </div>
            </div>

        <?php else: ?>
            <p>No authors found...</p>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->
