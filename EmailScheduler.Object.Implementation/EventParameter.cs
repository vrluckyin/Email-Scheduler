using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Object.Contracts;

namespace EmailScheduler.Object.Implementation
{
    public class EventParameter : IEventParameter
    {
        public string ScheduleOn { get; set; }
        public string BeforeSend { get; set; }
        public string AfterSend { get; set; }
        public string OnError { get; set; }
        public string OnComplete { get; set; }
        public string OnTrialComplete { get; set; }
    }
}
