//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QUANGHANH_MANUFACTURING.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Termination
    {
        public int decision_id { get; set; }
        public string employee_id { get; set; }
        public Nullable<int> termination_type_id { get; set; }
        public Nullable<System.DateTime> terminate_date { get; set; }
    
        public virtual Decision Decision { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual TerminationType TerminationType { get; set; }
    }
}
