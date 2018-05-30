$(document).ajaxStart(function () {
    Pace.restart();
});

$(document).ajaxComplete(function () {
    var initAll = true;

    if (typeof reInitAllElements === "function") {
        initAll = reInitAllElements();
    }

    initThemeElements(initAll);
});

$(document).ready(function () {
    if ($('.sidebar-menu').length) {
        $('.sidebar-menu').tree();
    }

    set_menu_classes();

    initThemeElements(true);
});