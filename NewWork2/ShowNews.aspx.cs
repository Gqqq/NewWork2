using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using System.Web.UI.HtmlControls;

namespace NewWork2
{
    public partial class ShowNews : System.Web.UI.Page
    {
        //public string liHtml = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request["id"];
            if (!IsPostBack)
            {
                NewsBLL newsBll = new NewsBLL();
            DataTable dt = newsBll.GetIndexShowNews(id);
            rptShowNews.DataSource = dt;
            rptShowNews.DataBind();
            }

            int pageCount = 10;
            for (int i=0;i<pageCount;i++)
            {
                //HtmlGenericControl li = new HtmlGenericControl("li");
                //HtmlAnchor a = new HtmlAnchor();
                //a.HRef = $"ShowNews.aspx?page={i + 1}";
                //a.InnerText = $"{i + 1}";
                //li.Controls.Add(a);
                //ulPageer.Controls.Add(li);
                //string li = $"<li><a href='ShowNews.aspx? page={i + 1}'>{i + 1}</a></li>";
                //liHtml += li;
            }
            //DataTable data = SQLhelper.SqlHelper.GetDataTable("select title,content from NewList where id=1");
            //if (data.Rows.Count == 0) return;
          
        }
        
    }
}