using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;

namespace EmailScheduler.Service.Api
{
    class QuarterlyBusiness : EmailRequest
    {
        public override EmailScheduleType RequestType
        {
            get
            {
                return EmailScheduleType.Quarterly;
            }
        }
        public override void Read()
        {
            this.Requests = client.Read(this.RequestType, null);
        }
    }
}
