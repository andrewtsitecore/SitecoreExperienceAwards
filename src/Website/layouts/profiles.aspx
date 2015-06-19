<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profiles.aspx.cs" Inherits="Officecore.Website.layouts.Profiles" %>

<head>
    <title>Profiles</title>
    <link href="/assets/CSS/profiles.css" rel="stylesheet" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:200,400,600,700" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/assets/CSS/rd/jquery-ui.css" />
    <script type="text/javascript" src="/assets/js/rd/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="/assets/js/rd/jquery-ui.min.js"></script>
    <link href="/assets/CSS/rd/officecore-base.css" rel="stylesheet" />    
    <link rel="stylesheet" href="/assets/css/rd/bootstrap/bootstrap.min.css" />
    <style>
        body { background-color: #f9f9f9!important; }
    </style>
    <script type="text/javascript" >
        jQuery(function () {
            jQuery("#accordion").accordion({
                heightStyle: "content"
            });
        });
    </script>
    <script type="text/javascript" >
        jQuery(function () {
            jQuery("#radio").buttonset();
        });
    </script>
    <script type="text/javascript" >
        // AT - bit hacky but this allows us to toggle chart on the radio select
        // have to do this way because if you add an id to the chart div then it the chart helper dies :(
        function showChart(bud) {
            var count = 1;
            // AT - get all the direct child nodes we only care abot the first two while we have two profile types product interest and budget.
            // if the child is a div and its the first its product interest so if we want to show that set dispaly to inline, the next iteration we will set the display to none.
            // vice versa for the budget
            // break if the count gets higher than 1 
            // if you add profiles you'll have to modify this code.....sorry :(
            var nodes = document.getElementById("Charts-content-graph").childNodes;
            for (i = 0; i < nodes.length; i++) {
                var curDiv = nodes[i];
                if (curDiv.tagName == 'DIV' && count == 1) {
                    if (bud) {
                        curDiv.style.display = 'none';
                    } else {
                        curDiv.style.display = 'inline';
                    }
                    count++;
                } else if (curDiv.tagName == 'DIV' && count == 2) {
                    if (bud) {
                        curDiv.style.display = 'inline';
                    } else {
                        curDiv.style.display = 'none';
                    }
                    count++;
                } else if (count > 2) {
                    break;
                }
            }
        }
    </script>
</head>
<body onload="showChart(false);" style="height: 100%;">
    <div class="grid">
        <div class="col-md-7">
            <div>
                <div style="width: auto;">
                    <h1 style="padding-bottom: 8px!important;">Sitecore <span style="font-weight: bold; color: #E33327;">Visit</span> Analyser</h1>
                    <p>Data captured about this visitor by the xDB. </p>
                </div>
            </div>
            <div>                
                <div id="Charts-content-graph">
                    <sc:Sublayout runat="server" placeholder="content" Path="/layouts/Officecore/Controls/Desktop/Analytics/Desktop-Profile.ascx" ID="Sublayout3" />
                </div>
                <div class="clearfix"></div>
                <div id="radio" style="width: auto; padding: 0 0 25px 30px;">
                    <input onclick="showChart(false);" type="radio" id="radio1" name="radio" checked="checked" /><label for="radio1">Product Interest</label>
                    <input onclick="showChart(true);" type="radio" id="radio2" name="radio" /><label for="radio2">Budget</label>
                </div>
            </div>
        </div>
        <div class="col-md-5">
            <div id="accordion" style="width: 400px; padding-top: 30px;">
                <h3>Visit statistics</h3>
                <div style="padding: 0 0;">
                    <sc:Sublayout runat="server" placeholder="content" Path="/layouts/Officecore/Controls/Desktop/Analytics/Desktop-Analytics-Overview.ascx" ID="Sublayout2" />
                </div>
                <h3>Goals</h3>
                <div style="padding: 0 0;">
                    <sc:Sublayout runat="server" placeholder="content" Path="/layouts/Officecore/Controls/Desktop/Analytics/Desktop-Analytics-Goals.ascx" ID="Sublayout4" />
                </div>
                <h3>Pages viewed</h3>
                <div style="padding: 0 0;">
                    <sc:Sublayout runat="server" placeholder="content" Path="/layouts/Officecore/Controls/Desktop/Analytics/Desktop-Analytics-PageViews.ascx" ID="Sublayout5" />
                </div>
                <sc:Sublayout runat="server" placeholder="content" Path="/layouts/Officecore/Controls/Desktop/Analytics/Desktop-Analytics-Profiles.ascx" ID="Sublayout1" />
                <%--<h3>Engagement Plan</h3>
                <div style="padding: 0 0;">
                    <sc:Sublayout runat="server" placeholder="content" Path="/layouts/Officecore/Controls/Desktop/Analytics/Desktop-Analytics-Plan.ascx" ID="Sublayout6" />
                </div>--%>
            </div>
        </div>
    </div>
</body>
