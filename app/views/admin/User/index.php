<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a href="<?= ADMIN_URL ?>/user/add" class="btn btn-default btn-flat"><i class="fas fa-plus"></i> Add user</a>
    </div>

    <div class="card-body">

        <?php if (!empty($users)): ?>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Name</th>
                    <th>Role</th>
                    <th style="width:50px" class="text-center"><i class="fas fa-eye"></i></th>
                    <th style="width:50px" class="text-center"><i class="fas fa-pencil-alt"></i></th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($users as $user): ?>
                    <tr>
                        <td><?= $user['id'] ?></td>
                        <td><?= $user['email'] ?></td>
                        <td><?= $user['name'] ?></td>
                        <td>
                            <?php include '_role.php'; ?>
                        </td>
                        <td>
                            <a class="btn btn-info btn-sm" href="<?= ADMIN_URL ?>/user/view?id=<?= $user['id'] ?>">
                                <i class="fas fa-eye"></i>
                            </a>
                        </td>
                        <td>
                            <a class="btn btn-warning btn-sm" href="<?= ADMIN_URL ?>/user/edit?id=<?= $user['id'] ?>">
                                <i class="fas fa-pencil-alt"></i>
                            </a>
                        </td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>

            <div class="row">
                <div class="col-md-12">
                    <p><b><?= count($users) ?></b> user(s) of <b><?= $total; ?></b></p>
                    <?php if ($pagination->countPages > 1): ?>
                        <?= $pagination; ?>
                    <?php endif; ?>
                </div>
            </div>

        <?php else: ?>
            <p>No users found...</p>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->
