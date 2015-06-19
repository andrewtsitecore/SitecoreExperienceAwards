<%@ control language="C#" autoeventwireup="true" codebehind="Desktop-Menu.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop_Menu" %>
<div class="hidden" id="nav-delay-value" data-jl-nav-delay="400"></div>
<nav id="nn-nav-menu" class="nn-main-nav-wrap" role="navigation">
    <ul class="nn-main-nav nn-nav-hovering">
    <asp:repeater id="DesktopMenuRepeater" runat="server" itemtype="Sitecore.Data.Items.Item">
            <ItemTemplate>
                <li class="nn-menu">
                    <sc:link field="Link" runat="server" item="<%# Item %>" parameters="disable-web-editing=true" class="dept-link" >
                        <span class="separator" style="visibility:<%# (Container.ItemIndex != 0) ? "visible" : "hidden" %>"></span>
                        <span class="inner">
                                <sc:Text Field="Link Text" runat="server" Item="<%# Item %>" />
                        </span>
                    </sc:link> 
                    <asp:repeater id="CategoryMenuRepeater" runat="server" itemtype="Sitecore.Data.Items.Item" datasource="<%# GetCategories(Item) %>" onprerender="Repeater_PreRender" onitemdatabound="CategoryMenuRepeater_OnItemDataBound">
                       <HeaderTemplate>
                            <div class="nn-flyout">
                        </HeaderTemplate>
                        <ItemTemplate>                           
                                <div class="nn-flyout-col">
                                    <strong class="nn-submenu-title"><sc:Text Field="Link Text" runat="server" Item="<%# Item %>" /></strong>
                                    <asp:repeater id="ItemMenuRepeater" runat="server" itemtype="Sitecore.Data.Items.Item" datasource="<%# GetItems(Item) %>" onprerender="Repeater_PreRender">
                                        <HeaderTemplate>
                                            <ul class="first">
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                             <li>
                                                <sc:Link Field="Link" runat="server" Item="<%# Item %>">
                                                    <sc:Text Field="Link Text" runat="server" Item="<%# Item %>" />
                                                </sc:Link>
                                            </li>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </ul>
                                        </FooterTemplate>
                                    </asp:repeater>
                                </div>                            
                        </ItemTemplate>
                        <FooterTemplate>                            
                            <div id="specialoffer" class="special-offers-cq5" runat="server">
                                <sc:Image runat="server" field="Promotional Spot" Width="350" Item="<%# ((RepeaterItem)Container.Parent.Parent).DataItem %>" />
                            </div>  
                            </div>
                        </FooterTemplate>
                    </asp:Repeater>
                </li>
            </ItemTemplate>
         </asp:repeater>
    </ul>    
</nav>