<%@ control language="C#" autoeventwireup="true" codebehind="Desktop_Account_Address.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.MyAccount.Desktop_Account_Address" %>

    <div class="panel-group" id="accordionAddress" style="margin-bottom: 10px;">
        <div class="panel panel-default">
            <div class="panel-heading accountheadingpanel">
                <h4 class="panel-title accountheading" style="margin-right: 4px;">My Contact Address</h4>
                <asp:HyperLink runat="server" NavigateUrl="/My-Account/ChangeDetails.aspx"><div style="font-size: 10px; padding-top: 5px;">(change/update)</div></asp:HyperLink>
            </div>
            <div id="address" class="panel-collapse collapse in">
                <div class="panel-body" style="padding: 10px!important;">
                    <table class="mob-table">
                    <tr><td class="userDetails">House:</td><td><asp:literal ID="house" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Street:</td><td><asp:literal ID="street" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">City:</td><td><asp:literal ID="city" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">County:</td><td><asp:literal ID="county" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Postcode:</td><td><asp:literal ID="postcode" runat="server"></asp:literal></td></tr>
                    <tr><td class="userDetails">Country:</td><td><asp:literal ID="country" runat="server"></asp:literal></td></tr>
                    </table>
                </div>
            </div>
        </div>
    </div>