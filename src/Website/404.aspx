<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Officecore.Website._404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oops....</title>
    <link rel="stylesheet" href="/assets/CSS/officecore-reset.css" />
    
    <link rel="stylesheet" href="/assets/css/ucommerce/uCommerce.demostore.css" />
    <link rel="stylesheet" href="/assets/CSS/Red.css" />
    <link rel="stylesheet" href="/assets/css/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/CSS/officecore-base.css" />

    <link rel="stylesheet" href="/starterkit.css" />
    <link rel="stylesheet" href="/assets/css/nivo/default/default.css" />
    <link rel="stylesheet" href="/assets/css/nivo/pascal/pascal.css" />
    <link rel="stylesheet" href="/assets/css/nivo/orman/orman.css" />
    <link rel="stylesheet" href="/assets/css/nivo/nivo-slider.css" />
    <link rel="stylesheet" href="/assets/fancybox/source/jquery.fancybox.css?v=2.0.6" media="screen" />
    <link rel="stylesheet" href="/assets/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.2" />
    <link rel="stylesheet" href="/assets/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.2" />

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:200,400,600,700" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
            <div id="toolbox-wrapper">
                <div id="toolbox">
                    

<!-- Toolbox  -->
<div id="container-languages">
    
            <div class="language">
                <div style="float:left;">
                    <a href="/layouts/profiles.aspx" class="fancybox-effects-d"><image mediapath="/Images/Toolbox/magic-wand" mediaid="{E3B6475C-350C-4535-8E73-81067181E3B3}" src="/~/media/E3B6475C350C45358E7381067181E3B3.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="/layouts/profiles.aspx" class="fancybox-effects-d">
                        Analyse Visit</a>
                    </div>
            </div>
        
            <div class="language">
                <div style="float:left;">
                    <a href="/Toolbox/Sitemap" class="toolbox-entry-sitemap"><image mediaid="{411AEA44-5E18-443C-8A7D-1BF78F2EF449}" mediapath="/Images/Toolbox/Sitemap" src="/~/media/Images/Toolbox/Sitemap.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="/Toolbox/Sitemap" class="toolbox-entry-sitemap">
                        Sitemap</a>
                    </div>
            </div>
        
            <div class="language">
                <div style="float:left;">
                    <a href="/sitecore/login" class="toolbox-entry-login"><image mediaid="{6AFA3D23-DA7C-45D1-8E3A-A544D78255DF}" mediapath="/Images/Toolbox/Sitecore" src="/~/media/Images/Toolbox/Sitecore.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="/sitecore/login" class="toolbox-entry-login">
                        Edit Site</a>
                    </div>
            </div>
        
            <div class="language">
                <div style="float:left;">
                    <a href="?sc_lang=ja-JP" class="toolbox-entry-login"><image mediaid="{80B32619-BDE8-46FC-83C9-AE667EF57F51}" mediapath="/Images/Toolbox/ja-JP" src="/~/media/Images/Toolbox/ja-JP.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="?sc_lang=ja-JP" class="toolbox-entry-login">
                        Japanese</a>
                    </div>
            </div>
        
            <div class="language">
                <div style="float:left;">
                    <a href="?sc_lang=en" class="toolbox-entry-login"><image mediaid="{9D8B9AB5-2D40-4D11-A915-F65E980669B0}" mediapath="/Images/Toolbox/flag_great_britain" src="/~/media/Images/Toolbox/flag_great_britain.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="?sc_lang=en" class="toolbox-entry-login">
                        English</a>
                    </div>
            </div>
        
            <div class="language">
                <div style="float:left;">
                    <a href="?p=1" class="toolbox-entry-print"><image mediaid="{6AA2C8A9-1188-4117-A368-E50D430939F9}" mediapath="/Images/Toolbox/printer" src="/~/media/Images/Toolbox/printer.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="?p=1" class="toolbox-entry-print">
                        Print</a>
                    </div>
            </div>
        
            <div class="language">
                <div style="float:left;">
                    <a href="/Standard-Items/My-Account" class=""><image mediaid="{650CD6AC-08C0-4ACD-A6F2-D114A4EEB05D}" mediapath="/Images/Toolbox/office-building" src="/~/media/650CD6AC08C04ACDA6F2D114A4EEB05D.ashx" /></a>
                </div>
                <div style="float:left;">
                    <a href="/Standard-Items/My-Account" class="">
                        Login / My Account</a>
                    </div>
            </div>
        
