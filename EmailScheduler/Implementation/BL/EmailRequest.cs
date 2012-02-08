using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Implementation
{
    public class EmailRequest
    {
        private string separator = "|";
        public void Error(Nullable<global::System.Guid> id, global::System.String message)
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                db.EmailRequest_Error(id, message);
            }
        }
        public List<string> ToList(string list)
        {
            return list.Split(new char [] {separator[0]}).ToList<string>();
        }
        public void Success(Nullable<global::System.Guid> id, Nullable<global::System.Int32> scheduleUnitId)
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                db.EmailRequest_Success(id, scheduleUnitId);
            }
        }

        public List<EmailRequestResult> Read_Daily()
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                return db.EmailRequest_Read_Daily().ToList<EmailRequestResult>();
            }
        }

        public List<EmailRequestResult> Read_Date()
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                return db.EmailRequest_Read_Date().ToList<EmailRequestResult>();
            }
        }

        public List<EmailRequestResult> Read_Hourly()
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                return db.EmailRequest_Read_Hourly().ToList<EmailRequestResult>();
            }
        }

        public List<EmailRequestResult> Read_Monthly()
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                return db.EmailRequest_Read_Monthly().ToList<EmailRequestResult>();
            }
        }

        public List<EmailRequestResult> Read_Weekly()
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                return db.EmailRequest_Read_Weekly().ToList<EmailRequestResult>();
            }
        }

        public List<EmailRequestResult> Read_Yearly()
        {
            using (EmailRequestEntities db = new EmailRequestEntities())
            {
                return db.EmailRequest_Read_Yearly().ToList<EmailRequestResult>();
            }
        }
    }
}
