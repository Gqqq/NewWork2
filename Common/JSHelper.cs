using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace Common
{
   public static class JSHelper
    {
        private static string JsStart = "<script>";
        private static string JsEnd = "</script>";

        public static void Alert(string meg)
        {
            string js = $"{JsStart} alert('{meg}');{JsEnd}";
            HttpContext.Current.Response.Write(js);
        }
    }
}
