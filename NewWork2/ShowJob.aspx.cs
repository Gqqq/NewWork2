using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace NewWork2
{
    public partial class ShowJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            if (!IsPostBack)
            {
                NewsBLL newsBll = new NewsBLL();
                DataTable dt = newsBll.GetIndexShowJob(id);
                rptShowjob.DataSource = dt;
                rptShowjob.DataBind();
            }
        }
    }
}