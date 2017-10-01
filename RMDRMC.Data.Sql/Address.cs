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
    
    public partial class Address
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Address()
        {
            this.Customers = new HashSet<Customer>();
            this.Manufacturers = new HashSet<Manufacturer>();
            this.Vendors = new HashSet<Vendor>();
        }
    
        public long ID { get; set; }
        public string Area { get; set; }
        public string District { get; set; }
        public string City { get; set; }
        public Nullable<long> StateID { get; set; }
        public Nullable<long> Pincode { get; set; }
        public Nullable<long> CountryID { get; set; }
        public string Email { get; set; }
        public string Http { get; set; }
    
        public virtual Country Country { get; set; }
        public virtual State State { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Customer> Customers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Manufacturer> Manufacturers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vendor> Vendors { get; set; }
    }
}
