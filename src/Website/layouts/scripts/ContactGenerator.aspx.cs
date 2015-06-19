namespace Officecore.Website.layouts.scripts
{
    using System;
    using System.Collections.Generic;
    using System.Configuration;
    using System.Globalization;
    using System.IO;
    using System.Text;
    using System.Web.UI;

    using LumenWorks.Framework.IO.Csv;

    using MongoDB.Bson;
    using MongoDB.Driver;

    using Sitecore.Configuration;

    public partial class ContactGenerator : Page
    {
        private class ContactRow
        {
            private int Number { get; set; }
            public string Gender { get; private set; }
            public string Title { get; private set; }
            public string FirstName { get; private set; }
            public string LastName { get; private set; }
            public string StreetAddress { get; private set; }
            public string City { get; private set; }
            public string State { get; private set; }
            public string Postcode { get; private set; }
            public string Country { get; private set; }
            public string Email { get; private set; }
            public string Phone { get; private set; }
            public DateTime Birthday { get; private set; }
            public string Occupation { get; private set; }

            public static Dictionary<int, ContactRow> GetRows()
            {
                var dic = new Dictionary<int, ContactRow>();
                var path = Settings.DataFolder + @"\FakeNameGenerator.com.csv";

                var ci = new CultureInfo("en-US");

                using (var csv = new CsvReader(new StreamReader(path, Encoding.UTF8), hasHeaders: true, delimiter: ','))
                {
                    csv.MissingFieldAction = MissingFieldAction.ReplaceByEmpty;

                    while (csv.ReadNextRecord())
                    {
                        if (csv[0] == string.Empty) continue;
                        var row = new ContactRow
                                      {
                                          Number = int.Parse(csv[0]),
                                          Gender = csv[1],
                                          Title = csv[2],
                                          FirstName = csv[3],
                                          LastName = csv[4],
                                          StreetAddress = csv[5],
                                          City = csv[6],
                                          State = csv[7],
                                          Postcode = csv[8],
                                          Country = csv[9],
                                          Email = csv[10],
                                          Phone = csv[11],
                                          Birthday = DateTime.Parse(csv[12], ci),
                                          Occupation = csv[13]
                                      };

                        dic[row.Number] = row;
                    }
                }

                return dic;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var db = GetDatabase();
            var collection = db.GetCollection("Contacts");

            var rows = ContactRow.GetRows();

            var idxMale = 1;
            var idxFemale = 1;

            foreach (BsonDocument x in collection.FindAll())
            {
                // Does this document have Personal facet? If not, it's not imported from List manager
                BsonValue personal;
                if (!x.TryGetValue("Personal", out personal)) continue;

                // Can we parse the identifier?
                var number = GetNumber(x);
                if (number == -1) continue;

                // Can we find the row in the CSV file from the identifier?
                ContactRow row;
                if (!rows.TryGetValue(number, out row)) continue;

                // Do personal
                personal["FirstName"] = row.FirstName;
                personal["Surname"] = row.LastName;
                personal["Title"] = row.Title;
                personal["JobTitle"] = row.Occupation;
                personal["BirthDate"] = new BsonDateTime(row.Birthday);
                personal["Gender"] = row.Gender;

                x["Emails"]["Entries"]["Preferred"]["SmtpAddress"] = row.Email;

                x["Addresses"] = DoAddress(row);
                x["Phone Numbers"] = DoPhone(row);
                x["Picture"] = GetPicture(row, ref idxMale, ref idxFemale);

                collection.Save(x);
            }
        }

        private BsonDocument GetPicture(ContactRow row, ref int idxMale, ref int idxFemale)
        {
            var picture = new BsonDocument();
            picture["MimeType"] = "image/jpg";

            string picturePath;
            if (row.Gender.Equals("male", StringComparison.InvariantCultureIgnoreCase))
            {
                picturePath = Settings.DataFolder + @"\Facebook\male_" + idxMale + ".jpg";
                idxMale++;
                if (idxMale == 168)
                {
                    idxMale = 1;
                }
            }
            else
            {
                picturePath = Settings.DataFolder + @"\Facebook\female_" + idxFemale + ".jpg";
                idxFemale++;
                if (idxFemale == 98)
                {
                    idxFemale = 1;
                }
            }

            picture["Picture"] = new BsonBinaryData(File.ReadAllBytes(picturePath));
            return picture;
        }

        private MongoDatabase GetDatabase()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["analytics"].ConnectionString;
            var lastSlash = connectionString.LastIndexOf('/');
            var serverAddress = connectionString.Substring(0, lastSlash);
            var databaseName = connectionString.Substring(lastSlash + 1);

            var client = new MongoClient(serverAddress);
            var server = client.GetServer();

            return server.GetDatabase(databaseName);
        }

        private BsonDocument DoAddress(ContactRow row)
        {
            var address = new BsonDocument();
            address.AddRange(
                new Dictionary<string, object>
                    {
                        { "Country", row.Country },
                        { "StateProvince", row.State },
                        { "City", row.City },
                        { "PostalCode", row.Postcode },
                        { "StreetLine1", row.StreetAddress }
                    });

            var entries = new BsonDocument();
            entries["Work Address"] = address;

            var addresses = new BsonDocument();
            addresses["Preferred"] = "Work Address";
            addresses["Entries"] = entries;

            return addresses;
        }

        private BsonDocument DoPhone(ContactRow row)
        {
            var phone = new BsonDocument();
            phone["Number"] = row.Phone;

            var entries = new BsonDocument();
            entries["Work Phone"] = phone;

            var phoneNumbers = new BsonDocument();
            phoneNumbers["Preferred"] = "Work Phone";
            phoneNumbers["Entries"] = entries;

            return phoneNumbers;
        }

        private int GetNumber(BsonDocument document)
        {
            try
            {
                return int.Parse(document["Identifiers"]["Identifier"].ToString());
            }
            catch (Exception)
            {
                return -1;
            }
        }
    }
}