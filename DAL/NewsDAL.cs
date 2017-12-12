using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Common;
using System.Data.SqlClient;

namespace DAL
{
    public class NewsDAL
    {
        /// <summary>
        /// 新闻列表
        /// </summary>/*order by datetime desc*/
        /// <returns></returns>
        public DataTable GetIndexNews(int type, int startRecordIndex)
        {
            string sql = $"select top 6 * from NewList where type={type} and id not in(select top {startRecordIndex} id from NewList order by id) order by id";
            DataTable dt =SqlHelper.GetDataTable(sql);
            return dt;
        }
        public DataTable GetIndexNewsType(int type)
        {
            string sql = $"select top 7 * from NewList where type={type}";
            DataTable dt =SqlHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 新闻详细
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetIndexShowNews(string id)
        {
            string sql = $"select title,images, content,datetime from NewList where id='{id}'";
            DataTable dt =SqlHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 图片列表
        /// </summary>
        /// <returns></returns>
        public DataTable GetIndexImage()
        {
            string sql = "select top 4 id,name,image from Product";
            DataTable dt = SqlHelper.GetDataTable(sql);
            return dt;
;       }
        //public DataTable GetIndexProducts()
        //{
        //    string sql = $"select id,title,image,list from ImageList";
        //    DataTable dt = SQLhelper.SqlHelper.GetDataTable(sql);
        //    return dt;
        //}
        /// <summary>
        /// 图片详细
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetIndexShowProducts(string id)
        {
            string sql = $"select id,title,image,content,money,num,time,name from Product where id='{id}'";
            DataTable dt = SqlHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 人员招聘
        /// </summary>
        /// <returns></returns>
        public DataTable GetIndexJob()
        {
            string sql = "select id, dept,number,date,job,exp,jobtype,xueli,conten from Job";
            DataTable dt = SqlHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 招聘详细页
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetIndexShowJob(string id)
        {
            string sql = $"select id,job,dept,number,date,exp,jobtype,xueli,conten,need from Job where id='{id}'";
            DataTable dt = SqlHelper.GetDataTable(sql);
            return dt;
        }
        /// <summary>
        /// 根据type绑定产品列表
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public DataTable GetIndexNewProduct(int type)
        {
            string sql = $"select top 8 id,title,image,name from Product where type='{type}'";
            DataTable dt = SqlHelper.GetDataTable(sql);
            return dt;
        }
        //获取新闻页码
        public double recordCount()
        {
            string sql = "select COUNT(*) from NewList where type=1";
            return Convert.ToDouble(SqlHelper.ExScalar(sql));
        }
        public int InsertMess(NewModel newModel)
        {
            string sql = "insert into Message (name,content,tel) values(@name,@content,@tel)";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("name",SqlDbType.NVarChar),
                new SqlParameter("content",SqlDbType.Text),
                new SqlParameter("tel",SqlDbType.NVarChar)
            };
            sqlParameters[0].Value = newModel.Name;
            sqlParameters[1].Value = newModel.MContent;
            sqlParameters[2].Value = newModel.Tel;
            return SqlHelper.ExNon(sql, sqlParameters);
        }
        public DataTable SelectMess()
        {
            string sql = $"select * from Message";
            DataTable dt = SqlHelper.GetDataTable(sql);
            return dt;
        }
        public int DeleteMess(int id)
        {
            string sql = $"delete Message where id={id}";
            return SqlHelper.ExNonQuery(sql);
        }
    }
}
