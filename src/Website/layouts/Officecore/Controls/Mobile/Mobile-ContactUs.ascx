<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Mobile-ContactUs.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Mobile.Mobile_ContactUs" %>
<head>
    <style type="text/css">
        #map-canvas {
            height: 290px;
            width: 290px;
        }
    </style>
    <script type="text/javascript">
        var points = "";
    </script>
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCuknx7eNttt8b2qD9clfSUC8oJvD1s7Ag&sensor=false">
    </script>
</head>
<div class="panel panel-default">
    <div class="panel-body">
        <div id="map-canvas" />
    </div>
</div>
<script type="text/javascript">
    var latlons = [<%= getLatLonList() %>];
    function initialize() {
        var mapOptions = {
            zoom: 3,
            center: new google.maps.LatLng(52.375599, 3.581543)
        };

        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        for (var i = 0; i < latlons.length; i++) {
            var myinfowindow = new google.maps.InfoWindow({
                content: latlons[i][3],
                maxWidth: 200
            });
            var marker = new google.maps.Marker({
                map: map,
                position: new google.maps.LatLng(latlons[i][0], latlons[i][1]),
                title: latlons[i][2],
                infowindow: myinfowindow
            });
            google.maps.event.addListener(marker, 'click', function () {
                this.infowindow.open(map, this);
            });

        }
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
