using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Data;
using Common;
using BLL;

namespace NewWork2.Admin
{
    public partial class EditPassWord : System.Web.UI.Page
    {
        AdminUserBLL admin = new AdminUserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string name = Session["UserName"].ToString();
            string pass = Session["PassWord"].ToString();
            string oldpass = OldPass.Value;
            string newpass = NewPass.Value;
            string newpass1 = NewPass1.Value;
            if (oldpass != pass)
            {
                JSHelper.Alert("原密码错误");
                return;
            }
            if (newpass == "" || newpass1 == "")
            {
                JSHelper.Alert("密码不能为空");
                return;
            }
            if (newpass != newpass1)
            {
                JSHelper.Alert("两次密码输入不一致");
                return;
            }
            if (admin.UpdatePass(newpass, name) > 0)
            {
                JSHelper.Alert("修改成功");
                Response.Redirect("Login.aspx");
            }
            else
            {
                JSHelper.Alert("修改失败");
            }

            //int id = Convert.ToInt32(Session["id"]);
            //string newpass = NewPass.Value;
            //string oldpass = OldPass.Value;
            //int pass = Convert.ToInt32(Session["PassWord"]);
            //if(Convert.ToInt32(oldpass)!=pass)
            //{
            //    JSHelper.Alert("旧密码错误");
            //}
            //if (Convert.ToInt32(admin.UpdatePass( oldpass, id)) == 1)
            //{
            //    JSHelper.Alert("密码修改成功");
            //}
            //else
            //{
            //    JSHelper.Alert("密码修改失败");
            //}
        }
    }
}