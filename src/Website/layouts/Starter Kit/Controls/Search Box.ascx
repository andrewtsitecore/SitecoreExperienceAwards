<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="Search Box.ascx.cs" Inherits="Officecore.Website.LuceneSearchBox" %>

<asp:Panel ID="SearchPanel" DefaultButton="btnSearch" CssClass="search-panel" runat="server">

    <div class="header-searchbox">
        <div style="float: left;">
            <div class="header-searchwrapper">
                <asp:TextBox onfocus="doClear(this)" runat="server" ID="txtCriteria" class="header-sitesearch"
                    OnTextChanged="txtCriteria_TextChanged" ForeColor="Silver"></asp:TextBox>
            </div>
        </div>
        <div style="float: left;">
            <asp:ImageButton runat="server" ID="btnSearch" ImageUrl="/assets/images/search.gif" OnClick="btnSearch_Click"></asp:ImageButton>
        </div>
    </div>
</asp:Panel>
