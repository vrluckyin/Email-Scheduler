using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EmailScheduler.Service.Test
{
    class Program
    {
        static void Main(string[] args)
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

            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }
    }
}
