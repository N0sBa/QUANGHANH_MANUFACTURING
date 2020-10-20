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
    
    public partial class HeaderAttendanceAndProductivity
    {
        public HeaderAttendanceAndProductivity()
        {
            this.DepartmentAttendanceAndProductivities = new HashSet<DepartmentAttendanceAndProductivity>();
            this.EmployeeAttendanceAndProductivities = new HashSet<EmployeeAttendanceAndProductivity>();
            this.EmployeeAttendanceAndProductivities1 = new HashSet<EmployeeAttendanceAndProductivity>();
        }
    
        public int header_attendance_and_productivity_id { get; set; }
        public Nullable<System.DateTime> attendance_date { get; set; }
        public Nullable<int> shift_id { get; set; }
        public Nullable<bool> is_created_manually { get; set; }
        public string status { get; set; }
        public string message { get; set; }
        public Nullable<System.DateTime> fetch_data_time { get; set; }
        public string version { get; set; }
    
        public virtual ICollection<DepartmentAttendanceAndProductivity> DepartmentAttendanceAndProductivities { get; set; }
        public virtual ICollection<EmployeeAttendanceAndProductivity> EmployeeAttendanceAndProductivities { get; set; }
        public virtual ICollection<EmployeeAttendanceAndProductivity> EmployeeAttendanceAndProductivities1 { get; set; }
        public virtual Shift Shift { get; set; }
    }
}
