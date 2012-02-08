using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Common;

namespace EmailScheduler.Service.Api
{
    class DateBusiness : EmailRequest
    {
        public override EmailScheduleType RequestType
        {
            get
            {
                return EmailScheduleType.Date;
            }
        }
        public override void Read()
        {
            this.Requests = client.Read(this.RequestType, null);
        }
    }
}
