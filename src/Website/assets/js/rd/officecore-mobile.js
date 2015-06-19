// equalHeights plugin
(function ($) {

    $.fn.equalheights = function () {

        var currentTallest = 0, currentRowStart = 0, rowDivs = new Array(), $el, topPosition = 0;

        return this.each(function () {
            // Do something to each element here.
            $el = $(this);
            topPosition = $el.offset().top;

            if (currentRowStart != topPosition) {

                // we just came to a new row.  Set all the heights on the completed row
                for (var currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                    rowDivs[currentDiv].height(currentTallest);
                }

                // set the variables for the new row
                rowDivs.length = 0; // empty the array
                currentRowStart = topPosition;
                currentTallest = $el.height();
                rowDivs.push($el);

            } else {

                // another div on the current row.  Add it to the list and check if it's taller
                rowDivs.push($el);
                currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);

            }

            // do the last row
            for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }
        });
    };
}($));

$(document).ready(function () {
    var pageeditmode = $('#hiddenPageEdit').val() === 'true';

    if (pageeditmode) {
        // In page edit mode carousel needs to be paused by default so we can edit the carousel images
        $('#news-carousel').carousel({
            interval: false,
        });

        // Functions for next and prev have to be explicitly defined in page edit mode
        $("#news-carousel .right").click(function () {
            $('#news-carousel').carousel('next');
        });
        $("#news-carousel .left").click(function () {
            $('#news-carousel').carousel('prev');
        });
    }
    else {
        var i = $('#hiddenInterval').val();
        var p = $('#hiddenPause').val();
        var w = $('#hiddenWrap').val() === 'true';

        $('#news-carousel').carousel({
            interval: i,
            pause: p,
            wrap: w
        });
    }

    $('.carousel-indicators li').each(function (index) {
        $(this).attr('data-slide-to', index);
        if (index == 0) {
            $(this).addClass('active');
        }
    });

    $('#news-carousel .carousel-inner div').first().addClass('active');

    $('.scfForm').addClass('form-group');
    $('.scfForm input:text').each(function () {
        $(this).addClass('form-control');
    });
    $('.scfForm :button').each(function () {
        $(this).addClass('btn btn-default');
    });
});

imagesLoaded(document.querySelector('.desktop-search-results'), function (instance) {
    $('.desktop-search-results .product-overview').equalheights();
});