</div>

                </div>
            </div>
            <div id="header-wrapper">
                <div id="header">
                    
<div id="header-container">
    <div id="header-container-left">
        <div id="company-logo"><a href="/"><img src="/~/media/Images/Logos/officecore-logo-four.png?h=68&amp;w=236" alt="Officecore" width="236" height="68" /></a></div>
    </div>
    <div id="header-container-right">
        <div id="ctl02_ctl00_SearchPanel" class="search-panel" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;ctl02_ctl00_btnSearch&#39;)">
	

    <div class="header-searchbox">
        <div style="float: left;">
            <div class="header-searchwrapper">
                <input name="ctl02$ctl00$txtCriteria" type="text" value="Search this site" id="ctl02_ctl00_txtCriteria" onfocus="doClear(this)" class="header-sitesearch" style="color:Silver;" />
            </div>
        </div>
        <div style="float: left;">
            <input type="image" name="ctl02$ctl00$btnSearch" id="ctl02_ctl00_btnSearch" src="/assets/images/search.gif" />
        </div>
    </div>

</div>

    </div>
</div> 
                </div>
            </div>
            <div id="menu-wrapper">
                <div id="menu">
                    
<div id="top-menu">
    <div id="top-main-menu">
        <ul>
            
                    <li><a href="/">
                        Home
                    </a></li>
                
                    <li>
                        <a href="/Cart.aspx" class="">
                            Cart
                        </a>
                    </li>
                
                    <li>
                        <a href="/Products.aspx" class="">
                            Products
                        </a>
                    </li>
                
                    <li>
                        <a href="/Services.aspx" class="">
                            Services
                        </a>
                    </li>
                
                    <li>
                        <a href="/News.aspx" class="">
                            News
                        </a>
                    </li>
                
                    <li>
                        <a href="/People.aspx" class="">
                            People
                        </a>
                    </li>
                
                    <li>
                        <a href="/Jobs.aspx" class="">
                            Jobs
                        </a>
                    </li>
                
                    <li>
                        <a href="/Contact.aspx" class="">
                            Contact
                        </a>
                    </li>
                
                    <li>
                        <a href="/About-Us.aspx" class="">
                            About Us
                        </a>
                    </li>
                
        </ul>
    </div>
</div>

                </div>
            </div>

            <div id="hero-wrapper">
                

<div id="hero-image-live" style="background-image: url('/~/media/Images/Banners/old/signpost.jpg?w=1600');">
    <div id="hero-image-overlay">
        <div id="hero-strapline-wrapper">
            <div id="hero-strapline">
                <p>
                    Oops...
                </p>
                <span>
                    It would appear we couldn't find what you were looking for... But we still might be able to help!
                </span>
            </div>
        </div>
    </div>
</div>


            </div>
            <div id="content-wrapper">
                <div id="content">
                    
<div id="columns-C-and-R">
    <div id="content-col">
        <div class="teaser"><div class="teaser-header"><p>Have you tried the search page?</p></div><div class="teaser-image"><a href="/Standard-Items/Search-Results.aspx"><img src="/~/media/Images/Categories/pointing services.jpg?bc=White&amp;as=1&amp;h=250&amp;w=208" alt="Search!" width="208" height="250" /></a><span class="teaser-sunken"><p>We might be able to assist you with our search page.</p></span></div></div>
		<div class="teaser"><div class="teaser-header"><p>Did you look at our Sitemap?</p></div><div class="teaser-image"><a href="/Toolbox/Sitemap.aspx"><img src="/~/media/Images/Categories/Architectual Services.jpg?bc=White&amp;as=1&amp;h=250&amp;w=208" alt="Go to the sitemap" width="208" height="250" /></a><span class="teaser-sunken"><p>Maybe our sitemap could get you where you want to go.</p></span></div></div>
		<div class="teaser"><div class="teaser-header"><p>Go back</p></div><div class="teaser-image"><a href="javascript::window.history.go(-1)"><img src="/~/media/Images/Teasers/steps.png?bc=White&amp;as=1&amp;h=250&amp;w=208" alt="Go back one page" width="208" height="250" /></a><span class="teaser-sunken"><p>You could try retracing your steps....</p></span></div></div>
    </div>
    <div id="right-col">
       <div style="width: 100%;" class="teaser"><div class="teaser-header"><p>Get in touch!</p></div><div class="teaser-image"><a href="/Contact.aspx"><img src="/~/media/Images/Teasers/typewriter keys.png?bc=White&amp;as=1&amp;h=250&amp;w=250" alt="Contact us" width="250" height="250" /></a><span class="teaser-sunken"><p>Why not get in touch with our nearest office?</p></span></div></div>
    </div>
