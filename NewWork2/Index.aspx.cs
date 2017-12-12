using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace NewWork2
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            if (!IsPostBack)
            {
                BindNews();
                BindImages();
                //NewsBLL newsBll = new NewsBLL();
                //rptIndex.DataSource = newsBll.GetIndexNewProduct(id);
                //rptIndex.DataBind();
            }
        }
        public void BindNews()
        {
           
            NewsBLL newsBll = new NewsBLL();
            rptNews.DataSource = newsBll.GetIndexNewsType(2);//这个地方实参(1)****
            rptNews.DataBind();
        
       }
        public void BindImages()
        {
            NewsBLL newsBll = new NewsBLL();
            rptImages.DataSource = newsBll.GetIndexImage();
            rptImages.DataBind();
        }
        
    }
}