namespace Officecore.Website.code.Helpers
{
    using System;

    using Facebook;

    using Sitecore;

    public class FacebookHelper
    {
        public static FacebookClient GetFacebookClient()
        {
            var facebookApplication =
                Context.Database.SelectSingleItem("/sitecore/system/Social/Applications/Default/*[@Network='{D7429409-D6DA-46CD-91DD-8702781AE3C4}']");

            if (facebookApplication == null)
            {
                throw new Exception("Facebook application not found");
            }

            var facebookAccount =
                Context.Database.SelectSingleItem(
                    "/sitecore/system/Social/Accounts/*[@Application='" + facebookApplication.ID + "']");

            if (facebookAccount == null)
            {
                throw new Exception("Facebook account not found under /sitecore/system/Social/Accounts");
            }

            var accessToken = facebookAccount["AccessTokenSecret"];

            return new FacebookClient
            {
                AccessToken = accessToken,
                AppId = facebookApplication["Application ID"],
                AppSecret = facebookApplication["Application Secret"]
            };
        }
    }
}