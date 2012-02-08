using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Implementation
{
    public abstract class EmailRequestBusiness
    {
        public List<EmailRequestResult> Requests = new List<EmailRequestResult>();
        private System.Threading.Thread thread;

        public abstract string RequestType
        {
            get;
        }
        public bool IsStarted
        {
            get
            {
                //return (ServiceBusiness.GetInstance(RequestType).Requests.Count > 0);
                return thread != null;
            }
        }
        public void Start()
        {
            if (!IsStarted)
            {
                thread = new System.Threading.Thread(InternalStart);
                thread.Start();
            }
        }
        private void InternalStart()
        {
            thread = new System.Threading.Thread(Start);
            //Console.WriteLine("{0} is started", RequestType);
            Read();
            //Console.WriteLine("{0} requests", Requests.Count);
            while (true)
            {
                if (Requests.Count == 0)
                {
                    Stop();
                    break;
                }
                EmailRequestResult request = Requests[0];
                this.SendEmail(request);
                Requests.RemoveAt(0);
            }
        }
        public void Stop()
        {
            if (thread != null)
            {
                thread.Abort();
                thread = null;
                //Console.WriteLine("{0} is stopped", RequestType);
            }
        }
        public abstract void Read();
        public void Error(EmailRequestResult item, Exception ex)
        {
            EmailRequest request = new EmailRequest();
            request.Error(item.Id, ex.Message);
        }
        public void Error(EmailRequestResult item)
        {
            EmailRequest request = new EmailRequest();
            request.Error(item.Id, "");
        }
        public void Success(EmailRequestResult item)
        {
            EmailRequest request = new EmailRequest();
            request.Success(item.Id, item.ScheduleUnitId);
        }
        public void SendEmail(EmailRequestResult item)
        {
            try
            {
                //TODO: Send an email
                Success(item);
            }
            catch
            {
                Error(item);
            }
        }
    }
    public class HourlyBusiness : EmailRequestBusiness
    {
        public override string RequestType
        {
            get
            {
                return "hourly";
            }
        }
        public override void Read()
        {
            if (DateTime.Now.Minute == 0)
            {
                EmailRequest request = new EmailRequest();
                this.Requests = request.Read_Hourly();
            }
        }
    }
    public class DailyBusiness : EmailRequestBusiness
    {
        public override string RequestType
        {
            get
            {
                return "daily";
            }
        }
        public override void Read()
        {
            if (DateTime.Now.Hour == 0 && DateTime.Now.Minute == 0)
            {
                EmailRequest request = new EmailRequest();
                this.Requests = request.Read_Daily();
            }
        }
    }
    public class WeeklyBusiness : EmailRequestBusiness
    {
        public override string RequestType
        {
            get
            {
                return "weekly";
            }
        }
        public override void Read()
        {
            if (DateTime.Now.DayOfWeek == DayOfWeek.Sunday && DateTime.Now.Hour == 0 && DateTime.Now.Minute == 0)
            {
                EmailRequest request = new EmailRequest();
                this.Requests = request.Read_Weekly();
            }

        }
    }
    public class MonthlyBusiness : EmailRequestBusiness
    {
        public override string RequestType
        {
            get
            {
                return "monthly";
            }
        }
        public override void Read()
        {
            if (DateTime.Now.Day == 1 && DateTime.Now.Hour == 0 && DateTime.Now.Minute == 0)
            {
                EmailRequest request = new EmailRequest();
                this.Requests = request.Read_Monthly();
            }
        }
    }
    public class YearlyBusiness : EmailRequestBusiness
    {
        public override string RequestType
        {
            get
            {
                return "yearly";
            }
        }
        public override void Read()
        {
            if (DateTime.Now.Month == 1 && DateTime.Now.Day == 1 && DateTime.Now.Hour == 0 && DateTime.Now.Minute == 0)
            {
                EmailRequest request = new EmailRequest();
                this.Requests = request.Read_Yearly();
            }

        }
    }
    public class DateBusiness : EmailRequestBusiness
    {
        public override string RequestType
        {
            get
            {
                return "date";
            }
        }
        public override void Read()
        {
            EmailRequest request = new EmailRequest();
            this.Requests = request.Read_Date();
        }
    }
}
