namespace Officecore.Website.code.EventHandlers.Social
{
    using System;
    using System.IO;
    using System.Net;

    using Facebook;

    using Officecore.Website.code.Helpers;

    using Sitecore.Analytics;
    using Sitecore.Analytics.Model.Entities;
    using Sitecore.Analytics.Tracking;
    using Sitecore.Configuration;
    using Sitecore.Events;
    using Sitecore.Social.Client.Api.EventArgs;
    using Sitecore.Social.Domain.Model;

    public class UpdateXfilePicture
    {
        private SocialProfileIdentityData data;

        private IContactPicture pictureFacet;

        protected void OnLoggedIn(object sender, EventArgs args)
        {
            var args2 = (SocialNetworkUserLoggedInEventArgs)Event.ExtractParameter(args, 0);

            var contact = Tracker.Current.Contact;
            pictureFacet = contact.GetFacet<IContactPicture>("Picture");

            // Don't process if picture already exists.
            if (pictureFacet.Picture != null && pictureFacet.Picture.Length > 0)
            {
                return;
            }

            data = args2.SocialProfileIdentityData;

            // Only process for Facebook
            if (args2.NetworkName == "Facebook")
            {
                this.DoFacebook();
            }

            var contactManager = (ContactManager)Factory.CreateObject("tracking/contactManager", true);
            contactManager.SaveAndReleaseContact(contact);
        }

        protected virtual void DoFacebook()
        {
            var client = FacebookHelper.GetFacebookClient();
            var query = string.Format("/{0}/picture?redirect=false&width=500&height=500", data.NetworkAccountId);
            var obj = (JsonObject)client.Get(query);
            var dataObj = (JsonObject)obj["data"];

            var isSilhouette = (bool)dataObj["is_silhouette"];
            if (isSilhouette)
            {
                return;
            }

            var url = (string)dataObj["url"];
            GetPictureFromUrl(url);
        }

        protected virtual void GetPictureFromUrl(string url)
        {
            using (var webClient = new WebClient())
            {
                using (var stream = new MemoryStream(webClient.DownloadData(url)))
                {
                    pictureFacet.MimeType = "image/jpg";
                    pictureFacet.Picture = stream.ToArray();
                }
            }
        }
    }
}