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
    
    public partial class DiemDanh_NangSuatLaoDong
    {
        public int MaDiemDanh { get; set; }
        public string MaNV { get; set; }
        public Nullable<System.DateTime> NgayDiemDanh { get; set; }
        public Nullable<int> CaDiemDanh { get; set; }
        public Nullable<System.DateTime> ThoiGianThucTeDiemDanh { get; set; }
        public string MaDonVi { get; set; }
        public string NangSuatLaoDong { get; set; }
        public Nullable<double> HeSoChiaLuong { get; set; }
        public Nullable<double> LuongTruocDuyet { get; set; }
        public Nullable<double> LuongSauDuyet { get; set; }
        public string DuBaoNguyCo { get; set; }
        public string GiaiPhapNguyCo { get; set; }
    
        public virtual Department Department { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
