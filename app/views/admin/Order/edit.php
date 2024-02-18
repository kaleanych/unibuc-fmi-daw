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
                <?php foreach ($order as $order_item): ?>
                    <tr>
                        <td><a href="item/<?= $order_item['slug'] ?>"><?= $order_item['title'] ?></a></td>
                        <td><?= $order_item['price'] ?></td>
                        <td><?= $order_item['qty'] ?></td>
                        <td><?= $order_item['sum'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        <div class="box">
            <h3 class="box-title">Order details</h3>
            <div class="box-content">
                <div class="table-responsive">
                    <table class="table text-start table-striped">
                        <tr>
                            <td>Order number</td>
                            <td><?= $order[0]['order_id'] ?></td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td><?= $order[0]['status'] ? 'Done' : 'New' ?></td>
                        </tr>
                        <tr>
                            <td>Created</td>
                            <td><?= $order[0]['created_at'] ?></td>
                        </tr>
                        <tr>
                            <td>Updated</td>
                            <td><?= $order[0]['updated_at'] ?></td>
                        </tr>
                        <tr>
                            <td>Total</td>
                            <td><?= $order[0]['total'] ?></td>
                        </tr>
                        <tr>
                            <td>Note</td>
                            <td><?= $order[0]['note'] ?></td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>

        <?php if (!$order[0]['status']): ?>
            <a href="<?= ADMIN_URL ?>/order/edit?id=<?= $order[0]['order_id'] ?>&status=1" class="btn btn-success btn-flat">Status to Done</a>
        <?php else: ?>
            <a href="<?= ADMIN_URL ?>/order/edit?id=<?= $order[0]['order_id'] ?>&status=0" class="btn btn-danger btn-flat">Status to New</a>
        <?php endif; ?>

    </div>
</div>
<!-- /.card -->
