using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Client.Contracts;
using System.Data.SqlClient;
using System.Configuration;
using EmailScheduler.Common;
using System.Runtime.CompilerServices;

namespace EmailScheduler.Client.Implementation
{
    internal class EmailRequestSql : IEmailRequest
    {
        private SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.ConnectionStringName].ConnectionString);
        }
        public Guid Create(ICreateParameter parameter, EmailScheduleType scheduleType)
        {
            int ScheduleUnitId = (int)scheduleType;
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Create", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ToList", parameter.ToList);
                cmd.Parameters.AddWithValue("@EmailSubject", parameter.Subject);
                cmd.Parameters.AddWithValue("@EmailBody", parameter.Body);
                cmd.Parameters.AddWithValue("@ScheduleUnitId", ScheduleUnitId);
                cmd.Parameters.AddWithValue("@ScheduleOn", parameter.ScheduleOn);
                cmd.Parameters.AddWithValue("@RepeatCount", parameter.RepeatCount);
                cmd.Parameters.AddWithValue("@AttachmentList", parameter.AttachementList);
                cmd.Parameters.AddWithValue("@BeforeSend", parameter.BeforeSend);
                cmd.Parameters.AddWithValue("@AfterSend", parameter.AfterSend);
                cmd.Parameters.AddWithValue("@OnError", parameter.OnError);
                cmd.Parameters.AddWithValue("@OnComplete", parameter.OnComplete);
                cmd.Parameters.AddWithValue("@OnTrialComplete", parameter.OnTrialComplete);
                SqlParameter outputParameter = new SqlParameter();
                outputParameter.SqlDbType = System.Data.SqlDbType.VarChar;
                outputParameter.ParameterName = "@EmailRequestId";
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                int result = cmd.ExecuteNonQuery();
                Guid emailRequestId = Guid.Parse(Convert.ToString(cmd.Parameters["@EmailRequestId"].Value));
                return emailRequestId;
            }
        }
        public void Complete(Guid id)
        {
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Complete", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                int result = cmd.ExecuteNonQuery();
            }
        }
    }
}
