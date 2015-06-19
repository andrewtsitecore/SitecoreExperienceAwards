namespace Officecore.Website.code.SaveActions
{
    using System.Web;

    using Sitecore.Data;
    using Sitecore.Form.Core.Client.Data.Submit;
    using Sitecore.Form.Submit;

    public class SaveInSession : ISaveAction
    {
        public void Execute(ID formid, AdaptedResultList fields, params object[] data)
        {
            HttpContext.Current.Session["oc_FormFields"] = fields;
        }
    }
}