</div>
<div class="clear"></div>
                </div>
            </div>
            <div id="footer-wrapper">
                <div id="footer">
                    
<div id="bottom-menu">
    <div class="grid">
        <div class="col-25">
            <h6>Follow Us</h6>
            <ul id="social-list">               
                <li id="social-fb-link" class="facebook">
                    <a target="_blank" href="http://facebook.com/"></a>
                </li>
                 <li id="social-tw-link" class="twitter">
                    <a target="_blank" href="http://twitter.com/"></a>
                </li>
                <li id="social-yt-link" class="youtube">
                    <a target="_blank" href="http://youtube.com/"></a>
                </li>
                <li id="social-fl-link" class="flickr">
                    <a target="_blank" href="http://flickr.com/"></a>
                </li>
                <li id="social-rs-link" class="rss">
                    <a target="_blank" href="/sitecore/shell/~/feed/workflow.aspx?sc_rssu=7ede3ExkZFEHE5xHwKUzqq-jlEZunKz-GarJnAgW56QrxTNXyFfZ_E0tvn3Mk7aeuiHuHm6uxiu3gAQsdJsuHYq797BdPc4QjmjiMl_2iA41&sc_rssh=CAC3CB018E4354FD7C26&wf=%7BA5BC37E7-ED96-4C1E-8590-A26E64DB55EA%7D"></a>
                </li>
            </ul>
            <div class="clear"></div>
            <div id="boring-stuff">
                <h6>Boring Stuff</h6>
                <p>Copyright &copy; 2013</p>
                <p>Sitecore Corporation</p>
                <p><a href="http://www.sitecore.net">www.sitecore.net</a></p>
            </div>
        </div>
        <div class="col-25">
            <h6>Sections</h6>
            <ul>
                
                        <li><a href="/">Home</a></li>
                    
                        <li>
                            <a href="/Cart.aspx" class="">
                                Cart</a>
                        </li>
                    
                        <li>
                            <a href="/Products.aspx" class="">
                                Products</a>
                        </li>
                    
                        <li>
                            <a href="/Services.aspx" class="">
                                Services</a>
                        </li>
                    
                        <li>
                            <a href="/News.aspx" class="">
                                News</a>
                        </li>
                    
                        <li>
                            <a href="/People.aspx" class="">
                                People</a>
                        </li>
                    
                        <li>
                            <a href="/Jobs.aspx" class="">
                                Jobs</a>
                        </li>
                    
                        <li>
                            <a href="/Contact.aspx" class="">
                                Contact</a>
                        </li>
                    
                        <li>
                            <a href="/About-Us.aspx" class="">
                                About Us</a>
                        </li>
                    
            </ul>
        </div>
        <div class="col-50">
            
        </div>
    </div>
</div>
<div class="clear"></div>

                </div>
            </div>
            <div id="copyright-wrapper">
                <div id="copyright">
                </div>
            </div>
        </div>
    
<script type="text/javascript">
    //<![CDATA[
    var theForm = document.forms['mainform'];
    if (!theForm) {
        theForm = document.mainform;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
    //]]>
</script>
    </form>

    <script type="text/javascript" src="/assets/fancybox/lib/jquery-1.9.0.min.js"></script>
    <script type="text/javascript" src="/assets/js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="/assets/fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
    <script type="text/javascript" src="/assets/js/browser-fixed-inline.js?v=1.0.0"></script>
    <script type="text/javascript" src="/assets/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.2"></script>
    <script type="text/javascript" src="/assets/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.2"></script>
    <script type="text/javascript" src="/assets/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
    <script type="text/javascript" src="/assets/js/jquery.etalage.js"></script>
    <script type="text/javascript" src="/assets/starterkit.js"></script>
    <script type="text/javascript" src="/assets/js/ucommerce/ucommerce.js"></script>
    <script type="text/javascript" src="/assets/js/bootstrap/bootstrap.min.js"></script>
</body>
</html>
