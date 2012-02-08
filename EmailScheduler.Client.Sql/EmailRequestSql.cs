using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EmailScheduler.Client.Contracts;
using System.Data.SqlClient;
using System.Configuration;
using EmailScheduler.Common;
using System.Runtime.CompilerServices;
using EmailScheduler.Object.Contracts;

namespace EmailScheduler.Client.Sql
{
    internal class EmailRequestSql : IEmailRequest
    {
        private SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings[Constants.ConnectionStringName].ConnectionString);
        }
        public Guid Create(IEmailRequestResult parameter,IEventParameter events ,EmailScheduleType scheduleType)
        {
            int ScheduleUnitId = (int)scheduleType;
            string toList = string.Join(Constants.Pipe, parameter.ToList.ToArray());
            string attachementList = string.Join(Constants.Pipe, parameter.AttachmentList.ToArray());
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Create", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ToList", toList);
                cmd.Parameters.AddWithValue("@EmailSubject", parameter.Subject);
                cmd.Parameters.AddWithValue("@EmailBody", parameter.Body);
                cmd.Parameters.AddWithValue("@ScheduleUnitId", ScheduleUnitId);
                cmd.Parameters.AddWithValue("@ScheduleOn", parameter.ScheduleOn);
                cmd.Parameters.AddWithValue("@RepeatCount", parameter.RepeatCount);
                cmd.Parameters.AddWithValue("@AttachmentList", attachementList);
                cmd.Parameters.AddWithValue("@BeforeSend", events.BeforeSend);
                cmd.Parameters.AddWithValue("@AfterSend", events.AfterSend);
                cmd.Parameters.AddWithValue("@OnError", events.OnError);
                cmd.Parameters.AddWithValue("@OnComplete", events.OnComplete);
                cmd.Parameters.AddWithValue("@OnTrialComplete", events.OnTrialComplete);
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


        public void Delete()
        {
            throw new NotImplementedException();
        }

        public int Count()
        {
            throw new NotImplementedException();
        }
    }
}
