using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Common;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
   public class AdminUserDAL
    {/*select count(*) from AdminUser where UserName='{username}'and PassWord='{password}'*/
        public DataTable GetUserCount(string username, string password)
        {
            string sql = $"select * from AdminUser where UserName='{username}' and PassWord='{password}'";
            return SqlHelper.GetDataTable(sql);
        }
        public int AddAdmin(NewModel newModel)
        {
            string sql = "insert into AdminUser (UserName,PassWord,Level) values(@UserName,@PassWord,@Level)";
            SqlParameter[] sqlParameters =
            {
                new SqlParameter("UserName",SqlDbType.Text),
                new SqlParameter("PassWord",SqlDbType.Text),
                new SqlParameter("Level",SqlDbType.Text)
            };
            sqlParameters[0].Value = newModel.UserName;
            sqlParameters[1].Value = newModel.PassWord;
            sqlParameters[2].Value = newModel.Level;
            return SqlHelper.ExNon(sql, sqlParameters);
        }
        public DataTable SelectAdmin()
        {
            string sql = $"select * from AdminUser";
            return SqlHelper.GetDataTable(sql);
        }
        public int UpdateAdmin(NewModel newModel)
        {
            string updateFild = string.Empty;
            //SqlParameter集合,把所有要更新的字段,用SqlParameter封装起来，放进集合
            List<SqlParameter> sqlParameters = new List<SqlParameter>();

            if (newModel.UserName != string.Empty)
            {
                updateFild += "UserName=@UserName ,";
                //封装SqlParameter的最简单的方法
                SqlParameter Parameter = new SqlParameter("@UserName", SqlDbType.Text);
                Parameter.Value = newModel.UserName;
                //添加进我们的集合
                sqlParameters.Add(Parameter);
            }
            if (newModel.PassWord != string.Empty)
            {
                updateFild += "PassWord=@PassWord ,";
                SqlParameter Parameter = new SqlParameter("@PassWord", SqlDbType.Text);
                Parameter.Value = newModel.PassWord;
                sqlParameters.Add(Parameter);
            }
            updateFild = updateFild.TrimEnd(',');

            string sql = $"update AdminUser set {updateFild} where id={newModel.ID}";
            return SqlHelper.ExNon(sql, sqlParameters.ToArray());
        }
        public int UpdatePass(string newpass,string name)
        {
            string sql = $"update AdminUser set PassWord='{newpass}' where UserName='{name}'";
            return SqlHelper.ExNonQuery(sql);
        }
        public int DelAdmin(string id)
        {
            string sql = $"delete AdminUser where id={id}";
            return SqlHelper.ExNonQuery(sql);
        }
        public DataTable SelectAdmin(string level = "-1", string name = "")
        {
            string sql = $"select * from AdminUser where 1=1";
            if (level != "-1")
            {
                sql += $"and Level={level}";
            }
            if (name != string.Empty)
            {
                sql += $"and UserName like '%{name}%'";
            }
            return SqlHelper.GetDataTable(sql);
        }
        public DataTable SelectLevel(string id)
        {
            string sql = $"select * from AdminUser where id='{id}'";
            return SqlHelper.GetDataTable(id);
        }
    }
}
