using System.Web;

namespace www.intelligentpeople.ch
{
    public partial class MyIp : System.Web.UI.Page
    {
        internal protected static string GetIpAddress()
        {
            HttpContext context = HttpContext.Current; 
            string result = context.Request.ServerVariables["REMOTE_ADDR"];

            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    result = addresses[0];
                }
            }

            return result;
        }
    }
}