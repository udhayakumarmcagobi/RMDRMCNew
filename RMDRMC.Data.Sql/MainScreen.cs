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
    
    public partial class MainScreen
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MainScreen()
        {
            this.ChildScreens = new HashSet<ChildScreen>();
        }
    
        public long ScreenID { get; set; }
        public string Name { get; set; }
        public Nullable<bool> Activate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChildScreen> ChildScreens { get; set; }
    }
}
