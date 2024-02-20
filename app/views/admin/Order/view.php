<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h1>Order No. <?= $order['id'] ?></h1>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table text-start table-bordered" style="width: 100%;">
                <thead>
                <tr>
                    <th scope="col" style="text-align: left; padding: 5px; border: 1px solid #ccc;">Title</th>
                    <th scope="col" style="text-align: left; padding: 5px; border: 1px solid #ccc;">Qty</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($order_items as $order_item): ?>
                    <tr>
                        <td style="padding: 5px; border: 1px solid #eee; width: 50%;"><?= $order_item['title'] ?></td>
                        <td style="padding: 5px; border: 1px solid #eee;"><?= $order_item['qty'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <hr>
        <div class="box">
            <div class="box-content">
                <div class="table-responsive">
                    <table class="table text-start table-striped" style="width: 100%;">
                        <thead>
                        <tr>
                            <th scope="col" colspan="2" style="text-align: left; padding: 5px; border: 1px solid #ccc;">Order details</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Order number</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['id'] ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Status</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['status'] ? 'Done' : 'New' ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Created</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['created_at'] ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Updated</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['updated_at'] ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Total</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['total'] ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Note</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['note'] ?></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <hr>
        <div class="box">
            <div class="box-content">
                <div class="table-responsive">
                    <table class="table text-start table-striped" style="width:100%;">
                        <thead>
                        <tr>
                            <th scope="col" colspan="2" style="text-align: left; padding: 5px; border: 1px solid #ccc;">User details</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Name</td>
                            <td style="padding: 5px; border: 1px solid #eee;">
                                <?= $order['user_name'] ?>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Email</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['user_email'] ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Phone</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['user_phone_number'] ?></td>
                        </tr>
                        <tr>
                            <td style="padding: 5px; border: 1px solid #eee; width: 50%;">Address</td>
                            <td style="padding: 5px; border: 1px solid #eee;"><?= $order['user_address'] ?></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <hr>
    </div>
</div>
<!-- /.card -->
