using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;
using EmailScheduler.Object.Implementation;
using System.IO;
using System.Reflection;

namespace EmailScheduler.MemoryRepository
{
    public class Repostory : EmailScheduler.Client.Contracts.IEmailRequest, EmailScheduler.Service.Contracts.IEmailRequest
    {
        static List<RepostoryItem> Items = new List<RepostoryItem>();

        Guid Client.Contracts.IEmailRequest.Create(EmailScheduler.Object.Contracts.IEmailRequestResult emailRequest, EmailScheduler.Object.Contracts.IEventParameter events, EmailScheduleType scheduleType)
        {
            RepostoryItem item = new RepostoryItem();
            item.Id = Guid.NewGuid();
            item.ToList = emailRequest.ToList;
            item.Subject = emailRequest.Subject;
            item.Body = emailRequest.Body;
            item.AttachmentList = emailRequest.AttachmentList;
            item.RepeatCount = emailRequest.RepeatCount;
            item.ScheduleOn = emailRequest.ScheduleOn;
            item.ScheduleType = scheduleType;
            item.ScheduleStatus = EmailScheduleStatus.New;
            item.BeforeSend = events.BeforeSend;
            item.AfterSend = events.AfterSend;
            item.OnError = events.OnError;
            item.OnTrialComplete = events.OnTrialComplete;
            item.OnComplete = events.OnComplete;
            Items.Add(item);
            return item.Id;
        }

        void Client.Contracts.IEmailRequest.Complete(Guid id)
        {
            List<RepostoryItem> rows = (from i in Items
                                        where i.Id == id
                                        select i).ToList<RepostoryItem>();

            if (rows != null && rows.Count > 0)
            {
                rows[0].ScheduleStatus = EmailScheduleStatus.None;
            }
        }

        int Service.Contracts.IEmailRequest.Error(Guid id, string message)
        {
            List<RepostoryItem> rows = (from i in Items
                                        where i.Id == id
                                        select i).ToList<RepostoryItem>();

            if (rows != null && rows.Count > 0)
            {
                rows[0].ScheduleStatus = EmailScheduleStatus.Error;
            }
            return 1;
        }

        int Service.Contracts.IEmailRequest.Success(Guid id)
        {
            List<RepostoryItem> rows = (from i in Items
                                        where i.Id == id
                                        select i).ToList<RepostoryItem>();

            if (rows != null && rows.Count > 0)
            {
                rows[0].RepeatCount--;
                rows[0].ScheduleStatus = rows[0].RepeatCount == 0 ? EmailScheduleStatus.None : EmailScheduleStatus.New;
                Backup();
            }
            return 1;
        }
        private void Backup()
        {
            List<RepostoryItem> fItems = Items.Where(i => i.ScheduleStatus == EmailScheduleStatus.None).ToList<RepostoryItem>();
            if (fItems!=null && fItems.Count>0)
            {
                StringBuilder sb = new StringBuilder();
                foreach (RepostoryItem i in fItems)
                {
                    sb.AppendLine(i.ToString());
                    sb.AppendLine("------------------------------------------------------------------------");
                    fItems.Remove(i);
                }
                string basePath = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location),"Backup");
                if (!Directory.Exists(basePath))
                {
                    Directory.CreateDirectory(basePath);
                }
                string fileName = Path.Combine(basePath, DateTime.Now.ToString("yyyy-MM-dd.hh.mm") + ".txt");
                File.AppendAllText(fileName, sb.ToString());
            }
        }
        List<Object.Contracts.IEmailRequestResult> Service.Contracts.IEmailRequest.Read(EmailScheduleType requestType, List<System.Data.SqlClient.SqlParameter> parameters)
        {
            switch (requestType)
            {
                case EmailScheduleType.Hourly:
                    return Read_Hourly();
                case EmailScheduleType.Daily:
                    return Read_Daily();
                case EmailScheduleType.Weekly:
                    return Read_Weekly();
                case EmailScheduleType.Monthly:
                    return Read_Monthly();
                case EmailScheduleType.Quarterly:
                    return Read_Quarterly();
                case EmailScheduleType.Yearly:
                    return Read_Yearly();
            }
            return new List<Object.Contracts.IEmailRequestResult>();
        }
        List<Object.Contracts.IEmailRequestResult> Read(EmailScheduleType type)
        {
            List<RepostoryItem> rows = (from i in Items
                                        where i.ScheduleType == type && (i.ScheduleStatus == EmailScheduleStatus.New || i.ScheduleStatus == EmailScheduleStatus.Error)
                                        select i).ToList<RepostoryItem>();

            List<Object.Contracts.IEmailRequestResult> items = new List<Object.Contracts.IEmailRequestResult>();
            foreach (RepostoryItem row in rows)
            {
                Object.Contracts.IEmailRequestResult item = new EmailRequestResult();
                item.Id = row.Id;
                item.ToList = row.ToList;
                item.Subject = row.Subject;
                item.Body = row.Body;
                item.AttachmentList = row.AttachmentList;
                item.RepeatCount = row.RepeatCount;
                item.ScheduleOn = row.ScheduleOn;
                item.ScheduleStatus = (int)row.ScheduleStatus;
                items.Add(item);
            }
            return items;
        }
        List<Object.Contracts.IEmailRequestResult> Read_Hourly()
        {
            return Read(EmailScheduleType.Hourly);
        }

        List<Object.Contracts.IEmailRequestResult> Read_Daily()
        {
            return Read(EmailScheduleType.Daily);
        }

        List<Object.Contracts.IEmailRequestResult> Read_Weekly()
        {
            return Read(EmailScheduleType.Weekly);
        }

        List<Object.Contracts.IEmailRequestResult> Read_Monthly()
        {
            return Read(EmailScheduleType.Monthly);
        }

        List<Object.Contracts.IEmailRequestResult> Read_Quarterly()
        {
            return Read(EmailScheduleType.Quarterly);
        }

        List<Object.Contracts.IEmailRequestResult> Read_Yearly()
        {
            return Read(EmailScheduleType.Yearly);
        }

        public int Count()
        {
            return Items.Where(i => i.ScheduleStatus != EmailScheduleStatus.New).Count();
        }
        public void Delete()
        {
            Items.Clear();
        }
    }
}
