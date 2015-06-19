<%@ Page Language="c#" CodePage="65001" AutoEventWireup="true" %>

<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>
<%@ OutputCache Location="None" VaryByParam="none" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
        <sc:XslFile ID="Xslfile1" runat="server" RenderingID="{F88585C9-A6F7-49C8-B803-885518CC6CCB}" Path="/xsl/starter kit/html head title.xslt"></sc:XslFile>
    </title>
    <link href="/assets/css/print.css" rel="stylesheet" />
    <sc:XslFile ID="Xslfile2" runat="server" RenderingID="{0D37377B-D3C1-435A-8CCC-238C938C44C8}" Path="/xsl/starter kit/html head include.xslt"></sc:XslFile>
</head>
<body>
    <!--onload="if (window && window.print) { window.print(); }"-->
    <div id="entire-page">
        <form method="post" id="mainform" runat="server">
            <sc:XslFile placeholder="content" Path="/xsl/starter kit/Print Header.xslt" RenderingID="{E2496EAE-E2F5-44C4-83C6-CD3924A98F62}" runat="server"></sc:XslFile>
            <sc:Image Field="Banner Image" runat="server" CssClass="printimage" MaxHeight="150"/>
            <sc:Placeholder Key="page-columns" runat="server"></sc:Placeholder>
            <sc:XslFile placeholder="content" Path="/xsl/starter kit/Footer.xslt" RenderingID="{356A5561-94FF-4B6C-8E63-2A26E66E691E}" runat="server"></sc:XslFile>
        </form>
    </div>
</body>
</html>
