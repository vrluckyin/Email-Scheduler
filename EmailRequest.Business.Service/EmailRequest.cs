using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailRequest.Business.Service
{
    public class EmailRequest
    {
        private string separator = "|";
        public void Error(Guid id, String message)
        {
            EmailRequestEntities db = new EmailRequestEntities();
            db.EmailRequest_Error(id, message);
        }
        public List<string> ToList(string list)
        {
            return list.Split(new char[] { separator[0] }).ToList<string>();
        }
        public void Success(Guid id,int scheduleUnitId)
        {
            EmailRequestEntities db = new EmailRequestEntities();
            db.EmailRequest_Success(id, scheduleUnitId);
        }

        public List<EmailRequestResult> Read_Daily()
        {
            EmailRequestEntities db = new EmailRequestEntities();
            return db.EmailRequest_Read_Daily().ToList<EmailRequestResult>();
        }

        public List<EmailRequestResult> Read_Date()
        {
            EmailRequestEntities db = new EmailRequestEntities();
            return db.EmailRequest_Read_Date().ToList<EmailRequestResult>();
        }

        public List<EmailRequestResult> Read_Hourly()
        {
            EmailRequestEntities db = new EmailRequestEntities();
            return db.EmailRequest_Read_Hourly().ToList<EmailRequestResult>();
        }

        public List<EmailRequestResult> Read_Monthly()
        {
            EmailRequestEntities db = new EmailRequestEntities();
            return db.EmailRequest_Read_Monthly().ToList<EmailRequestResult>();
        }

        public List<EmailRequestResult> Read_Weekly()
        {
            EmailRequestEntities db = new EmailRequestEntities();
            return db.EmailRequest_Read_Weekly().ToList<EmailRequestResult>();
        }

        public List<EmailRequestResult> Read_Yearly()
        {
            EmailRequestEntities db = new EmailRequestEntities();
            return db.EmailRequest_Read_Yearly().ToList<EmailRequestResult>();
        }
    }
}
