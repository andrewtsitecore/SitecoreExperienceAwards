<%@ page language="c#" codepage="65001" autoeventwireup="true" %>

<%@ outputcache location="None" varybyparam="none" %>
<html lang="en">
<head>
    <title>Officecore 4.0</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />   
    <link rel="stylesheet" href="/assets/css/rd/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/css/rd/bootstrap/bootstrap-switch.min.css" />
    <link rel="stylesheet" href="/assets/css/rd/pageslide/pageslide.css" />
    <link rel="stylesheet" href="/assets/css/rd/officecore-mobile.css" />
    <meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <script type="text/javascript" src="/assets/js/rd/jquery-1.8.0.min.js"></script>     
    <script type="text/javascript" src="/assets/js/rd/bootstrap-switch.min.js"></script>
</head>
<body>
    <form id="mainform" runat="server">
        <div id="content">
            <h1>
                <sc:placeholder runat="server" key="mobilepageheader" id="MobilePageHeader" />
            </h1>
            <div id="nav">
                <sc:placeholder runat="server" key="mobilepagemenu" id="MobileMenu" />
            </div>
            <div style="padding: 2%">
                <sc:placeholder runat="server" key="mobilepagecontent" id="MobilePageContent" />
            </div>
        </div>
    </form>
     
    <script type="text/javascript"  src="/assets/js/rd/bootstrap.min.js"></script>
    <!--<script type="text/javascript" src="/assets/js/rd/officecore-mobile.js"></script>-->
    <script type="text/javascript" >
        $j = jQuery.noConflict();
        $j(document).ready(function () {
            $j(".open, .impatient").pageslide();
        });
        $j('#collapseOne').on('hidden.bs.collapse', function () {
            $j('#icon-collapse-one').removeClass("glyphicon-collapse-up");
            $j('#icon-collapse-one').addClass("glyphicon-collapse-down");
        })
        $j('#collapseOne').on('show.bs.collapse', function () {
            $j('#icon-collapse-one').removeClass("glyphicon-collapse-down");
            $j('#icon-collapse-one').addClass("glyphicon-collapse-up");
        })
        $j('#collapseTwo').on('hidden.bs.collapse', function () {
            $j('#icon-collapse-two').removeClass("glyphicon-collapse-up");
            $j('#icon-collapse-two').addClass("glyphicon-collapse-down");
        })
        $j('#collapseTwo').on('show.bs.collapse', function () {
            $j('#icon-collapse-two').removeClass("glyphicon-collapse-down");
            $j('#icon-collapse-two').addClass("glyphicon-collapse-up");
        })
    </script>

    <script type="text/javascript" src="/assets/js/rd/jquery.elevateZoom-3.0.8.min.js"></script>
    <script type="text/javascript" >
        jQuery(document).ready(function ($) {
            $('#imgProduct').elevateZoom({
                zoomType: "inner",
                cursor: "crosshair",
            });
        });
    </script>
    <script type="text/javascript"  src="/assets/js/rd/jquery.pageslide.min.js"></script>
    

</body>
</html>
