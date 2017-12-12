using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Common;
using System.Data;
using System.Data.SqlClient;

namespace NewWork2.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //public void Bind()
        //{
        //    string username = user.Value;
        //    string password = pwd.Value;
        //    if (username == "" || password == "")
        //    {
        //        JSHelper.Alert("用户名或密码不正确");
        //        return;
        //    }
        //    string sql = $"select * from AdminUser where UserName='{username}' and PassWord='{password}'";
        //    DataTable dt = SqlHelper.GetDataTable(sql);
        //    int sq = dt.Rows.Count;
        //    if (sq >= 1)
        //    {
        //        string Lv = dt.Rows[0]["Level"].ToString();
        //        Session["Level"] = Lv;
        //        JSHelper.Alert("登陆成功");
        //        Response.Redirect($"index.aspx?Level={Lv}");
        //    }
        //    else
        //    {
        //        JSHelper.Alert("用户名或密码错误");
        //    }
        //}
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            //Session["UserName"] = user.Value;
            //Session["PassWord"] = pwd.Value;
            //Bind();

            AdminUserBLL adUser = new AdminUserBLL();

            //string userName = user.Value;
            //string passWord = pwd.Value;
            //SqlDataReader dr = adUser.UserLoginCheck(userName, passWord);
            //if (dr.Read()/*adUser.UserLoginCheck(userName, passWord)*/)
            //{
            //    Session["UserName"] = user.Value;
            //    Session["ID"] = Convert.ToInt32(dr["id"]);
            //    Session["PassWord"] = pwd.Value;
            //    dr.Close();
            //    Response.Redirect("Index.aspx");
            //}
            //else
            //{
            //    JSHelper.Alert("账号或密码不正确");
            //    dr.Close();
            //    return;
            //}

            string name = user.Value;
            string pass = pwd.Value;

            DataTable dt = adUser.UserLoginCheck(name, pass);
            if (adUser.UserLoginCheck(name, pass).Rows.Count == 1)
            {
                Session["UserName"] = name;
                Session["PassWord"] = pass;
                Session["id"] = dt.Rows[0]["id"].ToString();
                Session["level"] = dt.Rows[0]["level"].ToString();
                Response.Redirect("index.aspx");
            }
            else
            {
                JSHelper.Alert("账号或密码不正确");
            }
        }
    }
}