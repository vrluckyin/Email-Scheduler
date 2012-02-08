using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace EmailRequest.Business.Service
{
    class EmailRequestEntities
    {
        private SqlConnection GetConnection()
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["EmailRequests"].ConnectionString);
            cn.Open();
            return cn;
        }
        public int EmailRequest_Error(Guid id,string message)
        {
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Error", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Message", message);
                int result = cmd.ExecuteNonQuery();
                return result;
            }
        }
        public int EmailRequest_Success(Guid? id, int scheduleUnitId)
        {
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Success", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@ScheduleUnitId", scheduleUnitId);
                int result = cmd.ExecuteNonQuery();
                return result;
            }
        }
        public List<EmailRequestResult> EmailRequest_Read_Daily()
        {
            List<EmailRequestResult> items = new List<EmailRequestResult>();
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Read_Daily", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                using (SqlDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                {
                    while (dr.Read())
                    {
                        EmailRequestResult item = new EmailRequestResult();
                        object cValue = dr["Id"];
                        item.Id = cValue!=null? Guid.Parse(Convert.ToString(cValue)):Guid.NewGuid() ;
                        cValue = dr["ToList"];
                        item.ToList = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["EmailSubject"];
                        item.EmailSubject = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["EmailBody"];
                        item.EmailBody = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["AttachmentList"];
                        item.AttachmentList = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["ScheduleOn"];
                        item.ScheduleOn = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["EmailStatus"];
                        item.EmailStatus = cValue != null ? Convert.ToInt32(cValue) : -100;
                        cValue = dr["ScheduleUnitId"];
                        item.ScheduleUnitId = cValue != null ? Convert.ToInt32(cValue) : -100;
                        items.Add(item);
                    }
                }
                return items;
            }
        }
        #region [ Pending Implementation ]
        public List<EmailRequestResult> EmailRequest_Read_Date()
        {
            List<EmailRequestResult> items = new List<EmailRequestResult>();
            return items;
        }
        public List<EmailRequestResult> EmailRequest_Read_Hourly()
        {
            List<EmailRequestResult> items = new List<EmailRequestResult>();
            return items;
        }
        public List<EmailRequestResult> EmailRequest_Read_Monthly()
        {
            List<EmailRequestResult> items = new List<EmailRequestResult>();
            return items;
        }
        public List<EmailRequestResult> EmailRequest_Read_Weekly()
        {
            List<EmailRequestResult> items = new List<EmailRequestResult>();
            return items;
        }
        public List<EmailRequestResult> EmailRequest_Read_Yearly()
        {
            List<EmailRequestResult> items = new List<EmailRequestResult>();
            return items;
        }
        #endregion
    }
}
