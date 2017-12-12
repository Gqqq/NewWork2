using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
   public class AdminBLL
    {
       public AdminDAL news = new AdminDAL();
        public DataTable SelectNews(string type, string title)
        {
            return news.SelectNews(type, title);
        }
        public int UpdateNew(NewModel newModel)
        {
            return news.UpdateNew(newModel);
        }
        public int PostNew(NewModel newModel)
        {
            return news.InsertNew(newModel);
        }
        public DataTable FindNewById(string id)
        {
            return news.SelectNewById(id);
        }
        public int DeleteNew(int id)
        {
            return news.DeleteNew(id);
        }
        public int PostProduct(NewModel newModel)
        {
            return news.InsertProduct(newModel);
        }
        public int DeleteProduct(int id)
        {
            string sql = $"delete Product where id={id}";
            return news.DeleteProduct(id);
        }
        public DataTable SelectProduct(string type, string name)
        {
            return news.SelectProduct(type,name);
        }
        public int UpdateProduct(NewModel newModel)
        {
            return news.UpdateProduct(newModel);
        }
    }
}
