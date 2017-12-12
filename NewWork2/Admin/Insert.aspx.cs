using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using System.Data;
using Common;

namespace NewWork2.Admin
{
    public partial class Insert : System.Web.UI.Page
    {
        AdminBLL admin = new AdminBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string action = Request["action"];
                if (!string.IsNullOrWhiteSpace(action))
                {
                    string id = Request["id"];
                    DataTable dt = admin.FindNewById(id);
                    if (dt.Rows.Count == 0)
                    {
                        JSHelper.Alert("数据不存在");
                        return;
                    }
                    title.Value = dt.Rows[0]["title"].ToString();
                    content.Value = dt.Rows[0]["content"].ToString();
                    type.Value = dt.Rows[0]["type"].ToString();
                    //datetime.Value = dt.Rows[0]["datetime"].ToString();

                }
            }
        }
        
        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            if (Request["action"] == "edit")
            {
                Update();
            }
            else
            {
                Post();
            }
        }
        private void Post()
        {
            NewModel newModel = new NewModel
            {
                Title = title.Value,
                Content = content.Value,
                Type = type.Value,
                //DateTime = datetime.Value,
                //Images =photo.Value
            };
            string title1 = title.Value;
            if (string.IsNullOrEmpty(title1))
            {
                JSHelper.Alert("标题不能为空");
                return;
            }
            //string time = datetime.Value;
            //if (string.IsNullOrEmpty(time))
            //{
            //    JSHelper.Alert("时间不能为空");
            //    return;
            //}
            string content1 = content.Value;
            if(string.IsNullOrEmpty(content1))
            {
                JSHelper.Alert("内容不能为空");
                return;
            }
            if (admin.PostNew(newModel) == 1)
            {
                JSHelper.Alert("发布成功");
                title.Value = string.Empty;
                content.Value = string.Empty;
            }
            else
            {
                JSHelper.Alert("发布失败");
            }
        }
        private void Update()
        {
            NewModel newModel = new NewModel();
            newModel.Title = title.Value;
            newModel.Content = content.Value;
            newModel.Type = type.Value;
            //newModel.DateTime = datetime.Value;
            newModel.Id = Request["id"];
            if (admin.UpdateNew(newModel) == 0)
            {
                JSHelper.Alert("更新失败");
            }
            else
            {
                JSHelper.Alert("更新成功");
            }
        }
    }
}