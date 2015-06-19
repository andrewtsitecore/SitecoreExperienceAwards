<!DOCTYPE html>
<%@ page language="C#" autoeventwireup="True" codebehind="Browser Fixed.aspx.cs" inherits="Officecore.Website.layouts.Starter_Kit.Layouts.Browser_Fixed" %>
<%@ register src="~/layouts/Officecore/Controls/Notification.ascx" tagprefix="oc" tagname="Notification" %>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="author" content="">
    <title>
        <asp:Literal runat="server" ID="Title" />
    </title>
    <!-- Only use bootstrap for responsive scaffolding, no components -->
    <link href="/assets/CSS/rd/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/common1.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/common2.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/common3.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/content1.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/nav1.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/prod1.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/home.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/footer.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/teasers.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/news.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/masked.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/social.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/officecore-base.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/officecore-desktop.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/officecore-forms.css" rel="stylesheet" type="text/css" />
    <link href="/assets/CSS/rd/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/assets/CSS/rd/toastr/toastr.css" rel="stylesheet" />
    <link rel="stylesheet" href="/assets/CSS/rd/analysevisit/fancybox/jquery.fancybox.css?v=2.0.6" media="screen" />
    <link rel="stylesheet" href="/assets/CSS/rd/analysevisit/fancybox/jquery.fancybox-buttons.css?v=1.0.2" />
    <link rel="stylesheet" href="/assets/CSS/rd/analysevisit/fancybox/jquery.fancybox-thumbs.css?v=1.0.2" />
    <script src="/assets/js/rd/jquery-1.8.0.min.js"></script>
    <script>
        var jQuery2 = jQuery.noConflict();
    </script>
</head>
<body>
    <form id="mainform" method="post" runat="server">
        <div id="wrapper">
            <div class="main-header">
                <sc:sublayout runat="server" placeholder="content" path="/layouts/Officecore/Controls/Desktop-Header.ascx" id="DesktopHeader" />
                <asp:placeholder runat="server" id="plhDesktopMenu">
                    <sc:sublayout id="MenuDesktop" path="/layouts/Officecore/Controls/Desktop-Menu.ascx" runat="server" />
                </asp:placeholder>
            </div>
            <div id="content">
                <div>
                    <div class="parsys par">
                        <div class="cms30r">
                            <div class="free-html">
                                <div class="SL_swap" id="int_hp_hero">
                                    <sc:placeholder runat="server" key="banner" id="Banner"></sc:placeholder>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <sc:placeholder runat="server" key="page-columns" id="pagecolumns"></sc:placeholder>
            </div>
            <div id="footer">
                <sc:placeholder runat="server" key="footer-column" id="footercolumn"></sc:placeholder>
            </div>
        </div>
        <div class="overlay-bg"></div>
    </form>
    <script src="/assets/js/rd/head.js"></script>
    <script src="/assets/js/rd/megamenu.js"></script>
    <script type="text/javascript" src="/assets/js/rd/analysevisit/fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
    <script type="text/javascript" src="/assets/js/rd/analysevisit/browser-fixed-inline.js?v=1.0.0"></script>
    <script type="text/javascript" src="/assets/js/rd/analysevisit/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>
    <script type="text/javascript" src="/assets/js/rd/analysevisit/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>
    <script type="text/javascript" src="/assets/js/rd/analysevisit/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
    <script type="text/javascript" src="/assets/js/rd/toastr/toastr.js"></script>

    <script>
        toastr.options = {
            "showDuration": "1000",
            "positionClass": "toast-bottom-right"
        };
    </script>
    
    <oc:notification runat="server" />
    <script src="/assets/js/rd/bootstrap.min.js"></script>
    <script src="/assets/js/rd/content.js"></script>
</body>
</html>
