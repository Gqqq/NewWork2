using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common;

namespace NewWork2
{
    public partial class Main : System.Web.UI.MasterPage
    {
        public string WebPage = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Request.Path;
            WebPage = path.Split('/').Last();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            JSHelper.Alert("收藏本站成功");
        }
    }
}