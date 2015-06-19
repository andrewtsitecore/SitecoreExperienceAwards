﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Desktop-ContactUs.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.Desktop_ContactUs" %>


 <% if (!Sitecore.Context.PageMode.IsPageEditorEditing)
       { %>
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
<div id="map-canvas"></div>
<script type="text/javascript">
    var map;

    function initialize() {
        var mapOptions = {
            zoom: 5
        };
        map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);

        // Try HTML5 geolocation
        if (navigator.geolocation) {
            var latlons = [<%= LatLonList %>];
            navigator.geolocation.getCurrentPosition(function (position) {
                var pos = new google.maps.LatLng(position.coords.latitude,
                                                 position.coords.longitude);

                var infowindow = new google.maps.InfoWindow({
                    map: map,
                    position: pos,
                    content: 'You are here.'
                });

                map.setCenter(pos);
                for (var i = 0; i < latlons.length; i++) {
                    var myinfowindow = new google.maps.InfoWindow({
                        content: latlons[i][3],
                        maxWidth: 300
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
            }, function () {
                handleNoGeolocation(true);
            });
        } else {
            // Browser doesn't support Geolocation
            handleNoGeolocation(false);
        }
    }

    function handleNoGeolocation(errorFlag) {
        if (errorFlag) {
            var content = 'Error: The Geolocation service failed.';
        } else {
            var content = 'Error: Your browser doesn\'t support geolocation.';
        }

        var options = {
            map: map,
            position: new google.maps.LatLng(60, 105),
            content: content
        };

        var infowindow = new google.maps.InfoWindow(options);
        map.setCenter(options.position);
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>

    <% } else { %>
<div style="width:100%; height:230px; text-align:center; vertical-align:middle; border:1px dashed lightGrey; padding:60px;"><p>Your Google Map will render here in Preview mode.</p></div>
<% } %>