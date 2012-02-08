using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;

namespace EmailScheduler.MemoryRepository
{
    public class RepostoryItem
    {
        public Guid Id { get; set; }
        public List<string> ToList { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public int RepeatCount { get; set; }
        public List<string> AttachmentList { get; set; }
        public EmailScheduleType ScheduleType { get; set; }
        public EmailScheduleStatus ScheduleStatus { get; set; }
        public string ScheduleOn { get; set; }
        public string BeforeSend { get; set; }
        public string AfterSend { get; set; }
        public string OnError { get; set; }
        public string OnComplete { get; set; }
        public string OnTrialComplete { get; set; }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("{0}:{1}\r\n","Guid",this.Id.ToString());
            sb.AppendFormat("{0}:{1}\r\n", "ToList", string.Join(",", ToList));
            sb.AppendFormat("{0}:{1}\r\n", "Subject", this.Subject);
            sb.AppendFormat("{0}:{1}\r\n", "Body", this.Body);
            if (AttachmentList != null)
            {
                sb.AppendFormat("{0}:{1}\r\n", "AttachmentList", string.Join(",", AttachmentList));
            }
            return sb.ToString();
        }
    }
}
