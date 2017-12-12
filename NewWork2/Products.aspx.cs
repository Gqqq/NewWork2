using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using BLL;
using System.Web.UI.WebControls;

namespace NewWork2
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNewProducts();
            }
        }
        public void BindNewProducts()
        {
            //NewsBLL newsBll = new NewsBLL();
            //rptProducts.DataSource = newsBll.GetIndexProducts();
            //rptProducts.DataBind();
            int type = Convert.ToInt32(Request["type"]);

            NewsBLL newsBll = new NewsBLL();
            rptProducts.DataSource = newsBll.GetIndexNewProduct(type);
            rptProducts.DataBind();


        }
       
    }
}