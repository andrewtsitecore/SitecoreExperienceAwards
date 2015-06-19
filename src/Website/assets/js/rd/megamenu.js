(function (e, g, h) {
    var f = "accessibleMegaMenu",
        d = {
            uuidPrefix: "accessible-megamenu",
            menuClass: "accessible-megamenu",
            topNavItemClass: "accessible-megamenu-top-nav-item",
            panelClass: "accessible-megamenu-panel",
            panelGroupClass: "accessible-megamenu-panel-group",
            hoverClass: "hover",
            focusClass: "focus",
            openClass: "open"
        },
        a = {
            BACKSPACE: 8,
            COMMA: 188,
            DELETE: 46,
            DOWN: 40,
            END: 35,
            ENTER: 13,
            ESCAPE: 27,
            HOME: 36,
            LEFT: 37,
            PAGE_DOWN: 34,
            PAGE_UP: 33,
            PERIOD: 190,
            RIGHT: 39,
            SPACE: 32,
            TAB: 9,
            UP: 38,
            keyMap: {
                48: "0",
                49: "1",
                50: "2",
                51: "3",
                52: "4",
                53: "5",
                54: "6",
                55: "7",
                56: "8",
                57: "9",
                59: ";",
                65: "a",
                66: "b",
                67: "c",
                68: "d",
                69: "e",
                70: "f",
                71: "g",
                72: "h",
                73: "i",
                74: "j",
                75: "k",
                76: "l",
                77: "m",
                78: "n",
                79: "o",
                80: "p",
                81: "q",
                82: "r",
                83: "s",
                84: "t",
                85: "u",
                86: "v",
                87: "w",
                88: "x",
                89: "y",
                90: "z",
                96: "0",
                97: "1",
                98: "2",
                99: "3",
                100: "4",
                101: "5",
                102: "6",
                103: "7",
                104: "8",
                105: "9",
                190: "."
            }
        };

    function b(k, j) {
        this.element = k;
        this.settings = e.extend({}, d, j);
        this._defaults = d;
        this._name = f;
        this.init()
    }
    b.prototype = (function () {
        var j = 0,
            s = 1000,
            p = "",
            q = typeof g.hasOwnProperty === "function" && !!g.hasOwnProperty("ontouchstart"),
            k, t, w, u, y, v, m, z, l, n, x, o, r;
        k = function (A) {
            return e(A).closest(":data(plugin_" + f + ")").data("plugin_" + f)
        };
        t = function (A) {
            A = e(A);
            var B = this.settings;
            if (!A.attr("id")) {
                A.attr("id", B.uuidPrefix + "-" + new Date().getTime() + "-" + (++j))
            }
        };
        w = function (B, G) {
            var I = e(B.target),
                H = this,
                E = this.settings,
                C = this.menu,
                D = I.closest("." + E.topNavItemClass),
                A = I.hasClass(E.panelClass) ? I : I.closest("." + E.panelClass),
                F;
            r.call(this, G);
            e("html").unbind("mouseup.outside-accessible-megamenu, touchend.outside-accessible-megamenu, mspointerup.outside-accessible-megamenu, pointerup.outside-accessible-megamenu", y);
            C.find("[aria-expanded]." + this.settings.panelClass).unbind("DOMAttrModified.accessible-megamenu");
            if (G) {
                D = C.find("." + E.topNavItemClass + " ." + E.openClass + ":first").closest("." + E.topNavItemClass);
                if (!((B.relatedTarget && D.filter(B.relatedTarget)[0]) || D.has(B.relatedTarget).length > 0)) {
                    if ((B.type === "mouseout" || B.type === "focusout") && D.has(h.activeElement).length > 0) {
                        return
                    }
                    D.find("[aria-expanded]").attr("aria-expanded", "false").removeClass(E.openClass).filter("." + E.panelClass).attr("aria-hidden", "true");
                    if ((B.type === "keydown" && B.keyCode === a.ESCAPE) || B.type === "DOMAttrModified") {
                        F = D.find(":tabbable:first");
                        setTimeout(function () {
                            C.find("[aria-expanded]." + H.settings.panelClass).unbind("DOMAttrModified.accessible-megamenu");
                            F.focus();
                            H.justFocused = false
                        }, 99)
                    }
                } else {
                    if (D.length === 0) {
                        C.find("[aria-expanded=true]").attr("aria-expanded", "false").removeClass(E.openClass).filter("." + E.panelClass).attr("aria-hidden", "true")
                    }
                }
            } else {
                clearTimeout(H.focusTimeoutID);
                D.siblings().find("[aria-expanded]").attr("aria-expanded", "false").removeClass(E.openClass).filter("." + E.panelClass).attr("aria-hidden", "true");
                D.find("[aria-expanded]").attr("aria-expanded", "true").addClass(E.openClass).filter("." + E.panelClass).attr("aria-hidden", "false");
                if (B.type === "mouseover" && I.is(":tabbable") && D.length === 1 && A.length === 0 && C.has(h.activeElement).length > 0) {
                    I.focus();
                    H.justFocused = false
                }
                r.call(H)
            }
        };
        u = function (C) {
            var D = e(C.target),
                B = D.closest("." + this.settings.topNavItemClass),
                A = D.closest("." + this.settings.panelClass);
            D = D.is("a") ? D : D.parents("a").eq(0);
            if (B.length === 1 && A.length === 0 && B.find("." + this.settings.panelClass).length === 1) {
                if (!D.hasClass(this.settings.openClass)) {
                    C.preventDefault();
                    C.stopPropagation();
                    w.call(this, C)
                }
            }
        };
        y = function (A) {
            if (this.menu.has(e(A.target)).length === 0) {
                A.preventDefault();
                A.stopPropagation();
                w.call(this, A, true)
            }
        };
        v = function (A) {
            if (A.originalEvent.attrName === "aria-expanded" && A.originalEvent.newValue === "false" && e(A.target).hasClass(this.settings.openClass)) {
                A.preventDefault();
                A.stopPropagation();
                w.call(this, A, true)
            }
        };
        m = function (A) {
            clearTimeout(this.focusTimeoutID);
            e(A.target).addClass(this.settings.focusClass).bind("click.accessible-megamenu", e.proxy(u, this));
            this.justFocused = true;
            if (this.panels.filter("." + this.settings.openClass).length) {
                w.call(this, A)
            }
        };
        z = function (D) {
            this.justFocused = false;
            var C = this,
                E = e(D.target),
                B = E.closest("." + this.settings.topNavItemClass),
                A = false;
            E.removeClass(this.settings.focusClass).unbind("click.accessible-megamenu", u);
            if (g.cvox) {
                C.focusTimeoutID = setTimeout(function () {
                    g.cvox.Api.getCurrentNode(function (F) {
                        if (B.has(F).length) {
                            clearTimeout(C.focusTimeoutID)
                        } else {
                            C.focusTimeoutID = setTimeout(function (H, I, G) {
                                w.call(H, I, G)
                            }, 275, C, D, true)
                        }
                    })
                }, 25)
            } else {
                C.focusTimeoutID = setTimeout(function () {
                    w.call(C, D, true)
                }, 300)
            }
        };
        l = function (P) {
            var U = e(e(this).is(".hover:tabbable") ? this : P.target),
                I = U.filter(P.target)[0] ? this : k(U),
                S = I.settings,
                B = I.menu,
                G = I.topnavitems,
                M = U.closest("." + S.topNavItemClass),
                A = B.find(":tabbable"),
                K = U.hasClass(S.panelClass) ? U : U.closest("." + S.panelClass),
                H = K.find("." + S.panelGroupClass),
                R = U.closest("." + S.panelGroupClass),
                N, D = P.keyCode || P.which,
                F, Q, O, J, L = false,
                C = a.keyMap[P.keyCode] || "",
                E, T = (M.length === 1 && K.length === 0);
            if (U.is(".hover:tabbable")) {
                e("html").unbind("keydown.accessible-megamenu")
            }
            switch (D) {
                case a.ESCAPE:
                    break;
                case a.ENTER:
                    w.call(I, P, false);
                    break;
                case a.DOWN:
                    P.preventDefault();
                    if (T) {
                        w.call(I, P);
                        L = (M.find("." + S.panelClass + " :tabbable:first").focus().length === 1)
                    } else {
                        L = (A.filter(":gt(" + A.index(U) + "):first").focus().length === 1)
                    }
                    if (!L && g.opera && opera.toString() === "[object Opera]" && (P.ctrlKey || P.metaKey)) {
                        A = e(":tabbable");
                        Q = A.index(U);
                        L = (e(":tabbable:gt(" + e(":tabbable").index(U) + "):first").focus().length === 1)
                    }
                    break;
                case a.UP:
                    P.preventDefault();
                    if (T && U.hasClass(S.openClass)) {
                        w.call(I, P, true);
                        N = G.filter(":lt(" + G.index(M) + "):last");
                        if (N.children("." + S.panelClass).length) {
                            L = (N.children().attr("aria-expanded", "true").addClass(S.openClass).filter("." + S.panelClass).attr("aria-hidden", "false").find(":tabbable:last").focus() === 1)
                        }
                    } else {
                        if (!T) {
                            L = (A.filter(":lt(" + A.index(U) + "):last").focus().length === 1)
                        }
                    }
                    if (!L && g.opera && opera.toString() === "[object Opera]" && (P.ctrlKey || P.metaKey)) {
                        A = e(":tabbable");
                        Q = A.index(U);
                        L = (e(":tabbable:lt(" + e(":tabbable").index(U) + "):first").focus().length === 1)
                    }
                    break;
                case a.RIGHT:
                    P.preventDefault();
                    if (T) {
                        L = (G.filter(":gt(" + G.index(M) + "):first").find(":tabbable:first").focus().length === 1)
                    } else {
                        if (H.length && R.length) {
                            L = (H.filter(":gt(" + H.index(R) + "):first").find(":tabbable:first").focus().length === 1)
                        }
                        if (!L) {
                            L = (M.find(":tabbable:first").focus().length === 1)
                        }
                    }
                    break;
                case a.LEFT:
                    P.preventDefault();
                    if (T) {
                        L = (G.filter(":lt(" + G.index(M) + "):last").find(":tabbable:first").focus().length === 1)
                    } else {
                        if (H.length && R.length) {
                            L = (H.filter(":lt(" + H.index(R) + "):last").find(":tabbable:first").focus().length === 1)
                        }
                        if (!L) {
                            L = (M.find(":tabbable:first").focus().length === 1)
                        }
                    }
                    break;
                case a.TAB:
                    Q = A.index(U);
                    if (T) {
                        if (!P.shiftKey) {
                            L = (G.filter(":gt(" + G.index(M) + "):first").find(":tabbable:first").focus().length === 1)
                        } else {
                            L = (G.filter(":lt(" + G.index(M) + "):last").find(":tabbable:first").focus().length === 1)
                        }
                    } else {
                        if (P.shiftKey && Q > 0) {
                            L = (A.filter(":lt(" + Q + "):last").focus().length === 1)
                        } else {
                            if (!P.shiftKey && Q < A.length - 1) {
                                L = (A.filter(":gt(" + Q + "):first").focus().length === 1)
                            } else {
                                if (g.opera && opera.toString() === "[object Opera]") {
                                    A = e(":tabbable");
                                    Q = A.index(U);
                                    if (P.shiftKey) {
                                        L = (e(":tabbable:lt(" + e(":tabbable").index(U) + "):last").focus().length === 1)
                                    } else {
                                        L = (e(":tabbable:gt(" + e(":tabbable").index(U) + "):first").focus().length === 1)
                                    }
                                }
                            }
                        }
                    }
                    if (L) {
                        P.preventDefault()
                    }
                    break;
                case a.SPACE:
                    if (T) {
                        P.preventDefault();
                        u.call(I, P)
                    }
                    break;
                default:
                    clearTimeout(this.keydownTimeoutID);
                    p += C !== p ? C : "";
                    if (p.length === 0) {
                        return
                    }
                    this.keydownTimeoutID = setTimeout(function () {
                        p = ""
                    }, s);
                    if (T && !U.hasClass(S.openClass)) {
                        A = A.filter("." + S.topNavItemClass + " > :tabbable")
                    } else {
                        A = M.find(":tabbable")
                    }
                    if (P.shiftKey) {
                        A = e(A.get().reverse())
                    }
                    for (Q = 0; Q < A.length; Q++) {
                        O = A.eq(Q);
                        if (O.filter(U)[0]) {
                            F = (p.length === 1) ? Q + 1 : Q;
                            break
                        }
                    }
                    E = new RegExp("^" + p.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, "\\$&"), "i");
                    for (Q = F; Q < A.length; Q++) {
                        O = A.eq(Q);
                        J = e.trim(O.text());
                        if (E.test(J)) {
                            L = true;
                            O.focus();
                            break
                        }
                    }
                    if (!L) {
                        for (Q = 0; Q < F; Q++) {
                            O = A.eq(Q);
                            J = e.trim(O.text());
                            if (E.test(J)) {
                                O.focus();
                                break
                            }
                        }
                    }
                    break
            }
            I.justFocused = false
        };
        n = function (A) {
            this.mouseTimeoutID = setTimeout(function () {
                clearTimeout(this.focusTimeoutID)
            }, 1)
        };
        x = function (A) {
            clearTimeout(this.mouseTimeoutID);
            e(A.target).addClass(this.settings.hoverClass);
            w.call(this, A);
            if (e(A.target).is(":tabbable")) {
                e("html").bind("keydown.accessible-megamenu", e.proxy(l, A.target))
            }
        };
        o = function (B) {
            var A = this;
            e(B.target).removeClass(A.settings.hoverClass);
            A.mouseTimeoutID = setTimeout(function () {
                w.call(A, B, true)
            }, 250);
            if (e(B.target).is(":tabbable")) {
                e("html").unbind("keydown.accessible-megamenu")
            }
        };
        r = function (A) {
            var B = this.menu;
            if (A) {
                e("html").unbind("mouseup.outside-accessible-megamenu, touchend.outside-accessible-megamenu, mspointerup.outside-accessible-megamenu,  pointerup.outside-accessible-megamenu", y);
                B.find("[aria-expanded]." + this.settings.panelClass).unbind("DOMAttrModified.accessible-megamenu", v)
            } else {
                e("html").bind("mouseup.outside-accessible-megamenu, touchend.outside-accessible-megamenu, mspointerup.outside-accessible-megamenu,  pointerup.outside-accessible-megamenu", e.proxy(y, this));
                B.find("[aria-expanded=true]." + this.settings.panelClass).bind("DOMAttrModified.accessible-megamenu", e.proxy(v, this))
            }
        };
        return {
            constructor: b,
            init: function () {
                var D = this,
                    C = this.settings,
                    B = this.justFocused = false,
                    F = this.nav = e(this.element),
                    E = this.menu = F.children().first(),
                    A = this.topnavitems = E.children();
                F.attr("role", "navigation");
                E.addClass(C.menuClass);
                A.each(function (I, H) {
                    var G, J;
                    H = e(H);
                    H.addClass(C.topNavItemClass);
                    G = H.find(":tabbable:first");
                    J = H.children(":not(:tabbable):last");
                    t.call(D, G);
                    if (J.length) {
                        t.call(D, J);
                        G.attr({
                            "aria-haspopup": true,
                            "aria-owns": J.attr("id"),
                            "aria-controls": J.attr("id"),
                            "aria-expanded": false
                        });
                        J.attr({
                            role: "group",
                            "aria-expanded": false,
                            "aria-hidden": true
                        }).addClass(C.panelClass).not("[aria-labelledby]").attr("aria-labelledby", G.attr("id"))
                    }
                });
                this.panels = E.find("." + C.panelClass);
                E.delegate(":tabbable, :focusable, ." + C.panelClass, "focusin.accessible-megamenu", e.proxy(m, this)).delegate(":tabbable, :focusable, ." + C.panelClass, "focusout.accessible-megamenu", e.proxy(z, this)).bind("keydown.accessible-megamenu", e.proxy(l, this)).bind("mouseover.accessible-megamenu", e.proxy(x, this)).bind("mouseout.accessible-megamenu", e.proxy(o, this)).bind("mousedown.accessible-megamenu", e.proxy(n, this));
                if (q) {
                    E.bind("touchstart.accessible-megamenu", e.proxy(u, this))
                }
                E.find("hr").attr("role", "separator")
            },
            getDefaults: function () {
                return this._defaults
            },
            getOption: function (A) {
                return this.settings[A]
            },
            getAllOptions: function () {
                return this.settings
            },
            setOption: function (B, C, A) {
                this.settings[B] = C;
                if (A) {
                    this.init()
                }
            }
        }
    }());
    e.fn[f] = function (j) {
        return this.each(function () {
            if (!e.data(this, "plugin_" + f)) {
                e.data(this, "plugin_" + f, new b(this, j))
            }
        })
    };

    function c(j) {
        return e.expr.filters.visible(j) && !e(j).parents().add(e(j)).filter(function () {
            return e.css(this, "visibility") === "hidden"
        }).length
    }

    function i(l, j) {
        var n, m, k, o = l.nodeName;
        if ("area" === o) {
            n = l.parentNode;
            m = n.name;
            if (!l.href || !m || n.nodeName.toLowerCase() !== "map") {
                return false
            }
            k = e("img[usemap=#" + m + "]")[0];
            return !!k && c(k)
        }
        return (/input|select|textarea|button|object/.test(o) ? !l.disabled : "a" === o ? l.href || j : j) && c(l)
    }
    e.extend(e.expr[":"], {
        data: e.expr.createPseudo ? e.expr.createPseudo(function (j) {
            return function (k) {
                return !!e.data(k, j)
            }
        }) : function (l, k, j) {
            return !!e.data(l, j[3])
        },
        focusable: function (j) {
            return i(j, !isNaN(e.attr(j, "tabindex")))
        },
        tabbable: function (l) {
            var j = e.attr(l, "tabindex"),
                k = isNaN(j);
            return (k || j >= 0) && i(l, !k)
        }
    })
}(jQuery2, window, document));