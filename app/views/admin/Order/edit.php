<!-- Default box -->
<div class="card">

    <div class="card-body">
        <div class="table-responsive">
            <table class="table text-start table-bordered">
                <thead>
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Price</th>
                    <th scope="col">Qty</th>
                    <th scope="col">Total</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($order_items as $order_item): ?>
                    <tr>
                        <td><a href="item/<?= $order_item['slug'] ?>" target="_blank"><?= $order_item['title'] ?></a></td>
                        <td><?= $order_item['price'] ?></td>
                        <td><?= $order_item['qty'] ?></td>
                        <td><?= $order_item['sum'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <hr>
        <div class="box">
            <h3 class="box-title">Order details</h3>
            <div class="box-content">
                <div class="table-responsive">
                    <table class="table text-start table-striped">
                        <tr>
                            <td style="width:50%;">Order number</td>
                            <td><?= $order['id'] ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Status</td>
                            <td><?= $order['status'] ? 'Done' : 'New' ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Created</td>
                            <td><?= $order['created_at'] ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Updated</td>
                            <td><?= $order['updated_at'] ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Total</td>
                            <td><?= $order['total'] ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Note</td>
                            <td><?= $order['note'] ?></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <hr>
        <div class="box">
            <h3 class="box-title">User details</h3>
            <div class="box-content">
                <div class="table-responsive">
                    <table class="table text-start table-striped">
                        <tr>
                            <td style="width:50%;">Name</td>
                            <td>
                                <?= $order['user_name'] ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Email</td>
                            <td><?= $order['user_email'] ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Phone</td>
                            <td><?= $order['user_phone_number'] ?></td>
                        </tr>
                        <tr>
                            <td style="width:50%;">Address</td>
                            <td><?= $order['user_address'] ?></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <hr>
        <?php if (!$order['status']): ?>
            <a href="<?= ADMIN_URL ?>/order/edit?id=<?= $order['id'] ?>&status=1" class="btn btn-success btn-flat">Status to Done</a>
        <?php else: ?>
            <a href="<?= ADMIN_URL ?>/order/edit?id=<?= $order['id'] ?>&status=0" class="btn btn-danger btn-flat">Status to New</a>
        <?php endif; ?>
        <a href="<?= ADMIN_URL ?>/order/export?id=<?= $order['id'] ?>" class="btn btn-info btn-flat">Export</a>

    </div>
</div>
<!-- /.card -->
