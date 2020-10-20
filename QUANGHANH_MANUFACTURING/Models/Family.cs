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
    
    public partial class Family
    {
        public string full_name { get; set; }
        public Nullable<System.DateTime> date_of_birth { get; set; }
        public string background { get; set; }
        public string permanent_address { get; set; }
        public string phone_number { get; set; }
        public string employee_id { get; set; }
        public int family_type_id { get; set; }
        public int family_relationship_id { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual FamilyRelationship FamilyRelationship { get; set; }
        public virtual FamilyType FamilyType { get; set; }
    }
}
