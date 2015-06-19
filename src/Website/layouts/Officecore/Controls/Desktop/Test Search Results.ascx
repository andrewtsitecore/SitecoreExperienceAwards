<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Test Search Results.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.Products.Test_Search_Results" %>
<h1>Test Search Results</h1>
<h4><%# SearchMsg %> for "<%# SearchTerm %>"</h4><br />
<div class="grid">    
    <div class="col-25">
        <asp:Literal ID="Facets" runat="server"></asp:Literal>
    </div>
    <div class="col-75">
        <asp:repeater id="srchResults" runat="server">
            <itemtemplate>
                <div class="result" style="padding-bottom:10px;">
                    <u><a style="font-size:medium" href="/<%#Eval("Path").ToString().TrimStart("/sitecore/content/Home/".ToCharArray())%>.aspx">
                        <%#Eval("title")%></a></u><br />
                    <%#Eval("text") %>
                    <b style="font-size:small; color:#00802a"><%#Eval("Path").ToString().TrimStart("/sitecore/content/Home/".ToCharArray())%>.aspx</b><br />
                    <div style="font-size:small;"><%#Eval("Text")%></div>
                   <div style="font-size:small; color:#666"><b>Updated:</b> <%#Eval( "LastUpdate", "{0:d MMM yyyy}")%> <%#Eval("Created") %></div>
                </div>
            </itemtemplate>
        </asp:repeater>
    </div>
</div>