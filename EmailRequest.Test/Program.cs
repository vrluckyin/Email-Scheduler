using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using EmailRequest.Business.Service;

namespace EmailRequest.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceBusiness.SelfStart();
            Console.ReadKey();
            //try
            //{
            //    MailMessage mail = new MailMessage();
            //    mail.To.Add("vipul@prakashinfotech.com|jinal@prakashinfotech.com".Replace('|', ','));
            //    mail.IsBodyHtml = true;
            //    mail.Subject = "Test Email";
            //    mail.Body = "<html><body><b>test</b><u>test1</u></body></html>";
            //    foreach (string file in "C:\\1.txt|C:\\2.txt".Split('|'))
            //    {
            //        mail.Attachments.Add(new Attachment(file));
            //    }
            //    SmtpClient emailClient = new SmtpClient();
            //    emailClient.Send(mail);
            //}
            //catch
            //{
            //    throw;
            //}
        }
    }
}
