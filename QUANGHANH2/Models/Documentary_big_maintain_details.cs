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
    
    public partial class Documentary_big_maintain_details
    {
        public int equipment_big_maintain_status { get; set; }
        public string remodel_type { get; set; }
        public System.DateTime end_date { get; set; }
        public string next_remodel_type { get; set; }
        public System.DateTime next_end_time { get; set; }
        public int documentary_id { get; set; }
        public string equipmentId { get; set; }
        public string equipment_big_maintain_reason { get; set; }
    
        public virtual Documentary Documentary { get; set; }
        public virtual Equipment Equipment { get; set; }
        public virtual Status Status { get; set; }
    }
}
