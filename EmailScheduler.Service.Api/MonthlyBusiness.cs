using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;

namespace EmailScheduler.Service.Api
{
    class MonthlyBusiness : EmailRequest
    {
        public override EmailScheduleType RequestType
        {
            get
            {
                return EmailScheduleType.Monthly;
            }
        }
        public override void Read()
        {
            this.Requests = client.Read(this.RequestType, null);
        }
    }
}
