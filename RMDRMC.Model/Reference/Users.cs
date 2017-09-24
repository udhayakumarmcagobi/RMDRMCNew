﻿using RMDRMC.Model.Domain;

namespace RMDRMC.Model.Reference
{
    public class Users : RMDRMCBase
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string Comments { get; set; }
        public string Phone { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
