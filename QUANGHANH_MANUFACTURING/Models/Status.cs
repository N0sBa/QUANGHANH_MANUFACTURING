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
    
    public partial class Status
    {
        public string room_id { get; set; }
        public System.DateTime date { get; set; }
        public int session { get; set; }
        public bool fully_function { get; set; }
    
        public virtual Room Room { get; set; }
    }
}
