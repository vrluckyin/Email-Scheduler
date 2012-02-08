using EmailScheduler.Client.Api;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace EmailScheduler.Test
{
    [TestClass()]
    public class EmailRequestTest
    {
        private TestContext testContextInstance;
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }
        [TestMethod()]
        public void CreateDailyTest()
        {

            EmailScheduler.Client.Api.EmailRequest client = new EmailScheduler.Client.Api.EmailRequest(); // TODO: Initialize to an appropriate value
            client.Delete();

            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            client.CreateDaily(toList, subject, body, attachementList);
            int recordsAdded = client.Count();

            EmailScheduler.Service.Api.EmailRequest service = new EmailScheduler.Service.Api.DailyBusiness();
            service.Read();
            int recordsExist = service.Count();

            Assert.AreEqual(recordsAdded, recordsExist);
        }
        [TestMethod()]
        public void ServiceTest()
        {

            EmailScheduler.Client.Api.EmailRequest client = new EmailScheduler.Client.Api.EmailRequest(); // TODO: Initialize to an appropriate value
            client.Delete();

            List<string> toList = new List<string>();
            toList.Add("vipul@prakashinfotech.com");
            string subject = "[Test]: Email Scheduler 1";
            string body = string.Empty; 
            List<string> attachementList = null;
            client.CreateDaily(toList, subject, body, attachementList);

            toList = new List<string>();
            toList.Add("vipul@prakashinfotech.com");
            subject = "[Test]: Email Scheduler 2";
            body = string.Empty;
            attachementList = new List<string>();
            attachementList.Add(@"C:\EmailTest.csv");
            client.CreateDaily(toList, subject, body, attachementList);

            int recordsAdded = client.Count();

            EmailScheduler.Service.Api.ServiceBusiness.SelfStart();

           // Assert.AreEqual(client.Count(), 0);
        }
    }
}
