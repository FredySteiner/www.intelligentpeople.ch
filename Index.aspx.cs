using System;
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

        private void SendMail() => new SmtpClient("mx.intelligentpeople.ch")
        {
            Credentials = new NetworkCredential("info@intelligentpeople.ch", "stonyx123")
        }.Send(new MailMessage()
        {
            From = new MailAddress("contact@intelligentpeople.ch"),
            ReplyToList = { txtEmail.Value },
            To = { "contact@intelligentpeople.ch" },
            Subject = "Contact Form",
            Body = txtMessage.Value
        });

        protected void SendButton_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
            }
            catch (Exception)
            {
                // ignored
            }
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            txtName.Value = string.Empty;
            txtEmail.Value = string.Empty;
            txtMessage.Value = string.Empty;
        }
    }
}