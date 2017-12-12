using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using DAL;
using Common;

namespace NewWork2.Admin
{
    public partial class Design : System.Web.UI.Page
    {
       public AdminBLL admin = new AdminBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
                lvNewList.DataBind();
            }
        }
        public void BindNewList()
        {
            DataTable dt = admin.SelectNews(findType.Value, findTitle.Value);
            lvNewList.DataKeyNames = new[] { "id" };
            lvNewList.DataSource = dt;
            lvNewList.DataBind();
        }
        protected void lvNewList_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            lvNewList.EditIndex = e.NewEditIndex;
            BindNewList();
        }
        protected void lvNewList_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            lvNewList.EditIndex = -1;
            BindNewList();
        }
        protected void lvNewList_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            NewModel newModel = new NewModel();
            newModel.Id = e.Keys["id"].ToString();
            newModel.Title = e.NewValues["title"].ToString();
            newModel.Type = e.NewValues["type"].ToString();
            newModel.DateTime = e.NewValues["datetime"].ToString();
            if (admin.UpdateNew(newModel) == 1)
            {
                lvNewList.EditIndex = -1;
                BindNewList();
                return;
            }
            JSHelper.Alert("更新失败");
        }
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            BindNewList();
        }

        protected void lvNewList_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["id"]);
            if (Convert.ToInt32(admin.DeleteNew(id)) == 1)
            {
                JSHelper.Alert("删除成功");
                BindNewList();
            }
            else
            {
                JSHelper.Alert("删除失败");
                return;
            }


        }
    }
}