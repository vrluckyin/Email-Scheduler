using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Object.Contracts;
using System.Net.Mail;
using EmailScheduler.Common;
using EmailScheduler.Service.Contracts;
using System.Configuration;

namespace EmailScheduler.Service.Api
{
    public class EmailRequest
    {
        public List<IEmailRequestResult> Requests = new List<IEmailRequestResult>();
        private System.Threading.Thread thread;
        protected static IEmailRequest client = null;
        static EmailRequest()
        {
            LoadPlugin();
        }
        private static void LoadPlugin()
        {
            if (client != null) return;
            string assemblyPath = ConfigurationManager.AppSettings["EmailScheduler.Service.AssemblyPath"];
            string assemblyType = ConfigurationManager.AppSettings["EmailScheduler.Service.Type"];
            client = AssemblyLoader.Load(assemblyPath, assemblyType) as IEmailRequest;
        }
        public virtual EmailScheduleType RequestType
        {
            get { return EmailScheduleType.Hourly; }
        }
        public bool IsStarted
        {
            get
            {
                //return (ServiceBusiness.GetInstance(RequestType).Requests.Count > 0);
                return thread != null;
            }
        }
        public void Start()
        {
            if (!IsStarted)
            {
                thread = new System.Threading.Thread(InternalStart);
                thread.Start();
            }
        }
        private void InternalStart()
        {
            thread = new System.Threading.Thread(Start);
            Read();
            while (true)
            {
                if (Requests.Count == 0)
                {
                    Stop();
                    break;
                }
                IEmailRequestResult request = Requests[0];
                this.SendEmail(request);
                Requests.RemoveAt(0);
            }
        }
        public void Stop()
        {
            if (thread != null)
            {
                thread.Abort();
                thread = null;
                //Console.WriteLine("{0} is stopped", RequestType);
            }
        }
        public virtual void Read()
        { 
        
        }
        public int Count()
        {
            return client.Count();
        }
        public void Error(IEmailRequestResult item, Exception ex)
        {
            client.Error(item.Id, ex.Message);
        }
        public void Error(IEmailRequestResult item)
        {
            client.Error(item.Id, "");
        }
        public void Success(IEmailRequestResult item)
        {
            client.Success(item.Id);
        }
        public void SendEmail(IEmailRequestResult item)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(string.Join(Constants.Comma,item.ToList));
                mail.IsBodyHtml = true;
                mail.Subject = item.Subject;
                mail.Body = item.Body;
                if (item.AttachmentList != null)
                {
                    foreach (string file in item.AttachmentList)
                    {
                        if (file.Trim().Length > 0) mail.Attachments.Add(new Attachment(file));
                    }
                }
                SmtpClient emailClient = new SmtpClient();
                emailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                emailClient.Send(mail);

                Success(item);
            }
            catch
            {
                Error(item);
            }
        }
    }
}
