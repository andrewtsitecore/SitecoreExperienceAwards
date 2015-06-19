jQuery(document).ready(function () {
    jQuery('.tree a').each(function () {
        var url = jQuery(this).attr('href'),
        thumbnail = jQuery('<iframe/>').attr({
            src: url,
            scrolling: "no"
        });
        thumbnail.zoomer({ zoom: 0.5, width: 600 });

        // Setup the tooltip with the content
        jQuery(this).qtip({
            content: thumbnail,
            style: {
                width: 630,
                height: 330,
                border: {
                    width: 7,
                    radius: 5,
                }
            },

            position: {
                corner: {
                    target: 'rightMiddle',
                    tooltip: 'leftMiddle'
                }
            }
        });
    });
});