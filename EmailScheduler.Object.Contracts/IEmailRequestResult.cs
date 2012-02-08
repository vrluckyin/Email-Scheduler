using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Object.Contracts
{
    public interface IEmailRequestResult
    {
        Guid Id { get; set; }
        List<string> ToList { get; set; }
        string Subject { get; set; }
        string Body { get; set; }
        int RepeatCount { get; set; }
        List<string> AttachmentList { get; set; }
        string ScheduleOn { get; set; }
        int ScheduleStatus { get; set; }
    }
}
