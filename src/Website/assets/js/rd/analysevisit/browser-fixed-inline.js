
jQuery(document).ready(function () {
    // Remove padding, set opening and closing animations, close if clicked and disable overlay
    jQuery(".fancybox-effects-d").fancybox({
        type: 'iframe',
        // This parameter is not being overridden in the site. It has been set in default params.
        scrolling: 'no',

        height: 480,
        width: 1100,
        autoSize: false,
        
        openEffect: 'elastic',
        openSpeed: 300,

        closeEffect: 'elastic',
        closeSpeed: 300,

        closeClick: true,

        helpers: {
            overlay: {
                opacity: 0.8,
                css: {
                    'background-color': '#008998'
                }
            }
        }
    });
});
