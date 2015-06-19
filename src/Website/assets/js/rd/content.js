if (typeof (johnLewis) === undefined || typeof (johnLewis) !== "object") {
    johnLewis = {}
}
if (typeof (johnLewis.CMS) === undefined || typeof (johnLewis.CMS) !== "object") {
    johnLewis.CMS = {}
}
if (typeof (johnLewis.CMS.Widget) === undefined || typeof (johnLewis.CMS.Widget) !== "object") {
    johnLewis.CMS.Widget = {}
}
if (johnLewis.Module === undefined || typeof johnLewis.Module !== "object") {
    johnLewis.Module = {}
}
$j = jQuery2;
johnLewis.CMS.Widget.accordion = function () {
    function a() {
        var b = $j.browser.msie && $j.browser.version < 7;
        $j(".cms-expandable, .cms-expandable-open", ".parbase").each(function () {
            var d = $j(this),
                g = d.find(".cms-expand-wrapper"),
                c = d.find(".expand-lnk"),
                f = g.height();
            if (b) {
                c.mouseover(function () {
                    $j("span", this).css("text-decoration", "underline")
                }).mouseout(function () {
                    $j("span", this).css("text-decoration", "none")
                })
            }
            c.bind("click", function (k) {
                var h = $j(this),
                    j = j = Math.round(Math.sqrt(f) * 20),
                    l, i;
                k.preventDefault();
                if ($j(h).attr("data-jl-more") && $j(h).attr("data-jl-less")) {
                    l = h.data("jl-more");
                    i = h.data("jl-less")
                } else {
                    l = c.data("jl-more") || c.text();
                    i = c.data("jl-less") || c.text()
                }
                if (h.hasClass("expand-more")) {
                    $j("body,html").animate({
                        scrollTop: $j(this).offset().top
                    }, 500);
                    g.slideDown(j);
                    h.attr({
                        title: i
                    }).removeClass("expand-more").addClass("expand-less")
                } else {
                    if (h.hasClass("expand-less")) {
                        $j("body,html").animate({
                            scrollTop: $j(".accordion-container").offset().top - 200
                        }, 500);
                        g.slideUp(j, function () { });
                        h.attr({
                            title: l
                        }).removeClass("expand-less").addClass("expand-more")
                    }
                }
            })
        })
    }
    return {
        init: a
    }
}();
johnLewis.CMS.Widget.heroCarousel = function () {
    var l, g, i, x, o, q, h, a = 5000;

    function w() {
        l = $j(".carousel-container");
        i = $j(".carousel-slide-indicator", l);
        g = $j(".carousel-control-bar-next, .carousel-control-bar-prev", l);
        v();
        j(false);
        c(false)
    }

    function v() {
        x = $j(".hero-right-container", l);
        p();
        s();
        d()
    }

    function s(y) {
        o = y || 0;
        $j("ul li", i).eq(o).addClass("active");
        $j(x).eq(o).fadeIn(300, function () {
            i.fadeIn(500);
            slideTimeOutOut = setTimeout(function () {
                b()
            }, a)
        })
    }

    function p() {
        var y = "";
        $j(x).each(function (z) {
            y += '<li data-jl-indicator="' + z + '"';
            if (z === x.length - 1) {
                y += ' class="last"'
            }
            y += '><a href="#"></a></li>'
        });
        $j("<ul></ul>").html(y).appendTo(i)
    }

    function b() {
        q = o;
        o++;
        if (o === x.length) {
            o = 0
        }
        r();
        t(o)
    }

    function t(y) {
        $j(x).eq(q).fadeOut(200);
        o = y || 0;
        $j("ul li", i).removeClass("active");
        $j("ul li", i).eq(o).addClass("active");
        $j(x).eq(o).fadeIn(400, function () {
            j(false);
            if (!u()) {
                slideTimeOutOut = setTimeout(function () {
                    b()
                }, a)
            }
        })
    }

    function f() {
        slideTimeOutOut = setTimeout(function () {
            b()
        }, a)
    }

    function r() {
        clearTimeout(slideTimeOutOut)
    }

    function d() {
        l.bind("mouseenter", function (y) {
            y.preventDefault();
            c(true);
            r();
            g.fadeIn(500)
        });
        l.bind("mouseleave", function (y) {
            y.preventDefault();
            c(false);
            f();
            g.fadeOut(500)
        });
        i.delegate("li a", "click", function (z) {
            z.preventDefault();
            if (!n()) {
                j(true);
                var y = Number($j(this).parent().attr("data-jl-indicator"));
                r();
                q = o;
                t(y)
            }
        });
        $j(".carousel-control-bar-next", l).bind("click", function (z) {
            z.preventDefault();
            var y;
            if (!n()) {
                j(true);
                q = o;
                if (o === x.length - 1) {
                    y = 0
                } else {
                    y = o + 1
                }
                t(y);
                r()
            }
        });
        $j(".carousel-control-bar-prev", l).bind("click", function (z) {
            z.preventDefault();
            var y;
            if (!n()) {
                j(true);
                q = o;
                if (o === 0) {
                    y = x.length - 1
                } else {
                    y = o - 1
                }
                t(y);
                r()
            }
        })
    }

    function n() {
        return l.data("animating")
    }

    function j(y) {
        l.data("animating", y)
    }

    function u() {
        return l.data("hovering")
    }

    function c(y) {
        l.data("hovering", y)
    }

    function k() {
        var y;
        if (!n()) {
            j(true);
            q = o;
            if (o === 0) {
                y = x.length - 1
            } else {
                y = o - 1
            }
            t(y);
            r()
        }
        e.preventDefault()
    }

    function m() {
        var y;
        if (!n()) {
            j(true);
            q = o;
            if (o === x.length - 1) {
                y = 0
            } else {
                y = o + 1
            }
            t(y);
            r()
        }
        e.preventDefault()
    }
    return {
        init: w
    }
}();
johnLewis.CMS.Widget.fourGridCarousel = function () {
    $j(".four-grid-carousel-widget").each(function () {
        var a = $(this),
            m = a.find(".grid-items-wrapper"),
            k = m.find("ul"),
            p = k.find("li"),
            j = 700,
            l = p.width(),
            n = l * 4 + 52,
            d = Math.ceil(p.length / 4),
            i = 1,
            o = a.find(".cms-btn-prev"),
            b = a.find(".cms-btn-next"),
            g = "";

        function h(q) {
            if (q === "left") {
                k.animate({
                    left: "-=" + n
                }, j, function () { })
            } else {
                k.animate({
                    left: "+=" + n
                }, j, function () { })
            }
        }

        function f() {
            if (i !== 1 && o.hasClass("prev-disabled")) {
                o.removeClass("prev-disabled")
            } else {
                if (i !== d && b.hasClass("next-disabled")) {
                    b.removeClass("next-disabled")
                }
            }
        }

        function c() {
            if (i === d) {
                b.addClass("next-disabled")
            } else {
                if (i === 1) {
                    o.addClass("prev-disabled")
                }
            }
        }
        b.bind("click", function (q) {
            q.preventDefault();
            if (i < d) {
                if (!k.is(":animated")) {
                    h("left");
                    i++;
                    f();
                    c()
                }
            }
        });
        o.bind("click", function (q) {
            q.preventDefault();
            if (i > 1) {
                if (!k.is(":animated")) {
                    h("right");
                    i--;
                    f();
                    c()
                }
            }
        })
    })
};
$j(document).ready(function () {
    johnLewis.CMS.Widget.accordion.init();
    johnLewis.CMS.Widget.heroCarousel.init();
    johnLewis.CMS.Widget.fourGridCarousel();
});
