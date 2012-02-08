using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace EmailRequest.Business.Service
{
    public class ServiceBusiness
    {
        public static void SelfStart()
        {
            System.Threading.Thread thread = new System.Threading.Thread(()=>new ServiceBusiness().Start(new string[]{}));
            thread.Start();
        }
        public static System.Timers.Timer TimerService;
        private static Dictionary<string, EmailRequestBusiness> _EmailRequestTypes = new Dictionary<string, EmailRequestBusiness>();
        public static EmailRequestBusiness GetInstance(string key)
        {
            return _EmailRequestTypes[key];
        }
        public void Start(string[] args)
        {
            TimerService = new System.Timers.Timer(500);
            TimerService.Elapsed += new System.Timers.ElapsedEventHandler(TimerService_Elapsed);
            TimerService.Enabled = true;
            TimerService.Start();

            _EmailRequestTypes.Add("hourly", new HourlyBusiness());
            _EmailRequestTypes.Add("daily", new DailyBusiness());
            _EmailRequestTypes.Add("weekly", new WeeklyBusiness());
            _EmailRequestTypes.Add("monthly", new MonthlyBusiness());
            _EmailRequestTypes.Add("yearly", new YearlyBusiness());
            _EmailRequestTypes.Add("date", new DateBusiness());
        }
        public void Stop()
        {
            TimerService.Stop();
            foreach (KeyValuePair<string, EmailRequestBusiness> kvp in _EmailRequestTypes)
            {
                kvp.Value.Stop();
            }
        }
        void TimerService_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                foreach (KeyValuePair<string, EmailRequestBusiness> kvp in _EmailRequestTypes)
                {
                    kvp.Value.Start();
                }
            }
            catch
            {

            }
            finally
            {

            }

        }
    }
    
}
