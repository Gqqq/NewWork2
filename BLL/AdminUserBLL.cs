using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
   public class AdminUserBLL
    {
        AdminUserDAL adUser = new AdminUserDAL();
        /// <summary>
        /// 用户登录检测
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public DataTable UserLoginCheck(string username, string password)
        {
            //int count = Convert.ToInt32(adUser.GetUserCount(username,password));
            //if (count == 1) return true;
            //return false;
            return adUser.GetUserCount(username, password);
        }
        public int AddAdmin(NewModel newModel)
        {
            return adUser.AddAdmin(newModel);
        }
        public DataTable SelectAdmin()
        {
            return adUser.SelectAdmin();
        }
        public int UpdateAdmin(NewModel newModel)
        {
            return adUser.UpdateAdmin(newModel);
        }
        public int UpdatePass( string oldpass, string name)
        {
            return adUser.UpdatePass(oldpass,name);
        }
        public int DeleteAdmin(string id)
        {
            return adUser.DelAdmin(id);
        }
        public DataTable SelectAdmin(string level, string name)
        {
            return adUser.SelectAdmin(level, name);
        }
        public DataTable SelectLevel(string id)
        {
            return adUser.SelectLevel(id);
        }
    }
}
