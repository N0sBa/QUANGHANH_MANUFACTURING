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
    
    public partial class Task
    {
        public Task()
        {
            this.EmployeeTasks = new HashSet<EmployeeTask>();
        }
    
        public int task_id { get; set; }
        public string task_name { get; set; }
        public Nullable<int> task_type_id { get; set; }
        public Nullable<int> papers_id { get; set; }
    
        public virtual ICollection<EmployeeTask> EmployeeTasks { get; set; }
        public virtual Paper Paper { get; set; }
        public virtual TaskType TaskType { get; set; }
    }
}
