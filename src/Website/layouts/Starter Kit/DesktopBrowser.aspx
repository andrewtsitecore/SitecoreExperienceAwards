<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesktopBrowser.aspx.cs" Inherits="Officecore.Website.layouts.Officecore.MainLayout" %>

<%@ Register TagPrefix="mt" Namespace="Sitecore.WebControls" Assembly="Sitecore.MetaTags" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        <sc:Text ID="Title" Field="Title" runat="server" />
    </title>
    <mt:metatags runat="server" />

    <!-- CSS -->
    <link href="/assets/CSS/officecore-base.css" rel="stylesheet" />
    <link href="/assets/CSS/officecore-reset.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
    <!-- Javascript - Implement Cassette for Bundling -->

</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <div id="toolbox-wrapper">
                <div id="toolbox">
                    <sc:Placeholder ID="Toolbox" Key="Toolbox" runat="server" />
                </div>
            </div>
            <div id="header-wrapper">
                <div id="header">
                    <sc:Sublayout ID="HeaderFixed" Path="/layouts/Officecore/Controls/Desktop-Header.ascx" runat="server" />
                </div>
            </div>
            <%--<div id="menu-wrapper">
                <div id="menu">--%>
            <nav>
                    <sc:Sublayout ID="MenuContainer" Path="/layouts/Officecore/Controls/Desktop-Menu.ascx" runat="server" />
            </nav>
                <%--</div>
            </div>--%>
            <div id="hero-wrapper">
                <sc:Placeholder runat="server" Key="banner" ID="Banner"></sc:Placeholder>    
            </div>
            <div id="content-wrapper">
                <div id="content">
                    <sc:Placeholder runat="server" Key="page-columns" ID="pagecolumns"></sc:Placeholder>
                    <!--<img src="/assets/images/comps/content.jpg" />-->
                </div>
            </div>
            <div id="footer-wrapper">
                <div id="footer">
                    <sc:Placeholder runat="server" Key="page-footer" ID="Footer1"></sc:Placeholder>  
                    <img src="/assets/images/comps/footer.jpg" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
