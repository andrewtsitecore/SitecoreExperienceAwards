<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Responsive-Twitter.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Responsive_Twitter" %>

<div class="twitter-background">
<a class="twitter-timeline" href="https://twitter.com/hashtag/corgi" data-widget-id="<%# DataId %>" data-border-color="#FFFFFF" data-chrome="nofooter noscrollbar" style="width: 100%!important">
<sc:text id="Header" Field="Widget Header" runat="server" /></a>
<script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
    </div>