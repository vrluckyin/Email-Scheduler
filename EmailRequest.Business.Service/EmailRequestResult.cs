using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailRequest.Business.Service
{
    public class EmailRequestResult 
    {
        public Guid Id { get; set; }
        public string ToList { get; set; }
        public string EmailSubject { get; set; }
        public string EmailBody { get; set; }
        public string AttachmentList { get; set; }
        public int EmailStatus { get; set; }
        public int ScheduleUnitId { get; set; }
        public string ScheduleOn { get; set; }
    }
}
