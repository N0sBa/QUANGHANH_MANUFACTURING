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
    
    public partial class HoSo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HoSo()
        {
            this.LichSuBoSungSYLLs = new HashSet<LichSuBoSungSYLL>();
        }
    
        public string TrangThaiHoSo { get; set; }
        public string NgayNhanHoSo { get; set; }
        public string NguoiGiaoHoSo { get; set; }
        public string CamKetTuyenDung { get; set; }
        public string QuyetDinhTiepNhanDVC { get; set; }
        public string QDChamDutHopDongDVC { get; set; }
        public string NLDHocTheoChiTieuCTDT { get; set; }
        public string NguoiBanGiaoBangNhapKho { get; set; }
        public string NguoiGiuHoSo { get; set; }
        public string MaNV { get; set; }
    
        public virtual NhanVien NhanVien { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LichSuBoSungSYLL> LichSuBoSungSYLLs { get; set; }
    }
}
