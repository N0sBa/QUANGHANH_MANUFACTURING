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
    
    public partial class AbsenceReason
    {
        public AbsenceReason()
        {
            this.EmployeeAttendanceAndProductivities = new HashSet<EmployeeAttendanceAndProductivity>();
        }
    
        public int absence_reason_id { get; set; }
        public string name { get; set; }
        public Nullable<int> absence_reason_type_id { get; set; }
    
        public virtual AbsenceReasonType AbsenceReasonType { get; set; }
        public virtual ICollection<EmployeeAttendanceAndProductivity> EmployeeAttendanceAndProductivities { get; set; }
    }
}
