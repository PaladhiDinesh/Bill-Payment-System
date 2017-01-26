using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.IO;


namespace bill_payment
{
    public class ExceptionClass
    {
        public static void LogException(Exception exc)
        {
            string logFile = "~/App_Data/ErrorLogs.txt";
            logFile = HttpContext.Current.Server.MapPath(logFile);
            //open the log file for append and write the log.
            StreamWriter writer = new StreamWriter(logFile, true);
            writer.WriteLine("----{0}----", DateTime.Now);
            if (exc.InnerException != null)
            {
                writer.WriteLine("Inner Exception Type");
                writer.WriteLine(exc.InnerException.GetType().ToString());
                writer.WriteLine("Inner exception");
                writer.WriteLine(exc.InnerException.Message);
            }
            writer.WriteLine("Exception Type");
            writer.WriteLine(exc.GetType().ToString());
            writer.WriteLine("exception Message: " + exc.Message);
            writer.WriteLine("Stack Trace : ");
            if (exc.StackTrace != null)
            {
                writer.WriteLine(exc.StackTrace);
                writer.WriteLine();
            }
            writer.Close();
        }
    }
}