﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMC.Model.Reference
{
    public class UserBase
    {
        public long UserID { get; set; }
        public string UserName { get; set; }
        public Roles UserRole { get; set; }
    }
}
