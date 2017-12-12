using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using Common;
using DAL;

namespace NewWork2.Admin
{
    public partial class AdminList : System.Web.UI.Page
    {
        AdminUserBLL admin = new AdminUserBLL();
        NewModel model=new NewModel ();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAdmin();
                //lvAdminList.DataBind();
            }
        }
        public void BindAdmin()
        {
            DataTable dt = admin.SelectAdmin(Level.Value, Name.Value);
            lvAdminList.DataKeyNames = new[] { "id" };
            lvAdminList.DataSource = dt;
            lvAdminList.DataBind();
            //lvAdminList.DataKeyNames = new[] { "id" };
            //lvAdminList.DataSource = admin.SelectAdmin(Level.Value, Name.Value);
            //lvAdminList.DataBind();
        }

        protected void lvAdminList_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            lvAdminList.EditIndex = e.NewEditIndex;
            BindAdmin();
        }

        protected void lvAdminList_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            NewModel newModel = new NewModel();
            newModel.ID = e.Keys["id"].ToString();
            newModel.UserName = e.NewValues["UserName"].ToString();
            //newModel.PassWord = e.NewValues["PassWord"].ToString();
            if (admin.UpdateAdmin(newModel) == 1)
            {
                lvAdminList.EditIndex = -1;
                BindAdmin();
                return;
            }
            JSHelper.Alert("更新失败");
        }

        protected void lvAdminList_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            lvAdminList.EditIndex = -1;
            BindAdmin();
        }

        protected void lvAdminList_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            //int id = Convert.ToInt32(e.Keys["id"]);
            //string name = e.Values["UserName"].ToString();
            //if (Session["userName"].ToString()==name/*Convert.ToInt32(admin.DeleteAdmin(id)) == 1*/)
            //{
            //    JSHelper.Alert("不能删除当前账号");
            //    return;
            //}
            string name=Session["UserName"].ToString();
            string id = e.Keys["id"].ToString();
            string Slevel = Session["Level"].ToString();
            //string level =e.Values["Level"].ToString();
            if (id == admin.SelectAdmin("-1", name).Rows[0]["id"].ToString())
            {
                JSHelper.Alert("当前账号正在使用,不能删除");
                return;
            }
            //if (level == "1")
            //{
            //    JSHelper.Alert("不能删除超级管理员");
            //    return;
            //}
            if (Slevel == "2")
            {
                JSHelper.Alert("权限不足，不能删除该账号");
                return;
            }
            
            if (admin.DeleteAdmin(id) == 1)
            {
                JSHelper.Alert("删除成功");
                BindAdmin();
                return;
            }
            else
            {
                JSHelper.Alert("删除失败");
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            BindAdmin();
        }
    }
}