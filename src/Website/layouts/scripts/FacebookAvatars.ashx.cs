namespace Officecore.Website.layouts.scripts
{
    using System.Net;
    using System.Web;

    using Facebook;

    using global::Officecore.Website.code.Helpers;

    using Sitecore.Configuration;

    public class FacebookAvatars : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var client = FacebookHelper.GetFacebookClient();
            var feedObject = (JsonObject)client.Get("/stevie3.0/friends");
            var dataArray = (JsonArray)feedObject["data"];

            var idxMale = 1;
            var idxFemale = 1;

            foreach (JsonObject friend in dataArray)
            {
                var friendId = friend["id"].ToString();

                var photoObj = (JsonObject)client.Get("/" + friendId + "/picture?redirect=false&width=250&height=250");
                var photo = (JsonObject)photoObj["data"];

                var isSilhouette = (bool)photo["is_silhouette"];
                if (isSilhouette)
                {
                    continue;
                }

                var friendObj = (JsonObject)client.Get("/" + friendId + "?fields=gender");
                var gender = friendObj.ContainsKey("gender") ? friendObj["gender"].ToString() : "male";

                string photoName;
                if (gender == "male")
                {
                    photoName = string.Format("male_{0}.jpg", idxMale);
                    idxMale++;
                }
                else
                {
                    photoName = string.Format("female_{0}.jpg", idxFemale);
                    idxFemale++;
                }

                var url = photo["url"].ToString();
                var photoPath = Settings.DataFolder + "\\facebook\\" + photoName;
                using (var webClient = new WebClient())
                {
                    webClient.DownloadFile(url, photoPath);
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}