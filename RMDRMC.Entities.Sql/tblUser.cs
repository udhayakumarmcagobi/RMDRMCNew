//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RMDRMC.Entities.Sql
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblUser
    {
        public long UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string LoginID { get; set; }
        public string Password { get; set; }
        public string Comments { get; set; }
        public Nullable<long> Activate { get; set; }
        public Nullable<long> RoleID { get; set; }
        public Nullable<long> AdminGrp { get; set; }
    }
}