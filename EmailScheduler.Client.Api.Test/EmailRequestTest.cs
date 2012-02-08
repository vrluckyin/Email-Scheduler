using EmailScheduler.Client.Api;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace EmailScheduler.Client.Api.Test
{
    
    
    /// <summary>
    ///This is a test class for EmailRequestTest and is intended
    ///to contain all EmailRequestTest Unit Tests
    ///</summary>
    [TestClass()]
    public class EmailRequestTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
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

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for Complete
        ///</summary>
        [TestMethod()]
        public void CompleteTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            Guid id = new Guid(); // TODO: Initialize to an appropriate value
            target.Complete(id);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }

        /// <summary>
        ///A test for CreateDaily
        ///</summary>
        [TestMethod()]
        public void CreateDailyTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateDaily(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for CreateDate
        ///</summary>
        [TestMethod()]
        public void CreateDateTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateDate(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for CreateHourly
        ///</summary>
        [TestMethod()]
        public void CreateHourlyTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateHourly(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for CreateMonthly
        ///</summary>
        [TestMethod()]
        public void CreateMonthlyTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateMonthly(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for CreateQuarterly
        ///</summary>
        [TestMethod()]
        public void CreateQuarterlyTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateQuarterly(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for CreateWeekly
        ///</summary>
        [TestMethod()]
        public void CreateWeeklyTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateWeekly(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for CreateYearly
        ///</summary>
        [TestMethod()]
        public void CreateYearlyTest()
        {
            EmailRequest target = new EmailRequest(); // TODO: Initialize to an appropriate value
            List<string> toList = null; // TODO: Initialize to an appropriate value
            string subject = string.Empty; // TODO: Initialize to an appropriate value
            string body = string.Empty; // TODO: Initialize to an appropriate value
            List<string> attachementList = null; // TODO: Initialize to an appropriate value
            Guid expected = new Guid(); // TODO: Initialize to an appropriate value
            Guid actual;
            actual = target.CreateYearly(toList, subject, body, attachementList);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("Verify the correctness of this test method.");
        }
    }
}
