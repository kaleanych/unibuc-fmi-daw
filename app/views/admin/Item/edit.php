<!-- Default box -->
<div class="card">

    <div class="card-body">

        <?php $key = key($item); ?>
        <form action="" method="post">

            <div class="form-group">
                <label for="category_id">Category</label>
                <?php new \app\widgets\menu\category\Menu([
                    'cache' => 0,
                    'cacheKey' => 'admin_menu_select',
                    'class' => 'form-control',
                    'container' => 'select',
                    'attrs' => [
                        'name' => 'category_id',
                        'id' => 'category_id'
                    ],
                    'prepend' => '<option value=""></option>',
                    'tpl' => APP . '/widgets/menu/category/admin_select_tpl.php',
                    'values' => $categories,
                    'value' => $item[$key]['category_id'],
                    'for_model' => 'Item'
                ]) ?>
            </div>

            <div class="form-group">
                <label for="author_id">Author</label>
                <select class="form-select form-control" name="author_id" id="author_id">
                    <option value=""></option>
                    <?php foreach ($authors as $author_id => $author): ?>
                        <option value="<?= $author_id; ?>" <?= ($author_id == $item[$key]['author_id'] ? 'selected="selected"' : ''); ?>><?= $author['name']; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" name="price" class="form-control" id="price" placeholder="Price"
                               value="<?= $item[$key]['price'] ?>">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="old_price">Old price</label>
                        <input type="text" name="old_price" class="form-control" id="old_price"
                               placeholder="Old price" value="<?= $item[$key]['old_price'] ?>">
                    </div>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <div class="custom-control custom-checkbox">
                    <input class="custom-control-input" type="checkbox" id="status"
                           name="status" <?= $item[$key]['status'] ? 'checked' : '' ?>>
                    <label for="status" class="custom-control-label">Display on site</label>
                </div>
            </div>

            <div class="form-group">
                <div class="custom-control custom-checkbox">
                    <input class="custom-control-input" type="checkbox" id="hit"
                           name="hit" <?= $item[$key]['hit'] ? 'checked' : '' ?>>
                    <label for="hit" class="custom-control-label">Hit</label>
                </div>
            </div>

            <?php if (0): ?>
                <div class="row">
                    <div class="col-md-12">

                        <div class="form-group">
                            <label for="is_download">Link a file to make the item downloadable</label>
                            <?php if (isset($item[$key]['download_id'])): ?>
                                <p class="clear-download">
                                    <span class="btn btn-danger">Regular item</span>
                                </p>
                            <?php endif; ?>
                            <select name="is_download" class="form-control select2 is-download" id="is_download"
                                    style="width: 100%;">
                                <?php if (isset($item[$key]['download_id'])): ?>
                                    <option value="<?= $item[$key]['download_id'] ?>"
                                            selected><?= $item[$key]['download_name'] ?></option>
                                <?php endif; ?>
                            </select>

                        </div>
                    </div>
                </div>
            <?php endif; ?>

            <div class="row">
                <div class="col-md-12">
                    <div class="card card-outline card-success">
                        <div class="card-header">
                            <h3 class="card-title">Main image</h3>
                        </div>
                        <div class="card-body">
                            <button class="btn btn-success" id="add-base-img" onclick="popupBaseImage(); return false;">
                                Upload
                            </button>
                            <div id="base-img-output" class="upload-images base-image">
                                <div class="item-img-upload">
                                    <img src="<?= $item[$key]['img'] ?>">
                                    <input type="hidden" name="img" value="<?= $item[$key]['img'] ?>">
                                    <?php if ($item[$key]['img'] != NO_IMAGE): ?>
                                        <button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i>
                                        </button>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card card-outline card-success">
                        <div class="card-header">
                            <h3 class="card-title">Additional images</h3>
                        </div>
                        <div class="card-body">
                            <button class="btn btn-success" id="add-gallery-img"
                                    onclick="popupGalleryImage(); return false;">Upload
                            </button>
                            <div id="gallery-img-output" class="upload-images gallery-image">
                                <?php if (!empty($gallery)): ?>
                                    <?php foreach ($gallery as $gallery_item): ?>
                                        <div class="item-img-upload">
                                            <img src="<?= $gallery_item ?>">
                                            <input type="hidden" name="gallery[]"
                                                   value="<?= $gallery_item ?>">
                                            <button class="del-img btn btn-app bg-danger"><i
                                                        class="far fa-trash-alt"></i></button>
                                        </div>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                        <!-- /.card-body -->
                    </div>
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
                                    <label class="required" for="<?= $lang['id'] ?>_title">Title</label>
                                    <input type="text" name="item_description[<?= $lang['id'] ?>][title]"
                                           class="form-control" id="<?= $lang['id'] ?>_title" placeholder="Title"
                                           value="<?= h($item[$lang['id']]['title']) ?>">
                                </div>

                                <div class="form-group">
                                    <label for="<?= $lang['id'] ?>_description">Description</label>
                                    <input type="text" name="item_description[<?= $lang['id'] ?>][description]"
                                           class="form-control" id="<?= $lang['id'] ?>_description"
                                           placeholder="Description"
                                           value="<?= h($item[$lang['id']]['description']) ?>">
                                </div>

                                <div class="form-group">
                                    <label for="<?= $lang['id'] ?>_keywords">Keywords</label>
                                    <input type="text" name="item_description[<?= $lang['id'] ?>][keywords]"
                                           class="form-control" id="<?= $lang['id'] ?>_keywords" placeholder="Keywords"
                                           value="<?= h($item[$lang['id']]['keywords']) ?>">
                                </div>

                                <div class="form-group">
                                    <label for="<?= $lang['id'] ?>_excerpt" class="required">Excerpt</label>
                                    <input type="text" name="item_description[<?= $lang['id'] ?>][excerpt]"
                                           class="form-control" id="<?= $lang['id'] ?>_excerpt" placeholder="Excerpt"
                                           value="<?= h($item[$lang['id']]['excerpt']) ?>">
                                </div>

                                <div class="form-group">
                                    <label for="<?= $lang['id'] ?>_content">Content</label>
                                    <textarea name="item_description[<?= $lang['id'] ?>][content]"
                                              class="form-control editor" id="<?= $lang['id'] ?>_content" rows="3"
                                              placeholder="Content"><?= h($item[$lang['id']]['content']) ?></textarea>
                                </div>

                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <!-- /.card -->
            </div>

            <button type="submit" class="btn btn-primary">Save</button>

        </form>

    </div>

