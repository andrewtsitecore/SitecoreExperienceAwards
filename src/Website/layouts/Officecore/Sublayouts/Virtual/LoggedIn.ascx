<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoggedIn.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Sublayouts.Virtual.LoggedIn" %>
<asp:panel runat="server" id="pnlAccessError" visible="False" cssclass="row">
    <div class="">
        <div class="alert alert-warning">
            <strong><asp:Literal runat="server" ID="litAccessErrorTitle" /></strong>
            <asp:Literal runat="server" ID="litAccessErrorBody" />
        </div>
    </div>
</asp:panel>

<sc:placeholder key="logged-in" runat="server" />