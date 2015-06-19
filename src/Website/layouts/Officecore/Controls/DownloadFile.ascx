<%@ control language="C#" autoeventwireup="true" codebehind="DownloadFile.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.DownloadFile" %>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><sc:Text runat="server" Field="Heading" /></h3>
    </div>
    <div class="panel-body" style="padding: 15px !important">
        <oc:TextEnforceParagraph runat="server" Field="Intro" />
        
        <% if (Sitecore.Context.PageMode.IsPageEditor) { %>
            Submit text: <sc:Text runat="server" Field="Submit Text" />
        <% } else { %>
            <asp:HyperLink runat="server" ID="lnk" Target="_blank" onclick="setTimeout(function() { location.reload(); }, 1000);" />
        <% } %>
    </div>
</div>