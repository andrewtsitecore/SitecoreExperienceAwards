<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Desktop-SideMenu.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Desktop_SideMenu" %>
<%@ Import Namespace="Sitecore.Data.Items" %>
<%@ Import Namespace="Sitecore.Links" %>
<div class="tree-menu col-md-12 col-sm-3" class="panel">
    <asp:Repeater ID="News" runat="server">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>
        <ItemTemplate>
            <li style="clear: both; margin-top:3px">
                <a class="tree-menu style="padding-bottom:4px;" href="<%# LinkManager.GetItemUrl((Item)(Container.DataItem)) %>"><%# GetText((Item)(Container.DataItem)) %></a>
            </li>
            <asp:Repeater ID="InnerProductCategories" runat="server" DataSource="<%# GetChildren((Item)(Container.DataItem)) %>">
                    <HeaderTemplate>
                        <ul class="nav nav-pills nav-stacked">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <a href="<%# LinkManager.GetItemUrl((Item)(Container.DataItem)) %>" class="tree-menu treelist" style="padding:2px;margin-left:15px;">
                                <%# ((Item)(Container.DataItem)).Name %>
                            </a>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>
</div>

