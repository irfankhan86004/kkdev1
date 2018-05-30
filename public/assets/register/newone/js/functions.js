/**
 * init elements on page loading and ajax complete
 */
function initThemeElements(init_all) {

    if (undefined == init_all) {
        init_all = true;
    }

    $('[data-toggle="tooltip"]').tooltip();

    if (init_all) {
        // iCheck init
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
        $('input').on('ifClicked', function (event) {
            $(event.target).click()
        });
        $('input').on('ifChanged', function (event) {
            $(event.target).trigger('change');
        });
    }

    $('td .item-actions').addClass('pull-left');

    $('.select2').select2();
    $('.select2.tags').select2({
        tags: []
    });
}

function set_menu_classes() {
    var items = $(".sidebar-menu").find('.active');

    items.each(function (i) {
        var item = $(this);
        item.closest('li').addClass('active');
        item.closest('.treeview').addClass('menu-open');
        item.closest('.treeview-menu').css('display', 'block');
    });
}

function themeConfirmation(title, text, type, confirm_btn, cancel_btn, callback, dismiss_callback) {
    swal({
        title: title,
        text: text,
        type: type,
        showCancelButton: true,
        animation: true,
        // customClass: 'animated tada',
        confirmButtonColor: "#ff7014",
        confirmButtonText: confirm_btn,
        cancelButtonText: cancel_btn
    }).then(
        function () {
            if (typeof callback === "function") {
                // Call it, since we have confirmed it is callable​
                callback();
            }
        }, function (dismiss) {
            if (typeof dismiss_callback === "function") {
                // Call it, since we have confirmed it is callable​
                dismiss_callback()
            }
        });
}

function themeNotify(data) {

    if (undefined == data.level && undefined == data.message) {

        if (undefined != data.responseJSON) {
            data = data.responseJSON;
        }

        var level = 'error';
        var message = data.message;
        var errors = data.errors;
    } else {
        var level = data.level;
        var message = data.message;
    }

    if (undefined != errors) {
        message += "<br>";
        $.each(errors, function (key, val) {
            message += val + "<br>";
        });
    }
    if (undefined == level && undefined == message) {
        level = 'error';
        message = 'Something went wrong!!';
    }

    toastr[level](message, ucfirst(level));
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}