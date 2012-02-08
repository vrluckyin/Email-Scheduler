using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Client.Contracts;
using System.Reflection;
using EmailScheduler.Object.Contracts;
using EmailScheduler.Object.Implementation;
using EmailScheduler.Common;
using System.Configuration;

namespace EmailScheduler.Client.Api
{
    public class EmailRequest
    {
        static IEmailRequest client = null; 
        IEventParameter events = null;
        IEmailRequestResult parameter = null;
        public int RepeatCount
        {
            get { return parameter.RepeatCount; }
            set { parameter.RepeatCount = value; }
        }
        public string ScheduleOn
        {
            get { return parameter.ScheduleOn; }
            set { parameter.ScheduleOn = value; }
        }
        static EmailRequest()
        {
            LoadPlugin();
        }
        private static void LoadPlugin()
        {
            if (client != null) return;
            string assemblyPath = ConfigurationManager.AppSettings["EmailScheduler.Client.AssemblyPath"];
            string assemblyType = ConfigurationManager.AppSettings["EmailScheduler.Client.Type"];
            client = AssemblyLoader.Load(assemblyPath, assemblyType) as IEmailRequest;
        }
        public EmailRequest()
        {
            parameter = new CreateParameter();
            parameter.RepeatCount =1;
            parameter.ScheduleOn = "12:00";
            events = new EventParameter();
        }
        public void RegisterEvents(string beforeSend, string afterSend, string onError, string onComplete, string onTrialComplete)
        {
            events.BeforeSend = beforeSend;
            events.AfterSend = afterSend;
            events.OnError = onError;
            events.OnComplete = onComplete;
            events.OnTrialComplete = onTrialComplete;
        }
        private Guid Create(List<string> toList, string subject, string body, List<string> attachementList, EmailScheduleType type)
        {
            parameter.ToList = toList;
            parameter.Subject = subject;
            parameter.Body = body;
            parameter.AttachmentList = attachementList;
            return client.Create(parameter,events, EmailScheduleType.Daily);
        }
        public Guid CreateHourly(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Hourly);
        }
        public Guid CreateDaily(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Daily);
        }
        public Guid CreateWeekly(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Weekly);
        }
        public Guid CreateMonthly(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Monthly);
        }
        public Guid CreateQuarterly(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Quarterly);
        }
        public Guid CreateYearly(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Yearly);
        }
        public Guid CreateDate(List<string> toList, string subject, string body, List<string> attachementList)
        {
            return Create(toList, subject, body, attachementList, EmailScheduleType.Date);
        }
        public void Complete(Guid id)
        {
            client.Complete(id);
        }
        public void Delete()
        {
            client.Delete();
        }
        public int Count()
        {
            return client.Count();
        }
    }
}
