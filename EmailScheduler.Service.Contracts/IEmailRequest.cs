using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;
using EmailScheduler.Object.Contracts;
using System.Data.SqlClient;

namespace EmailScheduler.Service.Contracts
{
    public interface IEmailRequest
    {
        int Error(Guid id, string message);
        int Success(Guid id);
        List<IEmailRequestResult> Read(EmailScheduleType requestType, List<SqlParameter> parameters);
        int Count();
    }
}
