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
    
    public partial class GiayChungNhan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GiayChungNhan()
        {
            this.GiayChungNhan_NhanVien = new HashSet<GiayChungNhan_NhanVien>();
        }
    
        public int MaChungNhan { get; set; }
        public string TenChungNhan { get; set; }
        public Nullable<int> ThoiHan { get; set; }
        public string KieuChungNhan { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GiayChungNhan_NhanVien> GiayChungNhan_NhanVien { get; set; }
    }
}
