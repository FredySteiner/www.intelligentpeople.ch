using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace www.intelligentpeople.ch
{
    public class Global : HttpApplication
    {
        public static List<string> IpList;

        void Application_Start(object sender, EventArgs e)
        {
            // Code, der beim Anwendungsstart ausgeführt wird
            try
            {
                IpList = File.Exists(@"c:\Temp\IpList.txt")
                    ? File.ReadAllLines(@"c:\Temp\IpList.txt").Distinct().ToList()
                    : new List<string>();
            }
            catch
            {
                // ignored
            }
        }

        void Application_End(object sender, EventArgs e)
        {
            try
            {
                File.WriteAllLines(@"c:\Temp\IpList.txt", IpList);
            }
            catch
            {
                // ignored
            }
        }
    }
}