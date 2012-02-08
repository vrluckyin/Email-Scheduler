using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
namespace EmailRequest.Business.Client
{
    class EmailRequestEntities
    {
        private SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["EmailRequests"].ConnectionString);
        }
        /// <summary>
        /// Completes the requests. In short, removes the entry from the email request table
        /// </summary>
        /// <param name="id">Guid of the email request id</param>
        public int EmailRequest_Complete(Guid? id)
        {
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Complete", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);
                int result = cmd.ExecuteNonQuery();
                return result;
            }
        }

        /// <summary>
        /// Creates an email request
        /// </summary>
        /// <param name="toList">to list</param>
        /// <param name="emailSubject">Email Subject</param>
        /// <param name="emailBody">Email Content</param>
        /// <param name="requestedBy">Who creates the request</param>
        /// <param name="scheduleUnitId">Schedule Unit Id. 1= Hourly, 2= Daily and so on</param>
        /// <param name="scheduleOn">When to send email for daily 15 = email will be sent on 3 pm</param>
        /// <param name="repeatCount">how many times email will be sent</param>
        /// <param name="attachmentList">attachment list of the files</param>
        public Guid EmailRequest_Create(global::System.String toList, global::System.String emailSubject, global::System.String emailBody, Nullable<global::System.Int32> scheduleUnitId, global::System.String scheduleOn, Nullable<global::System.Int32> repeatCount, global::System.String attachmentList, string beforeSend, string afterSend, string onError, string onComplete, string onTrialComplete)
        {
            using (SqlConnection cn = GetConnection())
            {
                SqlCommand cmd = new SqlCommand("EmailRequest_Create", cn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ToList", toList);
                cmd.Parameters.AddWithValue("@EmailSubject", emailSubject);
                cmd.Parameters.AddWithValue("@EmailBody", emailBody);
                cmd.Parameters.AddWithValue("@ScheduleUnitId", scheduleUnitId);
                cmd.Parameters.AddWithValue("@ScheduleOn", scheduleOn);
                cmd.Parameters.AddWithValue("@RepeatCount", repeatCount);
                cmd.Parameters.AddWithValue("@AttachmentList", attachmentList);
                cmd.Parameters.AddWithValue("@BeforeSend", beforeSend);
                cmd.Parameters.AddWithValue("@AfterSend", afterSend);
                cmd.Parameters.AddWithValue("@OnError", onError);
                cmd.Parameters.AddWithValue("@OnComplete", onComplete);
                cmd.Parameters.AddWithValue("@OnTrialComplete", onTrialComplete);
                SqlParameter outputParameter = new SqlParameter();
                outputParameter.SqlDbType = System.Data.SqlDbType.VarChar;
                outputParameter.ParameterName = "@EmailRequestId";
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                int result = cmd.ExecuteNonQuery();
                Guid emailRequestId = Guid.Parse(Convert.ToString(cmd.Parameters["@EmailRequestId"].Value));
                return emailRequestId;
            }
        }
    }
}
