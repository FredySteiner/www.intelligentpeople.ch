using System;
using System.IO;
using System.Linq.Expressions;
using System.Net;
using System.Net.Mail;

namespace www.intelligentpeople.ch
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cmdReset.Attributes.Add("onClick", "document.forms[0].reset();return false;");
        }

        private void SendMail()
        {
            var client = new SmtpClient("mx.intelligentpeople.ch")
            {
                Credentials = new NetworkCredential("info@intelligentpeople.ch", "5$7mCxQUl8jOGJj!"),
                Port = 587,
                EnableSsl = true
            };

            if (!string.IsNullOrEmpty(txtEmail.Value))
            {
                // Potentially filled by bot
                var ipaddress = MyIp.GetIpAddress();

                try{
                    if (!Global.IpList.Contains(ipaddress))
                    {
                        Global.IpList.Add(ipaddress);
                        File.WriteAllLines(@"c:\Temp\IpList.txt", Global.IpList);
                    }
                }
                catch
                {
                    // ignored
                }

                client.Send(new MailMessage("bot@intelligentpeople.ch", "honeypot@intelligentpeople.ch")
                {
                    Subject = "Contact Form filled by bot",
                    Body =
                        $"Ip Address used: {ipaddress}{Environment.NewLine}" +
                        $"Subject: {txtSubject.Value}{Environment.NewLine}" +
                        $"Email: {txtEmail.Value}{Environment.NewLine}" +
                        $"Message: {txtMessage.Value}"
                });
            }
            else
            {
                // Hopefully human
                client.Send(new MailMessage("contact@intelligentpeople.ch", "contactform@intelligentpeople.ch")
                {
                    Subject = "Contact Form",
                    ReplyToList = { txtSubject.Value },
                    Body = txtMessage.Value
                });
            }
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
                ResetForm();
            }
            catch
            {
                // ignored
            }
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            ResetForm();
        }

        private void ResetForm()
        {
            txtName.Value = string.Empty;
            txtEmail.Value = string.Empty;
            txtMessage.Value = string.Empty;
            txtSubject.Value = string.Empty;
        }
    }
}