using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data;

namespace BLL
{
    
    public class NewsBLL
    {
        NewsDAL news = new NewsDAL();
        /// <summary>
        /// 新闻列表
        /// </summary>
        /// <returns></returns>
        public DataTable GetIndexNews(int i,int startRecordIndex)
        {
            return news.GetIndexNews(i, startRecordIndex);
        }
        public DataTable GetIndexNewsType(int i)
        {
            return news.GetIndexNewsType(i);
        }
        /// <summary>
        /// 新闻详细
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetIndexShowNews(string id)
        {
            return news.GetIndexShowNews(id);
        }
        /// <summary>
        /// 产品列表
        /// </summary>
        /// <returns></returns>
        public DataTable GetIndexImage()
        {
            return news.GetIndexImage();
        }
        //public DataTable GetIndexProducts()
        //{
        //    return news.GetIndexProducts();
        //}
        /// <summary>
        /// 产品详细
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetIndexShowProducts(string id)
        {
            return news.GetIndexShowProducts(id);
        }
        /// <summary>
        /// 人员招聘
        /// </summary>
        /// <returns></returns>
        public DataTable GetIndexJob()
        {
            return news.GetIndexJob();
        }
        /// <summary>
        /// 招聘详细
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable GetIndexShowJob(string id)
        {
            return news.GetIndexShowJob(id);
        }
        /// <summary>
        /// 根据type绑定图片列表
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public DataTable GetIndexNewProduct(int type)
        {
            return news.GetIndexNewProduct(type);
        }
        public double recordCount()
        {
            return news.recordCount();
        }
        public int InsertMess(NewModel newModel)
        {
            return news.InsertMess(newModel);
        }
        public DataTable ShowMess()
        {
            return news.SelectMess();
        }
        public int DeleteMess(int id)
        {
            return news.DeleteMess(id);
        }
    }
}
