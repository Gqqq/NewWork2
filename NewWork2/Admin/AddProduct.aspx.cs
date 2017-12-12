using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using Common;
using BLL;

namespace NewWork2.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        AdminBLL admin = new AdminBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Post();
        }
        private void Post()
        {
            NewModel newModel = new NewModel
            {
                ProName = name.Value,
                ProContent = content.Value,
                ProType = type.Value,
                //DateTime = datetime.Value,
                ProImage = photo.Value
            };
            string title1 = name.Value;
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
            if (string.IsNullOrEmpty(content1))
            {
                JSHelper.Alert("内容不能为空");
                return;
            }
            if (admin.PostProduct(newModel) == 1)
            {
                JSHelper.Alert("发布成功");
                name.Value = string.Empty;
                content.Value = string.Empty;
            }
            else
            {
                JSHelper.Alert("发布失败");
            }
        }
    }
}