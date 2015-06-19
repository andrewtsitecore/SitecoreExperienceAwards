<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Mobile-Menu.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Mobile.Mobile_Menu" %>
<ul id="nav">
    <asp:Repeater ID="MenuRepeater" runat="server" ItemType="Sitecore.Data.Items.Item">
        <ItemTemplate>
            <li>
                <sc:Link Field="Link" runat="server" Item="<%# Item %>" CssClass='<%#Item.ID.Equals(Sitecore.Context.Item.ID) ? "current" : string.Empty%>'>
                    <sc:Text Field="Link Text" runat="server" Item="<%# Item %>" />
                </sc:Link>
            </li>
        </ItemTemplate>
    </asp:Repeater>
</ul>
