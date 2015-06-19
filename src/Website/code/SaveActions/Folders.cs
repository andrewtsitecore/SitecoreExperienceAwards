using System.Collections.Generic;
using System.Linq;
using Sitecore.Data;
using Sitecore.Data.Managers;
using Sitecore.Diagnostics;
using Sitecore.Data.Items;
using Sitecore.Forms.Core.Extensions;

namespace Officecore.Website.code.SaveActions
{
    internal class Folders
    {
        public Item NewDestination;

        public void SetupFolders()
        {
            var email = Sitecore.Security.Accounts.User.Current.Profile.Email;
            Error.AssertNotNull(email,"Email not found for the current user.");

            var applicationFolder = Database.GetDatabase("master").GetItem("{500FC5C3-BD71-415F-B07C-116E35DA42C9}");
            Error.AssertNotNull(applicationFolder, "No Application folder was found.");

            ID newDest = new ID();

            List<Item> applications = applicationFolder.GetChildren().ToList();

            if (applications.IsNullOrEmpty() || !applications.Exists(x => x.Name == email)){
                //if there are no applications what so ever
                ItemManager.AddFromTemplate(email, applicationFolder.Template.ID, applicationFolder, newDest);
                NewDestination = Database.GetDatabase("master").GetItem(newDest);
            }
            else
            {
                //if its matched with a existing folder with the same email, set that item to the newDestination
                NewDestination = Database.GetDatabase("master").GetItem(applications.Find(x => x.Name == email).ID);                   
            }
        }
    }
}

