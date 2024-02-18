$(function () {

    $('.delete').click(function () {
        let res = confirm('Are you sure?');
        if (!res) return false;
    });

    $(".is-download").select2({
        placeholder: "Start typing the file name",
        minimumInputLength: 1,
        cache: true,
        ajax: {
            url: ADMIN_URL + "/item/get-download",
            delay: 250,
            dataType: 'json',
            data: function (params) {
                return {
                    q: params.term,
                    page: params.page
                };
            },
            processResults: function (data, params) {
                return {
                    results: data.items,
                };
            },
        },
    });

    $('#is_download').on('select2:open', function () {
        document.querySelector('.select2-search__field').focus();
    });

    $('#is_download').on('select2:select', function () {
        $('.clear-download').remove();
        $('#is_download').before('<p class="clear-download"><span class="btn btn-danger">Обычный товар</span></p>');
    });

    $('body').on('click', '.clear-download span', function () {
        $('#is_download').val(null).trigger('change');
        $('.clear-download').remove();
    });

    $('.card-body').on('click', '.del-img', function () {
        const parentDiv = $(this).closest('.item-img-upload').remove();
        return false;
    });

    bsCustomFileInput.init();

});