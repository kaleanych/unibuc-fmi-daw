<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a href="<?= ADMIN_URL ?>/download/add" class="btn btn-default btn-flat"><i class="fas fa-plus"></i> Upload file</a>
    </div>

    <div class="card-body">

        <?php if (!empty($downloads)): ?>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Original name</th>
                    <td width="50"><i class="far fa-trash-alt"></i></td>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($downloads as $download): ?>
                    <tr>
                        <td>
                            <?= $download['name'] ?>
                        </td>
                        <td>
                            <?= $download['original_name'] ?>
                        </td>
                        <td width="50">
                            <a class="btn btn-danger btn-sm delete" href="<?= ADMIN_URL ?>/download/delete?id=<?= $download['id'] ?>">
                                <i class="far fa-trash-alt"></i>
                            </a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>

            <div class="row">
                <div class="col-md-12">
                    <p><?= count($downloads) ?> file(s) of: <?= $total; ?></p>
                    <?php if ($pagination->countPages > 1): ?>
                        <?= $pagination; ?>
                    <?php endif; ?>
                </div>
            </div>

        <?php else: ?>
            <p>No files found...</p>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->



