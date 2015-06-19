<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search Box Right Column.ascx.cs"
    Inherits="Sitecore.Starterkit.LuceneSearchBox" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

    <p style="line-height:0px; padding-bottom:10px;float:right;">
        <sc:fieldrenderer runat="server" id="FieldRenderer1" fieldname="Strapline" editable="true"></sc:fieldrenderer></p>

    <asp:Panel ID="SearchPanel" runat="server" DefaultButton="btnSearch" class="search-panel">
    
    <div class="header-searchbox">
        <div style="float:left;">
            <asp:TextBox onfocus="doClear(this)" runat="server" ID="txtCriteria" class="header-sitesearch"
                OnTextChanged="txtCriteria_TextChanged" ForeColor="Silver"></asp:TextBox>
        </div>
        <div style="float:left;">
            <asp:ImageButton runat="server" ID="btnSearch" ImageUrl="/images/search.gif" OnClick="btnSearch_Click">
            </asp:ImageButton>
        </div>
    </div>
</asp:Panel>
