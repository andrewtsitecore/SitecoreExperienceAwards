<%@ control language="C#" autoeventwireup="true" codebehind="Desktop-SidebarText.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.Global.Desktop_SidebarText" %>
<!-- this used to be Sidebar Text.ascx -->

<div class="panel panel-default panel-body">
    <div class="row">
        <div class="col-md-12">
            <h4>
                <sc:text field="sidebar title" id="title" runat="server"></sc:text>
            </h4>
            <sc:text field="sidebar text" id="text" runat="server"></sc:text>
        </div>
    </div>
</div>
