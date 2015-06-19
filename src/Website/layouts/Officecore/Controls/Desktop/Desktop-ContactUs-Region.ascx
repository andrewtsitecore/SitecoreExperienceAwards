<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Desktop_ContactUs_Region.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.Desktop_ContactUs_Region" %>

<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=yes" />
    <style type="text/css">
        #map-canvas {
            height: 450px;
            width: 600px;
        }
    </style>
    <script type="text/javascript">
        var points = "";
    </script>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuknx7eNttt8b2qD9clfSUC8oJvD1s7Ag&sensor=false">
    </script>
</head>
<div id="map-canvas" />
<script type="text/javascript">
    var latlons = [<%= LatLonList %>];
    function initialize() {
        var mapOptions = {
            zoom: 15,
            center: new google.maps.LatLng(latlons[0][0], latlons[0][1])
        };

        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        var myinfowindow = new google.maps.InfoWindow({
            content: latlons[0][3],
            maxWidth: 300
        });
        var marker = new google.maps.Marker({
            map: map,
            position: new google.maps.LatLng(latlons[0][0], latlons[0][1]),
            title: latlons[0][2],
            infowindow: myinfowindow
        });
        google.maps.event.addListener(marker, 'click', function () {
            this.infowindow.open(map, this);
        });
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
