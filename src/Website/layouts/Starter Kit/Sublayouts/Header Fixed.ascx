<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header Fixed.ascx.cs" Inherits="Officecore.Website.layouts.Starter_Kit.Sublayouts.Header_Fixed" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<div id="header-container">
    <div id="header-container-left">
        <sc:xslfile runat="server" renderingid="B45EBAE-7B40-4CA4-B8EA-EF2BEF0708CA%7d" placeholder="content"
            path="/xsl/Starter Kit/Site Logo.xslt" id="SiteLogo" parameters="lang&amp;id&amp;sc_item&amp;sc_currentitem">
                </sc:xslfile>
    </div>
    <div id="header-container-right" style="margin-top: 5px;">
        <% if(toggleState) {%>
        <div class="col-lg-7" style="padding-right: 4px;">
            <sc:sublayout runat="server" placeholder="search" path="/layouts/Officecore/Controls/Desktop/Products/Desktop-Search-Header.ascx" id="search" />
        </div>
        <div class="col-lg-4">
            <sc:sublayout runat="server" placeholder="cart" path="/layouts/Officecore/Controls/Desktop/Products/Desktop-Cart.ascx" id="cart" />
        </div>
        <% } else {%>
        <div class="col-lg-7" style="padding-right: 4px;">
            <sc:sublayout runat="server" placeholder="search" path="/layouts/Officecore/Controls/Desktop/Products/Desktop-Search-Header.ascx" id="search2" />
        </div>
        <div class="col-lg-4">
        </div>
        <% }%>
    </div>
</div>