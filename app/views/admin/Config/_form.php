<!-- Default box -->
<div class="card">

    <div class="card-body">

        <form action="" method="post" class="row">

            <?php foreach ($fields as $field => $label) :?>
            <div class="col-md-12">
                <div class="form-group">
                    <label class="<?=(in_array($field, $rules['required']) ? 'required' : '');?>" for="<?=$field;?>"><?=$label;?></label>
                    <input type="text" name="<?=$field;?>" class="form-control" id="<?=$field;?>" value="<?= h($config[$field]) ?>">
                </div>
            </div>
            <?php endforeach;?>

            <div class="col">
                <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
            </div>

        </form>
        <?php clear_form_session(); ?>
    </div>


</div>
<!-- /.card -->
