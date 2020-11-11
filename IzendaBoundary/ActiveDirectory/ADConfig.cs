using System;
using System.Collections.Generic;
using System.Text;

namespace SampleAuthAPI.IzendaBoundary.ActiveDirectory
{
    public class ADConfig
    {
        public bool UseActiveDirectory { get; set; }
        public string ADDomain { get; set; }
        public string ADContainer { get; set; }
        public string ADLoginName { get; set; }
        public string ADLoginPwd { get; set; }
    }
}
