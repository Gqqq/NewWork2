using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common;
using DAL;
using BLL;
using System.Data;

namespace NewWork2.Admin
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        AdminUserBLL adUser = new AdminUserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            NewModel model = new NewModel();
            AdminUserBLL bll = new AdminUserBLL();
            model.UserName = user.Value;
            model.PassWord = pwd.Value;
            model.Level = level.Value;
            int admin = Convert.ToInt32(Session["level"]);
            if (user.Value == "")
            {
                JSHelper.Alert("用户名不能为空");
                return;

            }
            string name = user.Value;
            string sql = $"select count(*) from AdminUser where UserName='{name}'";
            int num = Convert.ToInt32(SqlHelper.ExScalar(sql));
            if (num == 1)
            {
                JSHelper.Alert("用户名不能重复添加");
                return;
            }
            if (level.Value == "")
            {
                JSHelper.Alert("添加管理员时,权限不能为空");
                return;
            }
            if (pwd.Value == "")
            {
                JSHelper.Alert("密码不能为空");
                return;
            }
            string newpwd = newpass.Value;
            if (string.IsNullOrEmpty(newpwd))
            {
                JSHelper.Alert("请再次输入密码");
                return;
            }
            if (pwd.Value != newpwd)
            {
                JSHelper.Alert("两次密码输入不一致,添加失败");
                return;
            }
            //if (level.Value != "1" && level.Value != "2")
            //{
            //    JSHelper.Alert("超级管理员请填'1',普通管理员请填'2'");
            //    return;
            //}
            if (admin != 1)
            {
                JSHelper.Alert("权限不足，无法添加");
                return;
            }
            if (bll.AddAdmin(model) == 1)
            {
                JSHelper.Alert("添加成功");
            }
            else
            {
                JSHelper.Alert("添加失败");
            }
            //NewModel newModel = new NewModel
            //{
            //    UserName = user.Value,
            //    PassWord = pass.Value,
            //    Level = level.Value
            //};

            //string name = user.Value;
            //if (string.IsNullOrEmpty(name))
            //{
            //    JSHelper.Alert("用户名不能为空");
            //    return;
            //}
            //string sql = $"select count(*) from AdminUser where UserName='{name}'";
            //int num = Convert.ToInt32(SqlHelper.ExScalar(sql));
            //if (num == 1)
            //{
            //    JSHelper.Alert("用户名不能重复添加");
            //    return;
            //}
            //string Lv = level.Value;
            //if (string.IsNullOrEmpty(Lv))
            //{
            //    JSHelper.Alert("用户等级权限不能为空");
            //    return;
            //}
            //string password = pass.Value;
            //if (string.IsNullOrEmpty(password))
            //{
            //    JSHelper.Alert("密码不能为空");
            //    return;
            //}
            //string newpassword = newpass.Value;
            //if(string.IsNullOrEmpty(newpassword))
            //{
            //    JSHelper.Alert("请再次输入密码");
            //    return;
            //}
            //if (password == newpassword)
            //{
            //    if (adUser.AddAdmin(newModel) == 1)
            //    {
            //            JSHelper.Alert("添加成功");
            //          //Response.Redirect("AdminList.aspx");
            //            user.Value = string.Empty;
            //            pass.Value = string.Empty;
            //            newpass.Value = string.Empty;
            //            level.Value = string.Empty;
            //    }
            //    else
            //    {
            //        JSHelper.Alert("添加失败");
            //        return;
            //    }
            //}
            //    else
            //    {
            //        JSHelper.Alert("两次密码不一致");
            //        return;
            //    }

        }
    }
}