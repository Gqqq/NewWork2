using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using Common;

namespace NewWork2
{
    public partial class Message : System.Web.UI.Page
    {
        NewsBLL news = new NewsBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mess();
            }
        }
        public void Mess()
        {
            lvMess.DataSource = news.ShowMess();
            lvMess.DataBind();
        }
        public void InsertMessage()
        {
            NewModel newModel = new NewModel
            {
                Name = name.Value,
                MContent = content.Value,
                Tel=tel.Value
            };
            string name1 = name.Value;
            if (string.IsNullOrEmpty(name1))
            {
                JSHelper.Alert("昵称不能为空");
                return;
            }
            string content1 = content.Value;
            if (string.IsNullOrEmpty(content1))
            {
                JSHelper.Alert("内容不能为空");
                return;
            }
            string tel1 = tel.Value;
            if (string.IsNullOrEmpty(tel1))
            {
                JSHelper.Alert("联系方式不能为空");
                return;
            }
            if (news.InsertMess(newModel) == 1)
            {
                JSHelper.Alert("发布成功");
                name.Value = string.Empty;
                content.Value = string.Empty;
            }
            else
            {
                JSHelper.Alert("发布失败");
            }
            Mess();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertMessage();
        }
    }
}