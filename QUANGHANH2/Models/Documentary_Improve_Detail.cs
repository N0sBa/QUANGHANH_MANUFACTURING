//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QUANGHANH2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Documentary_Improve_Detail
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Documentary_Improve_Detail()
        {
            this.Supply_Documentary_Improve_Equipment = new HashSet<Supply_Documentary_Improve_Equipment>();
        }
    
        public int documentary_improve_id { get; set; }
        public int equipment_Improve_status { get; set; }
        public string equipmentId { get; set; }
        public int documentary_id { get; set; }
        public string department_id_from { get; set; }
    
        public virtual Department Department { get; set; }
        public virtual Documentary Documentary { get; set; }
        public virtual Equipment Equipment { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Supply_Documentary_Improve_Equipment> Supply_Documentary_Improve_Equipment { get; set; }
    }
}
