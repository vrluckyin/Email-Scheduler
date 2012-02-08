using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

namespace EmailScheduler.Common
{
    public class AssemblyLoader
    {
        public static object Load(String assemblyPath, String typeName)
        {
            if (!String.IsNullOrEmpty(assemblyPath) && !String.IsNullOrEmpty(typeName))
            {
                Assembly dynamicAssembly = Assembly.LoadFrom(assemblyPath);
                var type = dynamicAssembly.GetType(typeName, true, true);
                return dynamicAssembly.CreateInstance(typeName, true);
            }
            return null;
        }
        internal Boolean IsUnload()
        {
            throw new NotImplementedException();
        }
    }
}
