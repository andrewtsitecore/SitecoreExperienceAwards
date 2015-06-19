<%@ control language="C#" autoeventwireup="true" codebehind="Desktop-Banner.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop_Banner" %>
<div class="carousel-header-holder">
    <div class="carousel-header-container">
        <div class="carousel-container">
            <div class="banner-right-container">
                <div class="hero-inner">
                    <%if (!Sitecore.Context.PageMode.IsPageEditorEditing) { %>
                        <div class="bannerbacker" style="background-image: url(<%# BannerImgUrl %>)"></div>
                    <% } else { %>
                        <sc:image field="Banner Image" id="BannerImage" runat="server" CssClass="banner-image"  maxwidth="960" cssstyle="clip: rect(0px,0px,220px,0px); width:960px; height:335px;"/>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>
<% if (Item["Banner Header"] != "") %>
<%{ %>
<div class="bannertext">
    <p>
        <sc:text field="banner header" item='<%# Item %>' id="Text1" runat="server" />
    </p>
</div>
<% } %>