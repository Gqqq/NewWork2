using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace NewWork2
{
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            if (!IsPostBack)
            {
                NewsBLL newsBll = new NewsBLL();
                DataTable dt= newsBll.GetIndexShowProducts(id);
                rptShowProducts.DataSource = dt;
                rptShowProducts.DataBind();
            }
        }
        public void BindShowProducts()
        {
            

        }
    }
}