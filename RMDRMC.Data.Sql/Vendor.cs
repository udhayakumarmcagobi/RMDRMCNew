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
    
    public partial class Vendor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Vendor()
        {
            this.Contacts = new HashSet<Contact>();
        }
    
        public long ID { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public Nullable<long> Rating { get; set; }
        public Nullable<bool> Activate { get; set; }
        public string POName { get; set; }
        public Nullable<long> PaymentTermID { get; set; }
        public Nullable<long> AddressID { get; set; }
        public Nullable<long> OtherDetailID { get; set; }
    
        public virtual Address Address { get; set; }
        public virtual OtherDetail OtherDetail { get; set; }
        public virtual PaymentTerm PaymentTerm { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Contact> Contacts { get; set; }
    }
}