<%@ control language="C#" autoeventwireup="true" codebehind="Desktop-Overview.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.News.Desktop_Overview" %>
<%@ Import Namespace="Sitecore.Links" %>
<asp:repeater runat="server" id="Repeater1" itemtype="Sitecore.Data.Items.Item">
    <ItemTemplate>        
      <div class="row subitem <%# GetRowClass(Item) %>" style="background-color:<%# GetClass() %>;border-top-color:<%# GetClass() %>;z-index:<%# GetZindex() %>">       
        <div class="<%# GetColClass(Item) %>">
            <sc:Image runat="server" field="Image" Item="<%# Item %>" />
        </div>
        <div class="<%# GetColClass(Item) %>">
            <h3><sc:text field="Menu Title" item="<%# Item %>" runat="server" /></h3>
            <p><sc:text field="Overview Abstract" item="<%# Item %>" runat="server" /></p>
            <p>
              <a class="oclink white" href="<%#LinkManager.GetItemUrl(Item)%>">Learn More</a>
            </p>
        </div>
    </div>
    </ItemTemplate>
        <FooterTemplate>
         <div class="row subitem-footer" style="background-color:#212B34;">          
        </div>
    </FooterTemplate>
</asp:repeater>
