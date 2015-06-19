jQuery(function () {
    jQuery('.tree li:has(ul)').addClass('parent_li').find(' > div').attr('title', 'Collapse this branch');
    jQuery('.tree li.parent_li > div').on('click', function (e) {
        var children = jQuery(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            jQuery(this).attr('title', 'Expand this branch').find(' > span').addClass('glyphicon-plus').removeClass('glyphicon-minus');
        } else {
            children.show('fast');
            jQuery(this).attr('title', 'Collapse this branch').find(' > span').addClass('glyphicon-minus').removeClass('glyphicon-plus');
        }
        e.stopPropagation();
    });
});