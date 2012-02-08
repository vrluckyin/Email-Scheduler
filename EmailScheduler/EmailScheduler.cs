using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Timers;
using EmailScheduler.Implementation.BL;
using System.Threading;



namespace EmailScheduler
{
    partial class EmailScheduler : ServiceBase
    {
        ServiceBusiness business = new ServiceBusiness();
        public EmailScheduler()
        {
            InitializeComponent();
        }
        protected override void OnStart(string[] args)
        {
            business.Start(args);
        }
        protected override void OnStop()
        {
            business.Stop();
        }
    }
}
