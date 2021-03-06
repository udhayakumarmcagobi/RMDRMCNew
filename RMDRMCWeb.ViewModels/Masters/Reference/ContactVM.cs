﻿using RMDRMCWeb.ViewModels.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RMDRMCWeb.ViewModels.Masters
{
    public class ContactVM
    {
        public ContactVM()
        {
            DepartmentList = new Domain.DepartmentVM();
            DesignationList = new DesignationVM();
        }

        public long ContactID { get; set; }
        public string ContactName { get; set; }
        public DepartmentVM DepartmentList { get; set; }
        public DesignationVM DesignationList { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Fax { get; set; }
        public bool Selected { get; set; }
    }
}
