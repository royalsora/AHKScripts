using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AhkHub
{
    class Util
    {
        public string TrimFileExtension(string item)
        {
            return item.Substring(item.IndexOf("."));
        }
    }
}