</div>
<!-- /.card -->

<script>
    function popupBaseImage() {
        CKFinder.popup({
            chooseFiles: true,
            onInit: function (finder) {
                finder.on('files:choose', function (evt) {
                    var file = evt.data.files.first();
                    const baseImgOutput = document.getElementById('base-img-output');
                    baseImgOutput.innerHTML = '<div class="item-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="img" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                });
                finder.on('file:choose:resizedImage', function (evt) {
                    const baseImgOutput = document.getElementById('base-img-output');
                    baseImgOutput.innerHTML = '<div class="item-img-upload"><img src="' + evt.data.resizedUrl + '"><input type="hidden" name="img" value="' + evt.data.resizedUrl + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                });
            }
        });
    }
</script>

<script>
    function popupGalleryImage() {
        CKFinder.popup({
            chooseFiles: true,
            onInit: function (finder) {
                finder.on('files:choose', function (evt) {
                    var file = evt.data.files.first();
                    const galleryImgOutput = document.getElementById('gallery-img-output');

                    if (galleryImgOutput.innerHTML) {
                        galleryImgOutput.innerHTML += '<div class="item-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    } else {
                        galleryImgOutput.innerHTML = '<div class="item-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    }

                });
                finder.on('file:choose:resizedImage', function (evt) {
                    const baseImgOutput = document.getElementById('base-img-output');

                    if (galleryImgOutput.innerHTML) {
                        galleryImgOutput.innerHTML += '<div class="item-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    } else {
                        galleryImgOutput.innerHTML = '<div class="item-img-upload"><img src="' + file.getUrl() + '"><input type="hidden" name="gallery[]" value="' + file.getUrl() + '"><button class="del-img btn btn-app bg-danger"><i class="far fa-trash-alt"></i></button></div>';
                    }

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
