using Ninject;
using Officecore.Website.code.Service;
using Sitecore.Analytics;
using Sitecore.Analytics.Tracking;
using Sitecore.Diagnostics;
using Sitecore.Social.Domain;
using Sitecore.Social.Domain.Model;
using Sitecore.Social.Infrastructure;

namespace Officecore.Website.code.Helpers
{
    public class SocialHelper
    {
        public static Contact GetContact()
        {
            var contact = Tracker.Current.Contact;
            return contact;
        }

        public static string GetContactIdentifier()
        {
            var contactIdentifier = GetContact().Identifiers.Identifier;
            return contactIdentifier;
        }

        public static SocialProfile GetSocialFieldsForNetwork(string network)
        {
            var profile = TryGetSocialContactFields(network);
            if (profile != null)
            {
                return profile;
            }
            Log.Warn("There is no fields relating to this contact on this network",typeof(SocialHelper));
            return null;
        }

        public static SocialProfile TryGetSocialContactFields(string networkName)
        {
            var socialProfileManager = ExecutingContext.Current.IoC.Get<ISocialProfileManager>(); //new SocialProfileManager();
            var test = socialProfileManager.GetSocialProfiles(GetContactIdentifier());
            var socialProfile = socialProfileManager.GetSocialProfile(GetContactIdentifier(), networkName);
            return socialProfile;
        }
    }
}