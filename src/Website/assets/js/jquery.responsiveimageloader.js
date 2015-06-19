(function($){

    $.fn.sitecoreResponsiveImageLoader = function( settings, action ) {

        if (action === "resized") {

            if (window.sitecoreResponsiveImageLoaderTimeout) {
                clearTimeout(window.sitecoreResponsiveImageLoaderTimeout);
            }
            window.sitecoreResponsiveImageLoaderTimeout = setTimeout(function() {
                jQuery().sitecoreResponsiveImageLoader(settings, "resize");
            }, 50);
        }
        else if (action === "resize") {
            jQuery("img.rsi").each(function() {
                var $img = jQuery(this);
                var src = $img.attr("src");
                var interval = settings.interval;
                var imgWidth = $img.width();
                if (settings.retina === true && window["devicePixelRatio"] && window["devicePixelRatio"] > 1) {
                    imgWidth = imgWidth * window["devicePixelRatio"];
                }

                if (imgWidth === 100 || imgWidth === 0) {
                    // probably not yet loaded
                    $img.load(function() {
                        jQuery().sitecoreResponsiveImageLoader(settings, "resized");
                    });
                }
                if (src.indexOf("?") >= 0) {
                    src = src.substr(src.indexOf("?"));
                    var currentUrlMaxWidth = (RegExp('mw=' + '(.+?)(&|$)').exec(src)||[,null])[1];
                    if (imgWidth > currentUrlMaxWidth) {
                        var newWidth = Math.ceil(imgWidth / interval) * interval;
                        $img.attr("src", $img.attr("src").replace("mw=" + currentUrlMaxWidth, "mw=" + newWidth));
                    }
                }
            });
        }
        else {
            // Create some defaults, extending them with any options that were provided
            var mergedSettings = $.extend( {
                'interval'         : '100',
                'retina'           : true,
            }, settings);

            this.addClass("rsi");//.data("rsiInterval", settings.interval);
            $(window).resize(function() {
                jQuery().sitecoreResponsiveImageLoader(mergedSettings, "resized");
            });
            this.sitecoreResponsiveImageLoader(mergedSettings, "resize");

        }

    };

})(jQuery);