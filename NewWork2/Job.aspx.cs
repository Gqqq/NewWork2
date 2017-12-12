using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace NewWork2
{
    public partial class Job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJob();
            }
        }
        public void BindJob()
        {
            NewsBLL newsBll = new NewsBLL();
            rptJob.DataSource = newsBll.GetIndexJob();
            rptJob.DataBind();

        }
    }
}