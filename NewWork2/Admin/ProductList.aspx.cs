using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DAL;
using Common;
using BLL;

namespace NewWork2.Admin
{
    public partial class ProductList : System.Web.UI.Page
    {
        AdminBLL admin = new AdminBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindProducts()
        {
            DataTable dt = admin.SelectProduct(findType.Value, findTitle.Value);
            lvProductList.DataKeyNames = new[] { "id" };
            lvProductList.DataSource = dt;
            lvProductList.DataBind();
        }
        protected void lvNewList_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            lvProductList.EditIndex = e.NewEditIndex;
            BindProducts();
        }

        protected void lvNewList_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            lvProductList.EditIndex = -1;
            BindProducts();
        }

        protected void lvNewList_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {
            NewModel newModel = new NewModel();
            newModel.ProID = e.Keys["id"].ToString();
            newModel.ProName = e.NewValues["name"].ToString();
            newModel.ProType = e.NewValues["type"].ToString();
            if (admin.UpdateProduct(newModel) == 1)
            {
                lvProductList.EditIndex = -1;
                BindProducts();
                return;
            }
            JSHelper.Alert("更新失败");
        }

        protected void lvNewList_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(e.Keys["id"]);
            if (Convert.ToInt32(admin.DeleteProduct(id)) == 1)
            {
                JSHelper.Alert("删除成功");
                BindProducts();
            }
            else
            {
                JSHelper.Alert("删除失败");
                return;
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            BindProducts();
        }
    }
}