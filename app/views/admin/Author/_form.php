<!-- Default box -->
<div class="card">

    <div class="card-body">

        <form action="" method="post">
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-outline card-success">
                        <div class="card-header">
                            <h3 class="card-title">Photo</h3>
                        </div>
                        <div class="card-body">
                            <button class="btn btn-success" id="add-base-img" onclick="popupPhoto(); return false;">
                                Upload
                            </button>
                            <div id="base-img-output" class="upload-images base-image">
                                <?php if (isset($author['photo']) && $author['photo']):?>
                                <div class="item-img-upload">
                                    <img src="<?= $author['photo'] ?>" alt="">
                                    <input type="hidden" name="photo" value="<?= $author['photo'] ?>">
                                    <?php if ($author['photo'] != NO_IMAGE): ?>
                                        <button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i>
                                        </button>
                                    <?php endif; ?>
                                </div>
                                <?php endif;?>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="custom-control custom-checkbox">
                    <input class="custom-control-input" type="checkbox" id="status" name="status"
                        <?= (isset($author['status']) && $author['status']) ? 'checked' : '' ?>
                    >
                    <label for="status" class="custom-control-label">Active</label>
                </div>
            </div>

            <div class="form-group">
                <div class="custom-control custom-checkbox">
                    <input class="custom-control-input" type="checkbox" id="featured" name="featured"
                        <?= (isset($author['featured']) && $author['featured']) ? 'checked' : '' ?>
                    >
                    <label for="featured" class="custom-control-label">Featured</label>
                </div>
            </div>

            <div class="card card-info card-outline card-tabs">
                <div class="card-header p-0 pt-1 border-bottom-0">
                    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                        <?php foreach (\wfm\App::$app->getProperty('languages') as $k => $lang): ?>
                            <li class="nav-item">
                                <a class="nav-link <?php if ($lang['base']) echo 'active' ?>" data-toggle="pill"
                                   href="#<?= $k ?>">
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
                                        ["author_description", $lang['id'], "name"],
                                        "Name",
                                        true,
                                        isset($_SESSION['form_data']) ? null : h($author['author_description'][$lang['id']]['name'])
                                    );
                                    echo $field->renderAsTextField();
                                    ?>
                                </div>
                                <div class="form-group">
                                    <?php
                                    $field = \wfm\form\FormField::buildI18N(
                                        ["author_description", $lang['id'], "bio"],
                                        "Bio",
                                        false,
                                        isset($_SESSION['form_data']) ? null : h($author['author_description'][$lang['id']]['bio'])
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
    function popupPhoto() {
        CKFinder.popup({
            chooseFiles: true,
            onInit: function (finder) {
                finder.on('files:choose', function (evt) {
                    var file = evt.data.files.first();
                    const baseImgOutput = document.getElementById('base-img-output');
                    baseImgOutput.innerHTML = '<div class="item-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="photo" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                });
                finder.on('file:choose:resizedImage', function (evt) {
                    const baseImgOutput = document.getElementById('base-img-output');
                    baseImgOutput.innerHTML = '<div class="item-img-upload"><img src="' + evt.data.resizedUrl + '"><input type="hidden" name="photo" value="' + evt.data.resizedUrl + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                });
            }
        });
    }
</script>

<script>
    window.editors = {};
    document.querySelectorAll('.editor').forEach((node, index) => {
        ClassicEditor
            .create(node, {
                ckfinder: {
                    uploadUrl: '<?= SITE_URL ?>/adminlte/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files&responseType=json',
                },
                toolbar: ['ckfinder', '|', 'heading', '|', 'bold', 'italic', '|', 'undo', 'redo', '|', 'link', 'bulletedList', 'numberedList', 'insertTable', 'blockQuote'],
                image: {
                    toolbar: ['imageTextAlternative', '|', 'imageStyle:alignLeft', 'imageStyle:alignCenter', 'imageStyle:alignRight'],
                    styles: [
                        'alignLeft',
                        'alignCenter',
                        'alignRight'
                    ]
                }
            })
            .then(newEditor => {
                window.editors[index] = newEditor
            })
            .catch(error => {
                console.error(error);
            });
    });

</script>