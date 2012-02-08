using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Runtime.CompilerServices;

using EmailScheduler.Common;
using EmailScheduler.Service.Contracts;
using EmailScheduler.Object.Contracts;
using EmailScheduler.Object.Implementation;

namespace EmailScheduler.Service.Sql
{
    internal class EmailRequestSql : IEmailRequest
    {
        private static Dictionary<EmailScheduleType, string> StoredProcedures = new Dictionary<EmailScheduleType, string>();
        static EmailRequestSql()
        {
            StoredProcedures.Add(EmailScheduleType.Hourly, "EmailRequest_Read_Hourly");
            StoredProcedures.Add(EmailScheduleType.Daily, "EmailRequest_Read_Daily");
            StoredProcedures.Add(EmailScheduleType.Weekly, "EmailRequest_Read_Weekly");
            StoredProcedures.Add(EmailScheduleType.Monthly, "EmailRequest_Read_Monthly");
            StoredProcedures.Add(EmailScheduleType.Quarterly, "EmailRequest_Read_Quarterly");
            StoredProcedures.Add(EmailScheduleType.Yearly, "EmailRequest_Read_Yearly");
        }
        private SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.ConnectionStringName].ConnectionString);
        }
        public int Error(Guid id, string message)
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
        public int Success(Guid id)
        {
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Success", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                int result = cmd.ExecuteNonQuery();
                return result;
            }
        }
        public List<IEmailRequestResult> Read(EmailScheduleType requestType, List<SqlParameter> parameters)
        {
            string storedProcName = StoredProcedures[requestType];
            List<IEmailRequestResult> items = new List<IEmailRequestResult>();
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand(storedProcName, cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                foreach (SqlParameter p in parameters)
                {
                    cmd.Parameters.Add(p);
                }
                using (SqlDataReader dr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection))
                {
                    while (dr.Read())
                    {
                        IEmailRequestResult item = new EmailRequestResult();
                        object cValue = dr["Id"];
                        item.Id = cValue != null ? Guid.Parse(Convert.ToString(cValue)) : Guid.NewGuid();
                        cValue = dr["ToList"];
                        item.ToList = cValue != null ? Convert.ToString(cValue).Split(Constants.Pipe[0]).ToList<string>() : new List<string>();
                        cValue = dr["EmailSubject"];
                        item.Subject = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["EmailBody"];
                        item.Body = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["AttachmentList"];
                        item.AttachmentList = cValue != null ? Convert.ToString(cValue).Split(Constants.Pipe[0]).ToList<string>() : new List<string>();
                        cValue = dr["ScheduleOn"];
                        item.ScheduleOn = cValue != null ? Convert.ToString(cValue) : string.Empty;
                        cValue = dr["EmailStatus"];
                        item.ScheduleStatus = cValue != null ? Convert.ToInt32(cValue) : -100;
                        items.Add(item);
                    }
                }
                return items;
            }
        }
        public int Count()
        {
            throw new NotImplementedException();
        }
    }
}
