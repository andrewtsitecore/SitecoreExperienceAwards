namespace Officecore.Website.layouts.scripts
{
    using System;
    using System.IO;
    using System.Web.UI;

    using Sitecore.Analytics;
    using Sitecore.Analytics.Model.Entities;
    using Sitecore.Analytics.Tracking;
    using Sitecore.Configuration;
    using Sitecore.Diagnostics;

    public partial class FillXfile : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Assert.IsNotNull(Tracker.Current, "Tracker.Current");
            Assert.IsNotNull(Tracker.Current.Contact, "Tracker.Current.Contact");

            var contactManager = (ContactManager)Factory.CreateObject("tracking/contactManager", true);
            var contact = Tracker.Current.Contact;

            var emailFacet = contact.GetFacet<IContactEmailAddresses>("Emails");
            emailFacet.Preferred = "Work Email";
            var email = emailFacet.Entries.Create("Work Email");
            email.SmtpAddress = "smg@sitecore.net";

            var phoneFacet = contact.GetFacet<IContactPhoneNumbers>("Phone Numbers");
            phoneFacet.Preferred = "Work Phone";
            var workPhone = phoneFacet.Entries.Create("Work Phone");
            workPhone.Number = "07754 116 128";

            var personalFacet = contact.GetFacet<IContactPersonalInfo>("Personal");
            personalFacet.FirstName = "Steve";
            personalFacet.Surname = "McGIll";
            personalFacet.Gender = "male";
            personalFacet.BirthDate = new DateTime(1981, 8, 4);
            personalFacet.Title = "Mr.";

            var addressFacet = contact.GetFacet<IContactAddresses>("Addresses");
            addressFacet.Preferred = "Work Address";
            var workAddress = addressFacet.Entries.Create("Work Address");
            workAddress.City = "London";
            workAddress.Country = "United Kingdom";
            workAddress.PostalCode = "SE22 8AA";
            workAddress.StreetLine1 = "Apartment 3";
            workAddress.StreetLine2 = "8 Dog Kennel Hill";
            workAddress.StateProvince = "State";

            var pictureFacet = contact.GetFacet<IContactPicture>("Picture");
            pictureFacet.MimeType = "image/jpg";
            var picturePath = Settings.DataFolder + "\\facebook\\female_47.jpg";
            pictureFacet.Picture = File.ReadAllBytes(picturePath);

            contactManager.SaveAndReleaseContactToXdb(contact);
        }
    }
}