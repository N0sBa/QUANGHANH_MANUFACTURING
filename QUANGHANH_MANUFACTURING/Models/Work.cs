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
    
    public partial class Work
    {
        public Work()
        {
            this.Employees = new HashSet<Employee>();
            this.Recruitments = new HashSet<Recruitment>();
            this.Transfers = new HashSet<Transfer>();
            this.Transfers1 = new HashSet<Transfer>();
            this.WorkGroups = new HashSet<WorkGroup>();
        }
    
        public int work_id { get; set; }
        public string name { get; set; }
        public string allowance { get; set; }
        public Nullable<int> pay_table_id { get; set; }
    
        public virtual ICollection<Employee> Employees { get; set; }
        public virtual PayTable PayTable { get; set; }
        public virtual ICollection<Recruitment> Recruitments { get; set; }
        public virtual ICollection<Transfer> Transfers { get; set; }
        public virtual ICollection<Transfer> Transfers1 { get; set; }
        public virtual ICollection<WorkGroup> WorkGroups { get; set; }
    }
}
