namespace Officecore.Website
{
    using System;
    using System.Web.UI;

    public partial class _404 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Status = "404 Not Found";
            Response.StatusCode = 404;
        }
    }
}