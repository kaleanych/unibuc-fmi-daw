<!-- Default box -->
<div class="card">
    <div class="card-header">
        <h1>Top authors</h1>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table text-start table-bordered" style="width: 100%;">
                <thead>
                <tr>
                    <th scope="col" style="text-align: left; padding: 5px; border: 1px solid #ccc;">Author</th>
                    <th scope="col" style="text-align: left; padding: 5px; border: 1px solid #ccc;">Books</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($authors as $author): ?>
                    <tr>
                        <td style="padding: 5px; border: 1px solid #eee; width: 50%;"><?= $author['author_name'] ?></td>
                        <td style="padding: 5px; border: 1px solid #eee;"><?= $author['count_books'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <hr>
    </div>
</div>
<!-- /.card -->
