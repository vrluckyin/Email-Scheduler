using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace EmailScheduler.Service.Api
{
    public class ServiceBusiness
    {
        public static void SelfStart()
        {
            System.Threading.Thread thread = new System.Threading.Thread(()=>new ServiceBusiness().Start(new string[]{}));
            thread.Start();
        }
        static System.Timers.Timer TimerService;
        private static List<EmailRequest> _EmailRequestTypes = new List<EmailRequest>();
        public void Start(string[] args)
        {
            TimerService = new System.Timers.Timer(10000);
            TimerService.Elapsed += new System.Timers.ElapsedEventHandler(TimerService_Elapsed);
            TimerService.Enabled = true;
            TimerService.Start();

            //_EmailRequestTypes.Add(new HourlyBusiness());
            _EmailRequestTypes.Add(new DailyBusiness());
            //_EmailRequestTypes.Add(new WeeklyBusiness());
            //_EmailRequestTypes.Add(new MonthlyBusiness());
            //_EmailRequestTypes.Add(new YearlyBusiness());
            //_EmailRequestTypes.Add(new DateBusiness());
        }
        public void Stop()
        {
            TimerService.Stop();
            foreach (EmailRequest request in _EmailRequestTypes)
            {
                request.Stop();
            }
        }
        void TimerService_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                foreach (EmailRequest request in _EmailRequestTypes)
                {
                    request.Start();
                }
            }
            catch
            {
                Stop();
                throw;
            }
            finally
            {

            }

        }
    }
    
}
