using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Object.Contracts
{
    public interface IEventParameter
    {
        string BeforeSend { get; set; }
        string AfterSend { get; set; }
        string OnError { get; set; }
        string OnComplete { get; set; }
        string OnTrialComplete { get; set; }
    }
}
