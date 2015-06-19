<%@ control language="C#" autoeventwireup="true" codebehind="TwitterFeed.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.TwitterFeed" %>
<%@ Import Namespace="Humanizer" %>

<asp:repeater runat="server" id="rptTweets" onitemdatabound="TweetDataBound" itemtype="TweetSharp.TwitterStatus">
    <HeaderTemplate>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">        
                    @<%#TwitterHandle%>
                </h3>
            </div>
            <div class="panel-body" style="padding: 15px !important">
    </HeaderTemplate>
    <FooterTemplate>
        </div>
        </div>
    </FooterTemplate>
    <ItemTemplate>
        <div style="margin-bottom: 15px;">
            <div style="font-weight: 700">
                <%#Item.CreatedDate.Humanize()%>
            </div>
            <div style="overflow: hidden">
                <%#Item.TextAsHtml %>
            </div>
            <asp:Panel runat="server" ID="pnlPhoto" Visible="False">
                <asp:Image runat="server" ID="img" />
            </asp:Panel>
        </div>
    </ItemTemplate>
</asp:repeater>