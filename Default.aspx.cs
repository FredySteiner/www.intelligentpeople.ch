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

        private void SendMail()
        {
            var client = new SmtpClient("mx.intelligentpeople.ch")
            {
                Credentials = new NetworkCredential("info@intelligentpeople.ch", "5$7mCxQUl8jOGJj!"),
                Port = 587,
                EnableSsl = true
            };

            client.Send(new MailMessage("contact@intelligentpeople.ch", "contact@intelligentpeople.ch")
            {
                ReplyToList = { txtEmail.Value },
                Subject = "Contact Form",
                Body = txtMessage.Value
            });
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
                ResetForm();
            }
            catch (Exception)
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
        }
    }
}