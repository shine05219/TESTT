jQuery(function () {
    var dlg = jQuery("#dialog").dialog({
        draggable: true,
        resizable: true,
        show: 'Transfer',
        hide: 'Transfer',
        width: 320,
        autoOpen: false,
        minHeight: 10,
        minwidth: 10
    });
    dlg.parent().appendTo(jQuery("form:first"));
});