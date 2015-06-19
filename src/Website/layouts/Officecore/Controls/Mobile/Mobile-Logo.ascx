<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Mobile-Logo.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Mobile.Mobile_Logo" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ Register Src="~/layouts/Officecore/Controls/Mobile/Mobile-Cart-Small.ascx" TagPrefix="store" TagName="Cart" %>
<div class="logo" style="height: 40px;">
    <div style="float: left"><a href="#nav" class="open" style="margin-right: 15px; border-bottom: none;">
        <img src="/assets/images/icons/menu.png" style="height: 40px;" /></a></div>
    <div style="float: left"><a href="/">
        <sc:image field="logo" id="Logo" maxwidth="130" cssstyle="height:38px; margin-right:15px;" runat="server" />
    </a></div>

    <% if(ActivateCommerce) {%>
    <div style="float:left"><a href="/products/" style="margin-right:15px; border-bottom:none;"><img src="/assets/images/icons/search.png" /></a></div>
    <store:cart runat="server" />
    <% } else {%>
    <div style="float:left"><a href="/products/" style="margin-right:60px; border-bottom:none;"><img src="/assets/images/icons/search.png" /></a></div>
    <% } %>
</div>


