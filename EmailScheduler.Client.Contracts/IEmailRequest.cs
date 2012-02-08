using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;
using EmailScheduler.Object.Contracts;

namespace EmailScheduler.Client.Contracts
{
    public interface IEmailRequest
    {
        Guid Create(IEmailRequestResult emailRequest,IEventParameter events, EmailScheduleType scheduleType);
        void Complete(Guid id);
        void Delete();
        int Count();
    }
}
