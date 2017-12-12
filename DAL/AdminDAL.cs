using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Common;
using System.Data.SqlClient;

namespace DAL
{
   public class AdminDAL
    {
        /// <summary>
        /// 查询新闻
        /// </summary>
        /// <param name="type"></param>
        /// <param name="title"></param>
        /// <returns></returns>
        public DataTable SelectNews(string type = "-1", string title = "")
        {
            string sql = $"select * from NewList where 1=1";
            if (type != "-1")
            {
                sql += $"and type={type}";
            }
            if (title != string.Empty)
            {
                sql += $"and title like '%{title}%'";
            }
            return SqlHelper.GetDataTable(sql);
        }
        public int UpdateNew(NewModel newModel)
        {
            string updateFild = string.Empty;
            //SqlParameter集合,把所有要更新的字段,用SqlParameter封装起来，放进集合
            List<SqlParameter> sqlParameters = new List<SqlParameter>();
            
            if (newModel.Title !=string.Empty)
            {
                updateFild += "title=@title ,";
                //封装SqlParameter的最简单的方法
                SqlParameter Parameter = new SqlParameter("@title", SqlDbType.NVarChar);
                Parameter.Value = newModel.Title;
                //添加进我们的集合
                sqlParameters.Add(Parameter);
            }
            if (newModel.Content != string.Empty)
            {
                updateFild += "content=@content ,";
                SqlParameter Parameter = new SqlParameter("@content", SqlDbType.Text);
                Parameter.Value = newModel.Content;
                sqlParameters.Add(Parameter);
            }
            if (newModel.DateTime != string.Empty)
            {
                updateFild += "datetime=@datetime ,";
                SqlParameter Parameter = new SqlParameter("@datetime", SqlDbType.DateTime);
                Parameter.Value = newModel.DateTime;
                sqlParameters.Add(Parameter);
            }
            if (newModel.Type != string.Empty)
            {
                updateFild += "type=@type ,";
                SqlParameter Parameter = new SqlParameter("@type", SqlDbType.Int);
                Parameter.Value = newModel.Type;
                sqlParameters.Add(Parameter);
            }
            //删掉尾部的逗号
            updateFild = updateFild.TrimEnd(',');

            string sql = $"update NewList set {updateFild} where id={newModel.Id}";
            return SqlHelper.ExNon(sql, sqlParameters.ToArray());
        }
        public int InsertNew(NewModel newModel)
        {
            string sql = "insert into NewList (title,content,type,images) values(@title,@content,@type,@images)";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("title",SqlDbType.NVarChar),
                new SqlParameter("content",SqlDbType.Text),
                new SqlParameter("type",SqlDbType.Int),
                //new SqlParameter("datetime",SqlDbType.DateTime),
                new SqlParameter("images",SqlDbType.NVarChar)
            };
            sqlParameters[0].Value = newModel.Title;
            sqlParameters[1].Value = newModel.Content;
            sqlParameters[2].Value = newModel.Type;
            //sqlParameters[3].Value = newModel.DateTime;
            sqlParameters[3].Value = newModel.Images;

            return SqlHelper.ExNon(sql,sqlParameters);
        }
        public DataTable SelectNewById(string id)
        {
            string sql = $"select title,type,content from NewList where id={id}";
            return SqlHelper.GetDataTable(sql);
        }
        public int DeleteNew(int id)
        {
            string sql = $"delete NewList where id={id}";
            return SqlHelper.ExNonQuery(sql);
        }
        public int InsertProduct(NewModel newModel)
        {
            string sql = "insert into Product (name,content,type,image) values(@name,@content,@type,@image)";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("name",SqlDbType.NVarChar),
                new SqlParameter("content",SqlDbType.Text),
                new SqlParameter("type",SqlDbType.Int),
                //new SqlParameter("datetime",SqlDbType.DateTime),
                new SqlParameter("image",SqlDbType.NVarChar)
            };
            sqlParameters[0].Value = newModel.ProName;
            sqlParameters[1].Value = newModel.ProContent;
            sqlParameters[2].Value = newModel.ProType;
            //sqlParameters[3].Value = newModel.DateTime;
            sqlParameters[3].Value = newModel.ProImage;

            return SqlHelper.ExNon(sql, sqlParameters);
        }
        public int DeleteProduct(int id)
        {
            string sql = $"delete Product where id={id}";
            return SqlHelper.ExNonQuery(sql);
        }
        public DataTable SelectProduct(string type = "-1", string name= "")
        {
            string sql = $"select * from Product where 1=1";
            if (type != "-1")
            {
                sql += $"and type={type}";
            }
            if (name != string.Empty)
            {
                sql += $"and name like '%{name}%'";
            }
            //string sql = "select name,content,type,image from Product";
            return SqlHelper.GetDataTable(sql);
        }
        public int UpdateProduct(NewModel newModel)
        {
            string updateFild = string.Empty;
            //SqlParameter集合,把所有要更新的字段,用SqlParameter封装起来，放进集合
            List<SqlParameter> sqlParameters = new List<SqlParameter>();

            if (newModel.ProName != string.Empty)
            {
                updateFild += "name=@name ,";
                //封装SqlParameter的最简单的方法
                SqlParameter Parameter = new SqlParameter("@name", SqlDbType.NVarChar);
                Parameter.Value = newModel.ProName;
                //添加进我们的集合
                sqlParameters.Add(Parameter);
            }
            if (newModel.ProContent != string.Empty)
            {
                updateFild += "content=@content ,";
                SqlParameter Parameter = new SqlParameter("@content", SqlDbType.Text);
                Parameter.Value = newModel.ProContent;
                sqlParameters.Add(Parameter);
            }
            
            if (newModel.ProType != string.Empty)
            {
                updateFild += "type=@type ,";
                SqlParameter Parameter = new SqlParameter("@type", SqlDbType.Int);
                Parameter.Value = newModel.ProType;
                sqlParameters.Add(Parameter);
            }
            //删掉尾部的逗号
            updateFild = updateFild.TrimEnd(',');

            string sql = $"update Product set {updateFild} where id={newModel.ProID}";
            return SqlHelper.ExNon(sql, sqlParameters.ToArray());
        }
    }
}
