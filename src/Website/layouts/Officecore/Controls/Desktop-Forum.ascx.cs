using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Officecore.Website.code.Controls;
using Sitecore.Data.Fields;
using Sitecore.Data.Items;
using Sitecore.Resources.Media;
using YAF.Classes.Utils;
using YAF;
using Sitecore.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Text;
using System.IO;

namespace Officecore.Website.layouts.Officecore.Controls
{
    public partial class Desktop_Forum : DatasourceControl
    {

        public int BoardID { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the parent Sublyout
            var sublayout = ((Sublayout)this.Parent);
            // Get the proerties that are set on this sublayout
            NameValueCollection parameters = Sitecore.Web.WebUtil.ParseUrlParameters(sublayout.Parameters);
            // We want the BoardId property
            String Board = HttpUtility.UrlDecode(parameters["Board"]);
            // Set the current board to the one specified in the component properties by BoardId
            YafContext.Current.Settings.BoardID = Convert.ToInt32(Board);
            //CurrentBoard = YafContext.Current.PageBoardID;   
        }
    }
}