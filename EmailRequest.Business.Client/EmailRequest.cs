using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailRequest.Business.Client
{
    public class EmailRequest
    {
        private string separator = "|";
        private void Create(List<string> toList, string subject, string body, int scheduleRequestId, int repeatCount, List<string> attachementList, string scheduleOn, string beforeSend, string afterSend, string onError, string onComplete, string onTrialComplete)
        {
            string to = string.Join(separator, toList.ToArray());
            string attachements = attachementList == null ? string.Empty : string.Join(separator, attachementList.ToArray());
            EmailRequestEntities db = new EmailRequestEntities();
            db.EmailRequest_Create(to, subject, body, scheduleRequestId, scheduleOn, repeatCount, attachements, beforeSend, afterSend, onError, onComplete, onTrialComplete);
        }
        #region [Daily Methods]
        public void CreateDaily(List<string> toList, string subject, string body, int repeatCount, List<string> attachementList, string scheduleOn, string beforeSend, string afterSend, string onError, string onComplete, string onTrialComplete)
        {
            this.Create(toList, subject, body, 2, repeatCount, attachementList, scheduleOn, beforeSend, afterSend, onError, onComplete, onTrialComplete);
        }
        #endregion
        public void Complete(Guid? id)
        {
            EmailRequestEntities db = new EmailRequestEntities();
            db.EmailRequest_Complete(id);
        }
    }
}
