<!-- Default box -->
<div class="card">

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <td>ID</td>
                    <td><?= $user['id'] ?></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><?= $user['email'] ?></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><?= $user['name'] ?></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><?= $user['address'] ?></td>
                </tr>
                <tr>
                    <td>Role</td>
                    <td><?php include '_role.php'; ?></td>
                </tr>
                </tbody>
            </table>
            <a href="<?= ADMIN_URL ?>/user/edit?id=<?= $user['id'] ?>" class="btn btn-flat btn-secondary">Edit profile</a>
        </div>
    </div>

    <div class="card-body">
        <?php if (!empty($orders)): ?>
            <h3>Orders</h3>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Status</th>
                        <th>Created</th>
                        <th>Updated</th>
                        <th>Total</th>
                        <td style="width:50px"><i class="fas fa-pencil-alt"></i></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($orders as $order): ?>
                        <tr <?php if ($order['status']) echo 'class="table-info"' ?>>
                            <td><?= $order['id'] ?></td>
                            <td>
                                <?= $order['status'] ? 'Done' : 'New' ?>
                            </td>
                            <td><?= $order['created_at'] ?></td>
                            <td><?= $order['updated_at'] ?></td>
                            <td><?= $order['total'] ?></td>
                            <td style="width:50px">
                                <a class="btn btn-info btn-sm" href="<?= ADMIN_URL ?>/order/edit?id=<?= $order['id'] ?>">
                                    <i class="fas fa-pencil-alt"></i>
                                </a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <p><b><?= count($orders) ?></b> order(s) of <b><?= $total; ?></b></p>
                    <?php if ($pagination->countPages > 1): ?>
                        <?= $pagination; ?>
                    <?php endif; ?>
                </div>
            </div>

        <?php else: ?>
            <p>No orders...</p>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->
