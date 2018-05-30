function initElements() {

    if (typeof CKEDITOR !== "undefined") {
        CKEDITOR.config.allowedContent = true;
        CKEDITOR.dtd.$removeEmpty['i'] = false;
        CKEDITOR.config.filebrowserBrowseUrl = '/file-manager/ckeditor';
    }

    $.ajaxSetup({
        beforeSend: function (xhr) {
            xhr.setRequestHeader('X-CSRF-TOKEN', $('meta[name="csrf-token"]').attr('content'));
        }
    });
    try {
        $('.icp-auto').iconpicker();
    } catch (e) {
    }

    $('[data-toggle="popover"]').popover();

    if ($('.copy-button').length) {
        var clipboard = new Clipboard('.copy-button');
        clipboard.on('success', function (e) {
            // e.clearSelection();
            var message = {
                level: 'success',
                message: 'Copied to clipboard!'
            };
            themeNotify(message);
        });
    }
    if (window.initFunctions) {
        $.each(window.initFunctions, function (index, element) {
            window[element]();
        });
        window.initFunctions = [];
    }
}

function refreshDataTable(table) {
    var $table = $(table);
    if (undefined !== table && $table.length) {
        $table.DataTable().ajax.reload();
    }
}

function ucfirst(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

function redirectTo(data) {
    setTimeout(function () {
        window.location.replace(data.url);
    }, 1000);
}

function site_reload() {
    setTimeout(function () {
        location.reload();
    }, 1000);
}

/* Simulate Ajax call on Panel with reload effect */
function blockUI(item) {
    $(item).block({
        message: '<svg class="circular"><circle class="path" cx="40" cy="40" r="10" fill="none" stroke-width="2" stroke-miterlimit="10"/></svg>',
        css: {
            border: 'none',
            width: '14px',
            backgroundColor: 'none'
        },
        overlayCSS: {
            backgroundColor: '#fff',
            opacity: 0.6,
            cursor: 'wait'
        }
    });
}

function unblockUI(item) {
    $(item).unblock();
}

function readURL(area, input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            if (area.find('.preview').length) {
                area.find('.preview').attr('src', e.target.result);
                area.find('.preview').removeClass('hidden');
            }
        };
        reader.readAsDataURL(input.files[0]);
    }
}

$(document).on("change", ".upload-file-area", function () {
    var $area = $(this);
    var $input = $("#" + $area.data('input'));

    if ($area.find(".file-name").length) {
        var fileNameSpan = $area.find(".file-name");

        var names = '';

        for (var i = 0; i < $input[0].files.length; ++i) {
            names += $input[0].files[i].name + ' | ';
        }
        names = _.trim(names, ' | ');

        fileNameSpan.text(names);
    }

    readURL($area, $input[0]);
});


$(document).on('click', '.modal-load', function (e) {
    e.preventDefault();
    var title = $(this).data('title');
    var view_url = $(this).attr('href');
    $.get(view_url, function (data) {
        $('#global-modal').modal();
        $('#global-modal').on('shown.bs.modal', function () {
            $('#modal-body-global-modal').html(data);
            $('#global-modal .modal-header .modal-title').html(title);
        });
        $('#global-modal').on('hidden.bs.modal', function () {
            $('#global-modal .modal-body').data('');
        });
    });

});


function handleAjaxSubmitSuccess(response, textStatus, jqXHR, page_action, actionData, table) {
    Ladda.stopAll();

    if (response.message) {
        themeNotify(response);
    }

    if (response.action) {
        if (response.actionData) {
            window[response.action](response.actionData);
        } else {
            window[response.action]();
        }
    }

    if (undefined !== table) {
        refreshDataTable(table);
    }

    if (undefined !== page_action) {
        if (undefined !== actionData) {
            window[page_action](actionData);
        } else {
            window[page_action]();
        }
    }
}

function handleAjaxSubmitError(response, textStatus, jqXHR, $form) {
    if (response.status === 422) {
        var errors = $.parseJSON(response.responseText)['errors'];
        // Iterate through errors object.
        $.each(errors, function (field, message) {
            //console.error(field+': '+message);
            //handle arrays
            if (field.indexOf('.') !== -1) {
                field = field.replace('.', '[');
                //handle multi dimensional array
                for (i = 1; i <= (field.match(/./g) || []).length; i++) {
                    field = field.replace('.', '][');
                }
                field = field + "]";
            }
            var formGroup = $('[name="' + field + '"]', $form).closest('.form-group');
            //Try array name
            if (formGroup.length === 0) {
                formGroup = $('[name="' + field + '[]"]', $form).closest('.form-group');
            }

            // try data-name
            if (formGroup.length === 0) {
                formGroup = $('[data-name="' + field + '"]', $form).closest('.form-group');
            }

            if (formGroup.length === 0) {
                field = field.replace(/[0-9]/, '');
                formGroup = $('[name="' + field + '"]', $form).closest('.form-group');
            }


            var tabIndex = formGroup.closest('.tab-pane').index();

            var panel = formGroup.closest('.panel').find('.panel-title').addClass('c-red');
            if (tabIndex >= 0) {
                $('.nav.nav-tabs li').eq(tabIndex).find('a').addClass('c-red');
            }
            formGroup.removeClass('hidden');

            formGroup.addClass('has-error').append('<p class="help-block">' + message + '</p>');
        });
    }
    var data = {};
    data.message = $.parseJSON(response.responseText)['message'];
    data.level = 'error';
    themeNotify(data);
    Ladda.stopAll();
}

function divSubmit(div) {
    $('.has-error .help-block').html('');

    var page_action = div.data('page_action');
    var table = div.data('table');

    var actionData = div.data('action_data');

    var data = div.find('input, textarea, select').serializeArray();

    var formData = new FormData();

    $.each(data, function (index, element) {
        formData.append(element.name, element.value);
    });

    $.ajax({
        url: div.data('url'),
        type: div.data('method'),
        processData: false,
        contentType: false,
        dataType: 'json',
        data: formData,
        success: function (response, textStatus, jqXHR) {
            handleAjaxSubmitSuccess(response, textStatus, jqXHR, page_action, actionData, table)
        },
        error: function (response, textStatus, jqXHR) {
            handleAjaxSubmitError(response, textStatus, jqXHR, div);
        }
    });
}