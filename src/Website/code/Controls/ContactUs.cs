
namespace Officecore.Website.code.Controls
{
    using System.Web.UI;

    using Officecore.Website.code.DataRepositories;

    public class ContactUsPage : UserControl
    {
        internal ContactUsRepository repo = new ContactUsRepository();
        public virtual string LatLonList { get { return repo.GetLatLonListGlobal(); } }
    }
}