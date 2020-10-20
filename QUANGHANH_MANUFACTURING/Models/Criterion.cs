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
    
    public partial class Criterion
    {
        public Criterion()
        {
            this.PlanManufacturingByMonths = new HashSet<PlanManufacturingByMonth>();
            this.PlanManufacturingByShifts = new HashSet<PlanManufacturingByShift>();
            this.PlanManufacturingByYears = new HashSet<PlanManufacturingByYear>();
        }
    
        public int criteria_id { get; set; }
        public string name { get; set; }
        public Nullable<int> measure_unit_id { get; set; }
        public Nullable<int> criteria_group_id { get; set; }
    
        public virtual CriteriaGroup CriteriaGroup { get; set; }
        public virtual MeasureUnit MeasureUnit { get; set; }
        public virtual ICollection<PlanManufacturingByMonth> PlanManufacturingByMonths { get; set; }
        public virtual ICollection<PlanManufacturingByShift> PlanManufacturingByShifts { get; set; }
        public virtual ICollection<PlanManufacturingByYear> PlanManufacturingByYears { get; set; }
    }
}
