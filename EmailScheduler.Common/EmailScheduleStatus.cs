using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Common
{
    [Flags]
    public enum EmailScheduleStatus
    {
        None = 0,
        DoNotSend = 1,
        FailedAfterTrials = 1 << 1,
        Error = 1 << 2,
        New = 1 << 3,
        InProcess = 1 << 4,
        Success= 1 << 5
    }
}
