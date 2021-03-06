﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Object.Contracts;
using EmailScheduler.Common;

namespace EmailScheduler.Object.Implementation
{
    public class EmailRequestResult : IEmailRequestResult
    {
        public Guid Id { get; set; }
        public List<string> ToList { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public int RepeatCount { get; set; }
        public List<string> AttachmentList { get; set; }
        public int ScheduleStatus { get; set; }
        public string ScheduleOn { get; set; }
    }
}
