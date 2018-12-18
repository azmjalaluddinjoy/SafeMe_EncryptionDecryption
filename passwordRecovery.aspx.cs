using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class passwordRecovery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sendMail_Click(object sender, EventArgs e)
    {
        string emailBody = "Password is: 123";
        string sendEmail = ConfigurationManager.AppSettings["SendEmail"];

        MailMessage mailMessage = new MailMessage("joy.amarbangla@gmail.com", "joy.amarbangla@gmail.com");
        mailMessage.Subject = "Forgot Password Recovery";
        mailMessage.Body = emailBody;

        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "joy.amarbangla@gmail.com",
            Password = "joy123joy"
        };
        smtpClient.EnableSsl = true;
        smtpClient.Send(mailMessage);
}
}