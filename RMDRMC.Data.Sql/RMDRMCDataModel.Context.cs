﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RMDRMC.Data.Sql
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class RMDRMCContext : DbContext
    {
        public RMDRMCContext()
            : base("name=RMDRMCContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AccessDetail> AccessDetails { get; set; }
        public virtual DbSet<ChildScreen> ChildScreens { get; set; }
        public virtual DbSet<MainScreen> MainScreens { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<RoleDetail> RoleDetails { get; set; }
    }
}
