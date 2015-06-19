<%@ control language="C#" autoeventwireup="true" codebehind="Desktop_Account_Details.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.MyAccount.Desktop_Account_Details" %>
<div class="panel-group" id="accordionDetails" style="margin-bottom: 10px;">
    <div class="panel panel-default">
        <div class="panel-heading accountheadingpanel">
            <h4 class="panel-title accountheading" style="margin-right: 4px;">My Details</h4>
            <asp:HyperLink runat="server" NavigateUrl="/sitecore/content/Home/My-Account/ChangeDetails">
                    <div style="font-size: 10px; padding-top: 5px;">(change/update)</div>
            </asp:HyperLink>
        </div>
        <div id="details" class="panel-collapse collapse in">
            <div class="panel-body" style="padding: 10px!important;">
                <table class="mob-table">
                    <tr><td class="userDetails">Title:</td><td><asp:literal ID="title" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">First Name:</td><td><asp:literal ID="firstname" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Last Name:</td><td><asp:literal ID="lastname" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Phone:</td><td><asp:literal ID="phone" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Mobile:</td><td><asp:literal ID="mobile" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Email:</td><td><asp:literal ID="email" runat="server"></asp:literal></td></tr>
                </table>
            </div>
        </div>
    </div>
</div>
