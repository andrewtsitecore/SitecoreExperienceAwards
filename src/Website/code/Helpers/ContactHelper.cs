using System.Text.RegularExpressions;
using Sitecore.Analytics.Model.Entities;
using Sitecore.Social.Domain.Model;
using Officecore.Website.code.Controls;

namespace Officecore.Website.code.Helpers
{
    public class ContactHelper : DatasourceControl
    {
        private static readonly SocialProfile SocialAccount;
        private static readonly IContactPersonalInfo PersonalInfo;
        private static readonly IContactEmailAddresses EmailInfo;
        private static readonly IContactPhoneNumbers PhoneInfo;
        private static readonly IContactAddresses AddressInfo;

        static ContactHelper()
        {
            SocialAccount = SocialHelper.GetSocialFieldsForNetwork("Facebook");

            if (SocialAccount == null)
            {
                PageEditorError = "Social Account not found for this contact.";
            }
            PersonalInfo = Sitecore.Analytics.Tracker.Current.Contact.GetFacet<IContactPersonalInfo>("Personal");
            EmailInfo = Sitecore.Analytics.Tracker.Current.Contact.GetFacet<IContactEmailAddresses>("Emails");
            PhoneInfo = Sitecore.Analytics.Tracker.Current.Contact.GetFacet<IContactPhoneNumbers>("Phone Numbers");
            AddressInfo = Sitecore.Analytics.Tracker.Current.Contact.GetFacet<IContactAddresses>("Addresses");
        }

        public static string Checkvalue(string fieldName)
        {
            if (SocialAccount.NetworkName == "Facebook")
            {
                foreach (var field in SocialAccount.Fields)
                {
                    if (field.Key.Contains("hometown"))
                    {
                        if (Like(fieldName, "City"))
                        {
                            if (SocialAccount.Fields[field.Key] != null)
                            {
                                return field.Value.Split(':')[2].Split('"')[1].Split(',')[0];
                            }
                            return NoneSocialField(fieldName);
                        }
                        if (Like(fieldName, "Country"))
                        {
                            if (SocialAccount.Fields[field.Key] != null)
                            {
                                return field.Value.Split(':')[2].Split('"')[1].Split(',')[1];
                            }
                            return NoneSocialField(fieldName);
                        }
                    }
                    if (field.Key.Contains(fieldName.ToLower()))
                    {
                        if (SocialAccount.Fields[field.Key] == null)
                        {
                            return NoneSocialField(fieldName);
                        }
                        return SocialAccount.Fields[field.Key];
                    }
                }
                return NoneSocialField(fieldName);
            }
            return string.Empty;
        }

        private static string NoneSocialField(string fieldName)
        {
            if (Like(fieldName, "Title"))
            {
                return PersonalInfo.Title;
            }
            if (Like(fieldName, "First"))
            {
                return PersonalInfo.FirstName;
            }
            if (Like(fieldName, "Last"))
            {
                return PersonalInfo.Surname;
            }
            if (Like(fieldName, "Email"))
            {
                return EmailInfo.Preferred;
            }
            if (Like(fieldName, "Phone"))
            {
                return PhoneInfo.Preferred;
            }
            if (Like(fieldName, "Mobile"))
            {
                return PhoneInfo.Preferred;
            }
            if (Like(fieldName, "House"))
            {
                //Todo: 
                //return AddressInfo.Preferred[1].ToString();
                //var house = AddressInfo.Entries["0"].StreetLine1;
                //if (house != null)
                //{
                //    return house;
                //}
            }
            if (Like(fieldName, "Postcode"))
            {
                //Todo: 
                //var postcode = AddressInfo.Entries["0"].PostalCode;
                //if (postcode != null)
                //{
                //    return postcode;
                //}
            }
            return string.Empty;
        }

        private static bool Like(string toSearch, string toFind)
        {
            return new Regex(@"\A" + new Regex(@"\.|\$|\^|\{|\[|\(|\||\)|\*|\+|\?|\\").Replace(toFind, ch => @"\" + ch).Replace('_', '.').Replace("%", ".*") + @"\z", RegexOptions.Singleline).IsMatch(toSearch);
        }

        public static void UpdateContact(string title = null, string firstname = null, string lastname = null, string phone = null, string mobile = null, string email = null, string house = null, string street = null, string city = null, string postcode = null, string county = null, string country = null)
        {
            PersonalInfo.Title = title;
            PersonalInfo.FirstName = firstname;
            PersonalInfo.Surname = lastname;

            PhoneInfo.Preferred = phone;

            EmailInfo.Preferred = email;

            if (!AddressInfo.Entries.Contains("BillingAddress"))
            {
                AddressInfo.Entries.Create("BillingAddress");
            }
            AddressInfo.Entries["BillingAddress"].StreetLine1 = house;
            AddressInfo.Entries["BillingAddress"].StreetLine2 = street;
            AddressInfo.Entries["BillingAddress"].StreetLine3 = city;
            AddressInfo.Entries["BillingAddress"].PostalCode = postcode;
            AddressInfo.Entries["BillingAddress"].StreetLine4 = county;
            AddressInfo.Entries["BillingAddress"].Country = country;
        }
    }
}