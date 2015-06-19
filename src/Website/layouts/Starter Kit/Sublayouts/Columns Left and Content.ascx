<%@ Control Language="c#" AutoEventWireup="true" %>
<sc:sublayout runat="server" renderingid="{2BF352A5-6413-45DD-ABD3-2787356F555C}"
    path="/layouts/Starter Kit/Sublayouts/Breadcrumb.ascx" id="uxBreadcrumb" placeholder="content"
    parameters="lang&amp;id&amp;sc_item&amp;sc_currentitem"></sc:sublayout>
<div class="row">
    <div class="col-md-8">
        <sc:placeholder runat="server" key="column-left" id="columnleft" />
    </div>
    <div class="col-md-4">
        <sc:placeholder runat="server" key="column-content" id="columncontent" />
    </div>
    <div class="clearfix"></div>
</div>
