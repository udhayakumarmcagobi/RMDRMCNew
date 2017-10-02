//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Customer()
        {
            this.Customer1 = new HashSet<Customer>();
            this.Contacts = new HashSet<Contact>();
        }
    
        public long ID { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public Nullable<long> Rating { get; set; }
        public string InvCustomerName { get; set; }
        public Nullable<long> ParentID { get; set; }
        public Nullable<long> CustomerRRPLID { get; set; }
        public string CreditLimit { get; set; }
        public Nullable<int> AccountManagerID { get; set; }
        public Nullable<long> PaymentTermID { get; set; }
        public Nullable<long> AddressID { get; set; }
        public Nullable<long> OtherDetailID { get; set; }
        public Nullable<bool> Activate { get; set; }
    
        public virtual AccountManager AccountManager { get; set; }
        public virtual Address Address { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Customer> Customer1 { get; set; }
        public virtual Customer Customer2 { get; set; }
        public virtual OtherDetail OtherDetail { get; set; }
        public virtual PaymentTerm PaymentTerm { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Contact> Contacts { get; set; }
    }
}