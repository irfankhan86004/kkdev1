$(document).ajaxComplete(function (event, xhr, settings) {


    if (IsJsonString(xhr.responseText)) {
        var response = JSON.parse(xhr.responseText);
        if (response.notification) {
            themeNotify(response.notification);
        }
    }


    initElements();
});

function IsJsonString(str) {
    try {
        JSON.parse(str);
    } catch (e) {
        return false;
    }
    return true;
}

$(document).ajaxStart(function (event) {
    var panelEl = $(".box-body");
    if (panelEl.closest('.box').hasClass('no-block-ui')) {
        return false;
    }

    if (panelEl.length === 0 && !$('body').hasClass('no-block-ui')) {
        panelEl = $('body');
    }
    if (panelEl.length) {
        blockUI(panelEl);
    }
});

$(document).ajaxStop(function () {
    var panelEl = $(".box-body");

    if (panelEl.length === 0) {
        panelEl = $('body');
    }

    unblockUI(panelEl);
});


$(document).ready(function () {
    initElements();
    Ladda.bind('button[type=submit]');
    Ladda.bind('.laddaBtn');
});

$('body').on('click', '[data-action]', function (e) {
    e.preventDefault();

    var $element = $(this);

    var action = $element.data('action');
    var requestData = $element.data('request_data');
    var confirmation_message = $element.data('confirmation');

    if (undefined === requestData) {
        requestData = {};
    }

    var url = $element.prop('href');

    var page_action = $element.data('page_action');
    var action_data = $element.data('action_data');

    var table = $element.data('table');

    if (action === 'delete') {

        themeConfirmation(
            'Are You sure?',
            'You won\'t be able to revert this!',
            'warning',
            'Yes, delete it!',
            'Cancel',
            function () {
                $.ajax({
                    url: url,
                    type: 'DELETE',
                    processData: false,
                    contentType: false,
                    dataType: 'json',
                    success: function (response, textStatus, jqXHR) {
                        handleAjaxSubmitSuccess(response, textStatus, jqXHR, page_action, action_data, table);
                    },
                    error: function (data, textStatus, jqXHR) {
                        themeNotify(data);
                    }
                });
            });

        return;
    }

    if (action === 'logout') {
        $.ajax({
            url: url,
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
            },
            error: function (data, textStatus, jqXHR) {
            },
            complete: function (data) {
                window.location = window.base_url;
            }
        });
    }

    if (action === 'load') {
        var load_to = $element.data('load_to');
        $(load_to).load(url);
    }

    if (action === 'post') {
        if (undefined !== confirmation_message) {
            themeConfirmation(
                'Are You sure?',
                confirmation_message,
                'info',
                'Yes',
                'Cancel', function () {
                    ajaxPost(url, requestData, table, page_action);
                });
        } else {
            ajaxPost(url, requestData, table, page_action);
        }
    }
});

function ajaxPost(url, requestData, table, page_action) {
    $.ajax({
        url: url,
        type: 'POST',
        processData: false,
        contentType: false,
        dataType: 'json',
        data: JSON.stringify(requestData),
        success: function (data, textStatus, jqXHR) {
            themeNotify(data);

            if (undefined !== table) {
                refreshDataTable(table);
            }
            if (undefined !== page_action) {
                window[page_action](data);
            }
        },
        error: function (data, textStatus, jqXHR) {
            themeNotify(data);
        }
    });
}

$('body').on('submit', '.ajax-form', function (event) {
    event.preventDefault();

    $('.has-error .help-block').html('');

    $('.form-group').removeClass('has-error');

    $('.nav.nav-tabs li a').removeClass('c-red');

    $form = $(this);

    ajax_form($form);
});

function ajax_form($form) {

    var page_action = $form.data('page_action');
    var actionData = $form.data('action_data');
    var table = $form.data('table');

    var formData = new FormData($form.get(0));

    var url = $form.attr('action');

    $.ajax({
        url: url,
        type: 'POST',
        data: formData,
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'json',
        success: function (response, textStatus, jqXHR) {
            handleAjaxSubmitSuccess(response, textStatus, jqXHR, page_action, actionData, table);
        },
        error: function (response, textStatus, jqXHR) {
            handleAjaxSubmitError(response, textStatus, jqXHR, $form)
            // if (response.status === 422) {
            //     var errors = $.parseJSON(response.responseText)['errors'];
            //     // Iterate through errors object.
            //     $.each(errors, function (field, message) {
            //         //console.error(field+': '+message);
            //         //handle arrays
            //         if (field.indexOf('.') !== -1) {
            //             field = field.replace('.', '[');
            //             //handle multi dimensional array
            //             for (i = 1; i <= (field.match(/./g) || []).length; i++) {
            //                 field = field.replace('.', '][');
            //             }
            //             field = field + "]";
            //         }
            //
            //         var formGroup = $('[name="' + field + '"]').closest('.form-group');
            //         //Try array name
            //         if (formGroup.length === 0) {
            //             formGroup = $('[name="' + field + '[]"]').closest('.form-group');
            //         }
            //
            //         // try data-name
            //         if (formGroup.length === 0) {
            //             formGroup = $('[data-name="' + field + '"]', $form).closest('.form-group');
            //         }
            //
            //         var tabIndex = formGroup.closest('.tab-pane').index();
            //
            //         var panel = formGroup.closest('.panel').find('.panel-title').addClass('c-red');
            //         if (tabIndex >= 0) {
            //             $('.nav.nav-tabs li').eq(tabIndex).find('a').addClass('c-red');
            //         }
            //         formGroup.removeClass('hidden');
            //         formGroup.addClass('has-error').append('<p class="help-block">' + message + '</p>');
            //     });
            //
            //     var data = {};
            //     data.message = $.parseJSON(response.responseText)['message'];
            //     data.level = 'error';
            //     themeNotify(data);
            //     Ladda.stopAll();
            // }
        }
    });
}