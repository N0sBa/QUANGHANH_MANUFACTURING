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
    
    public partial class StatusEmployee
    {
        public StatusEmployee()
        {
            this.Employees = new HashSet<Employee>();
        }
    
        public int status_employee_id { get; set; }
        public string name { get; set; }
    
        public virtual ICollection<Employee> Employees { get; set; }
    }
}
