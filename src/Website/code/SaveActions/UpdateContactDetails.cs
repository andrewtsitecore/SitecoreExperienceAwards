namespace Officecore.Website.code.SaveActions
{
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.Script.Serialization;
    using Sitecore.Analytics;
    using Sitecore.Analytics.Model.Entities;
    using Sitecore.Analytics.Tracking;
    using Sitecore.Configuration;
    using Sitecore.Data;
    using Sitecore.Diagnostics;
    using Sitecore.Form.Core.Client.Data.Submit;
    using Sitecore.Form.Submit;
    using Sitecore.WFFM.Analytics;

    public class UpdateContactDetails : ISaveAction
    {
        public string Mapping { get; set; }

        public void Execute(ID formid, AdaptedResultList fields, params object[] data)
        {
            this.UpdateContact(fields);
        }

        protected virtual void UpdateContact(AdaptedResultList fields)
        {
            Assert.ArgumentNotNull(fields, "fields");
            Assert.IsNotNullOrEmpty(this.Mapping, "Empty mapping xml.");
            Assert.IsNotNull(Tracker.Current, "Tracker.Current");
            Assert.IsNotNull(Tracker.Current.Contact, "Tracker.Current.Contact");

            Dictionary<string, string> dictionary = this.ParseMapping(this.Mapping, fields);
            Assert.IsTrue(dictionary.Count > 0, "Empty list of mapping fields.");
            IContactFacetFactory contactFacetFactory = (IContactFacetFactory)Factory.CreateObject("wffm/facetFactory", true);
            ContactManager contactManager = (ContactManager)Factory.CreateObject("tracking/contactManager", true);
            Contact contact = Tracker.Current.Contact;
            foreach (KeyValuePair<string, string> keyValuePair in dictionary)
            {
                // Helped by http://blog.horizontalintegration.com/2014/11/05/sitecore-8-how-to-programatically-associate-visitor-data-into-contact-card/
                if (keyValuePair.Key == "Emails/Preferred")
                {
                    var emailFacet = Tracker.Current.Contact.GetFacet<IContactEmailAddresses>("Emails");

                    if (!emailFacet.Entries.Contains("Work Email"))
                    {
                        IEmailAddress email = emailFacet.Entries.Create("Work Email");
                        email.SmtpAddress = keyValuePair.Value;
                        emailFacet.Preferred = "Work Email";
                    }
                }
                else if (keyValuePair.Key == "Phone Numbers/Preferred")
                {
                    var phoneFacet = Tracker.Current.Contact.GetFacet<IContactPhoneNumbers>("Phone Numbers");
                    if (!phoneFacet.Entries.Contains("Work Phone"))
                    {
                        IPhoneNumber workPhone = phoneFacet.Entries.Create("Work Phone");
                        workPhone.Number = keyValuePair.Value;
                        phoneFacet.Preferred = "Work Phone";
                    }
                }
                else
                {
                    contactFacetFactory.SetFacetValue(Tracker.Current.Contact, keyValuePair.Key, keyValuePair.Value, true);
                }
            }

            contactManager.SaveAndReleaseContact(contact);
        }

        private Dictionary<string, string> ParseMapping(string mapping, AdaptedResultList adaptedFieldResultList)
        {
            Assert.ArgumentNotNullOrEmpty(mapping, "mapping");
            Assert.ArgumentNotNull((object)adaptedFieldResultList, "adaptedFieldResultList");
            return ((object[])new JavaScriptSerializer().Deserialize(mapping, typeof(object))).Cast<Dictionary<string, object>>().ToDictionary(item => item["value"].ToString(), item => adaptedFieldResultList.GetValueByFieldID(ID.Parse(item["key"].ToString())));
        }
    }
}