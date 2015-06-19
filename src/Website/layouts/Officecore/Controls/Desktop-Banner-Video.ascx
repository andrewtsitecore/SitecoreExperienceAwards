<%@ control language="C#" autoeventwireup="true" codebehind="Desktop-Banner-Video.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop_Banner_Video" %>
<div class="video-header-holder">
    <div class="carousel-header-container video-header-container">
        <%if (!Sitecore.Context.PageMode.IsPageEditorEditing) { %>
        <div class="video-container">
            <% } else { %>
            <div class="video-container-pe">
                <% } %>
                <div class="banner-right-container">
                    <div class="hero-inner">
                        <%if (!Sitecore.Context.PageMode.IsPageEditorEditing) { %>
                        <div class="video-container-main">
                            <video id="sunset-hero" autoplay="" loop="" poster="<%=VideoImg%>">
                                <source src="<%=VideoUrl%>" type="video/mp4">
                                <p>Your browser does not support the <code>video</code> element.</p>
                            </video>
                        </div>
                        <% } else { %>
                        <img class="banner-image" style="clip: rect(0px,0px,220px,0px); width: 960px; height: 335px;" src="<%=VideoImg%>" />
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
    </div>
