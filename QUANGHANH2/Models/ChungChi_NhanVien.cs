﻿//------------------------------------------------------------------------------
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
    using System.ComponentModel.DataAnnotations;

    public partial class ChungChi_NhanVien
    {
        [Required(ErrorMessage = "Không để trống")]
        public string SoHieu { get; set; }
        [Required(ErrorMessage = "Không để trống")]
        public Nullable<System.DateTime> NgayCap { get; set; }
        [Required(ErrorMessage = "Không để trống")]
        public string MaNV { get; set; }
        public int MaChungChi { get; set; }
    
        public virtual ChungChi ChungChi { get; set; }
        public virtual NhanVien NhanVien { get; set; }
    }
}
