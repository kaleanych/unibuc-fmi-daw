<!-- Default box -->
<div class="card">

    <form action="" method="post">
        <div class="card-body">
            <div class="form-group">
                <div class="form-floating mb-3">
                    <?php
                    $field = \wfm\form\FormField::build(
                        "email",
                        "email",
                        isset($_SESSION['form_data']) ? null : h($contact['email']),
                        'Email',
                        true
                    );
                    echo $field->renderAsTextField(true, ['readonly' => isset($_SESSION['user'])]);
                    ?>
                </div>
            </div>
            <div class="form-group">
                <div class="form-floating mb-3">
                    <?php
                    $field = \wfm\form\FormField::build(
                        "title",
                        "title",
                        null,
                        'Title',
                        true
                    );
                    echo $field->renderAsTextField(true);
                    ?>
                </div>
            </div>
            <div class="form-group">
                <div class="form-floating mb-3">
                    <?php
                    $field = \wfm\form\FormField::build(
                        "message",
                        "message",
                        null,
                        'Message',
                        true
                    );
                    echo $field->renderAsTextareaField(true, ['rows' => 10, 'style' => "height: 200px;"]);
                    ?>
                </div>
            </div>
            <hr>
            <div class="g-recaptcha" data-sitekey="6LcydncpAAAAAOryyTyPn2CPjOmkPGFu1J3iwe38"></div>
            <hr>
            <button type="submit" class="btn btn-primary" name="submit" value="send">Send</button>
        </div>
    </form>
    <?php clear_form_session(); ?>

</div>
<!-- /.card -->

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