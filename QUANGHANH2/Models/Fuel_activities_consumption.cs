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
    
    public partial class Fuel_activities_consumption
    {
        public int fuelid { get; set; }
        public int consumption_value { get; set; }
        public System.DateTime date { get; set; }
        public string equipmentId { get; set; }
        public string department_id { get; set; }
        public string fuel_type { get; set; }
    
        public virtual Department Department { get; set; }
        public virtual Equipment Equipment { get; set; }
        public virtual Supply Supply { get; set; }
    }
}
