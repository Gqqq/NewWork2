using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using DAL;
using Common;

namespace NewWork2.Admin
{
    public partial class Message : System.Web.UI.Page
    {
        NewsBLL news = new NewsBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lvMessage.DataBind();
                Mess();
            }
        }
        public void Mess()
        {
            DataTable dt = news.ShowMess();
            lvMessage.DataKeyNames = new[] { "id" };
            lvMessage.DataSource = dt;
            lvMessage.DataBind();
        }

        protected void lvMessage_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["id"]);
            if (Convert.ToInt32(news.DeleteMess(id)) == 1)
            {
                JSHelper.Alert("删除成功");
                Mess();
            }
            else
            {
                JSHelper.Alert("删除失败");
                return;
            }
        }
    }
}