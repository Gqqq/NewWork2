using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Common;

namespace NewWork2
{
    public partial class NewsList : System.Web.UI.Page
    {
        NewsBLL news = new NewsBLL();
        //pagecount分成几页  ，pagesize每页显示多少
        //public double PageCount, PageSize;
        protected void Page_Load(object sender, EventArgs e)
        {
            ////recordcount总共有多少个图片
            //double recordCount = Convert.ToInt32( SqlHelper.ExScalar("select COUNT(*) from NewList"));                                                                                                                                                                                                         
            //PageCount = Math.Ceiling(recordCount / PageSize);
            //lbPageCount.Text = PageCount.ToString();
            if (!IsPostBack)
            {
                double recordCount = Convert.ToInt32(news.recordCount());
            double PageCount = Math.Ceiling(recordCount / 6);
            lbPageCount.Text = PageCount.ToString();
            BindNews();
            }
        }
        public void BindNews()
        {
            int pageIndex = Convert.ToInt32(lbPageIndex.Text);
            int startRecordIndex = (pageIndex - 1) * 6;
            rptNews.DataSource = news.GetIndexNews(1, startRecordIndex);
            rptNews.DataBind();
            //int type = Convert.ToInt32(Request["type"]);
            //NewsBLL newsBll = new NewsBLL();
            //rptNews.DataSource = newsBll.GetIndexNews(type);
            //rptNews.DataBind();
            //BindData();
        }
        //public void BindData(int pageIndex = 1, int pageSize = 6)
        //{
        //    int startRecordIndex = (pageIndex - 1) * pageSize;
        //    rptNews.DataSource = SqlHelper.GetDataTable($"select top {pageSize} * from NewList where id not in(select top {startRecordIndex} id from NewList order by id)");
        //    rptNews.DataBind();
        //}
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            lbPageIndex.Text = "1";
            BindNews(/*1, Convert.ToInt32(PageSize)*/);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(lbPageIndex.Text) == 1) return;
            int a = Convert.ToInt32(lbPageIndex.Text) - 1;
            lbPageIndex.Text = a.ToString();
            BindNews(/*a, Convert.ToInt32(PageSize)*/);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            double recordCount = Convert.ToInt32(news.recordCount());
            double PageCount = Math.Ceiling(recordCount / 6);
            if (Convert.ToInt32(lbPageIndex.Text) == PageCount) return;
            int a = Convert.ToInt32(lbPageIndex.Text) + 1;
            lbPageIndex.Text = a.ToString();
            BindNews();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            double recordCount = Convert.ToInt32(news.recordCount());
            double PageCount = Math.Ceiling(recordCount / 6);
            lbPageIndex.Text = PageCount.ToString();
            BindNews();
        }
    }
}