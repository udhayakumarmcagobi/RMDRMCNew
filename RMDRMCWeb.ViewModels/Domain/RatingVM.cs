﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Domain
{
    public class RatingVM
    {
        public long Code { get; set; }
        public string Value { get; set; }
        public bool Selected { get; set; }
    }
}
