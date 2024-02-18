<!-- Default box -->
<div class="card">

    <div class="card-body">

        <form action="" method="post">

            <div class="form-group">
                <label for="parent_id">Parent category</label>
                <?php new \app\widgets\menu\category\Menu([
                    'cache' => 0,
                    'cacheKey' => 'admin_menu_select',
                    'class' => 'form-control',
                    'container' => 'select',
                    'attrs' => [
                        'name' => 'parent_id',
                        'id' => 'parent_id'
                    ],
                    'prepend' => '<option value=""></option>',
                    'tpl' => APP . '/widgets/menu/category/admin_select_tpl.php',
                    'values' => $categories,
                    'value' => $category['parent_id'],
                    'for_model' => 'Category'
                ]) ?>
            </div>

            <div class="card card-info card-outline card-tabs">
                <div class="card-header p-0 pt-1 border-bottom-0">
                    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                        <?php foreach (\wfm\App::$app->getProperty('languages') as $k => $lang): ?>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($lang['base']) echo 'active' ?>" data-toggle="pill" href="#<?= $k ?>">
                                    <img src="<?= SITE_URL ?>/assets/img/lang/<?= $k ?>.png" alt="">
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>

                <div class="card-body">
                    <div class="tab-content">
                        <?php foreach (\wfm\App::$app->getProperty('languages') as $k => $lang): ?>
                            <div class="tab-pane fade <?php if ($lang['base']) echo 'active show' ?>" id="<?= $k ?>">
                                <div class="form-group">
                                    <?php
                                    $field = \wfm\form\FormField::buildI18N(
                                        ["category_description", $lang['id'], "title"],
                                        "Title",
                                        true,
                                        isset($_SESSION['form_data']) ? null : h($category['category_description'][$lang['id']]['title'])
                                    );
                                    echo $field->renderAsTextField();
                                    ?>
                                </div>
                                <div class="form-group">
                                    <?php
                                    $field = \wfm\form\FormField::buildI18N(
                                        ["category_description", $lang['id'], "description"],
                                        "Description",
                                        false,
                                        isset($_SESSION['form_data']) ? null : h($category['category_description'][$lang['id']]['description'])
                                    );
                                    echo $field->renderAsTextField();
                                    ?>
                                </div>
                                <div class="form-group">
                                    <?php
                                    $field = \wfm\form\FormField::buildI18N(
                                        ["category_description", $lang['id'], "keywords"],
                                        "Keywords",
                                        false,
                                        isset($_SESSION['form_data']) ? null : h($category['category_description'][$lang['id']]['keywords'])
                                    );
                                    echo $field->renderAsTextField();
                                    ?>
                                </div>
                                <div class="form-group">
                                    <?php
                                    $field = \wfm\form\FormField::buildI18N(
                                        ["category_description", $lang['id'], "content"],
                                        "Content",
                                        false,
                                        isset($_SESSION['form_data']) ? null : h($category['category_description'][$lang['id']]['content'])
                                    );
                                    echo $field->renderAsTextareaField();
                                    ?>
                                </div>

                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <!-- /.card -->
            </div>

            <button type="submit" class="btn btn-primary" name="submit" value="save">Save</button>
            <button type="submit" class="btn btn-warning" name="submit" value="save_add">Save & Add</button>

        </form>
        <?php clear_form_session(); ?>
    </div>

</div>
<!-- /.card -->

<script>
    window.editors = {};
    document.querySelectorAll( '.editor' ).forEach( ( node, index ) => {
        ClassicEditor
            .create( node, {
                ckfinder: {
                    uploadUrl: '<?= SITE_URL ?>/adminlte/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files&responseType=json',
                },
                toolbar: [ 'ckfinder', '|', 'heading', '|', 'bold', 'italic', '|', 'undo', 'redo', '|', 'link', 'bulletedList', 'numberedList', 'insertTable', 'blockQuote' ],
                image: {
                    toolbar: [ 'imageTextAlternative', '|', 'imageStyle:alignLeft', 'imageStyle:alignCenter', 'imageStyle:alignRight' ],
                    styles: [
                        'alignLeft',
                        'alignCenter',
                        'alignRight'
                    ]
                }
            } )
            .then( newEditor => {
                window.editors[ index ] = newEditor
            } )
            .catch( error => {
                console.error( error );
            } );
    });

</script>
