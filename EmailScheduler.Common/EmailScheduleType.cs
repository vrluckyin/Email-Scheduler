using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Common
{
    [Flags]
    public enum EmailScheduleType
    {
        None = 0,
        Hourly = 1,
        Daily = 1 << 1,
        Weekly = 1 << 2,
        Monthly = 1 << 3,
        Quarterly = 1 << 4,
        Yearly = 1 << 5,
        Date = 1 << 6
    }
}
