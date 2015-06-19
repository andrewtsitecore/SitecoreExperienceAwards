namespace Officecore.Website.layouts.Officecore.Controls
{
    using System;
    using System.Linq;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    using global::Officecore.Website.code.Helpers;

    using Sitecore.Web;

    using TweetSharp;

    public partial class TwitterFeed : UserControl
    {
        protected string TwitterHandle { get; set; }

        private void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DoTweets();
            }
        }

        private void DoTweets()
        {
            TwitterHandle = "SitecoreUK";
            var count = 10;

            var parameters = Attributes["sc_parameters"];
            if (!string.IsNullOrWhiteSpace(parameters))
            {
                var nameValueCollection = WebUtil.ParseUrlParameters(parameters);
                if (nameValueCollection["handle"] != null)
                {
                    TwitterHandle = nameValueCollection["handle"];
                }

                int.TryParse(nameValueCollection["count"], out count);
            }

            if (string.IsNullOrWhiteSpace(TwitterHandle))
            {
                if (!Sitecore.Context.PageMode.IsPageEditor)
                {
                    Visible = false;
                }

                return;
            }

            var service = TwitterHelper.GetAuthenticatedService();
            var list = service.ListTweetsOnUserTimeline(new ListTweetsOnUserTimelineOptions
            {
                ScreenName = TwitterHandle,
                TrimUser = true,
                Count = count,
                ExcludeReplies = true,
                IncludeRts = true
            });

            rptTweets.DataSource = list;
            rptTweets.DataBind();
        }

        protected void TweetDataBound(object sender, RepeaterItemEventArgs e)
        {
            var tweet = e.Item.DataItem as TwitterStatus;
            if (tweet == null) return;

            if (tweet.Entities == null || !tweet.Entities.Any()) return;
            if (tweet.Entities.Media == null || !tweet.Entities.Media.Any()) return;

            var photo = tweet.Entities.Media.FirstOrDefault(x => x.MediaType == TwitterMediaType.Photo);
            if (photo == null) return;

            var smallPhoto = photo.Sizes.Thumb;

            e.Item.FindControl("pnlPhoto").Visible = true;

            var img = (Image)e.Item.FindControl("img");
            img.ImageUrl = (Request.IsSecureConnection ? photo.MediaUrlHttps : photo.MediaUrl) + ":thumb";
            img.Width = smallPhoto.Width;
            img.Height = smallPhoto.Height;
        }
    }
}