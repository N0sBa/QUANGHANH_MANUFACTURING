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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QUANGHANHABCEntities : DbContext
    {
        public QUANGHANHABCEntities()
            : base("name=QUANGHANHABCEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Acceptance> Acceptances { get; set; }
        public virtual DbSet<Account_Right_Detail> Account_Right_Detail { get; set; }
        public virtual DbSet<BangCap_GiayChungNhan> BangCap_GiayChungNhan { get; set; }
        public virtual DbSet<Category_attribute_value> Category_attribute_value { get; set; }
        public virtual DbSet<ChamDut_NhanVien> ChamDut_NhanVien { get; set; }
        public virtual DbSet<ChiTiet_BangCap_GiayChungNhan> ChiTiet_BangCap_GiayChungNhan { get; set; }
        public virtual DbSet<ChiTiet_CongViec_NhanVien> ChiTiet_CongViec_NhanVien { get; set; }
        public virtual DbSet<ChungChi> ChungChis { get; set; }
        public virtual DbSet<ChungChi_NhanVien> ChungChi_NhanVien { get; set; }
        public virtual DbSet<ChuyenNganh> ChuyenNganhs { get; set; }
        public virtual DbSet<CongViec> CongViecs { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<DiemDanh_NangSuatLaoDong> DiemDanh_NangSuatLaoDong { get; set; }
        public virtual DbSet<DieuDong_NhanVien> DieuDong_NhanVien { get; set; }
        public virtual DbSet<Documentary> Documentaries { get; set; }
        public virtual DbSet<Documentary_big_maintain_details> Documentary_big_maintain_details { get; set; }
        public virtual DbSet<Documentary_liquidation_details> Documentary_liquidation_details { get; set; }
        public virtual DbSet<Documentary_maintain_details> Documentary_maintain_details { get; set; }
        public virtual DbSet<Documentary_moveline_details> Documentary_moveline_details { get; set; }
        public virtual DbSet<Documentary_repair_details> Documentary_repair_details { get; set; }
        public virtual DbSet<Documentary_revoke_details> Documentary_revoke_details { get; set; }
        public virtual DbSet<Equipment> Equipments { get; set; }
        public virtual DbSet<Equipment_attribute> Equipment_attribute { get; set; }
        public virtual DbSet<Equipment_category> Equipment_category { get; set; }
        public virtual DbSet<Equipment_category_attribute> Equipment_category_attribute { get; set; }
        public virtual DbSet<Equipment_Inspection> Equipment_Inspection { get; set; }
        public virtual DbSet<Fuel_activities_consumption> Fuel_activities_consumption { get; set; }
        public virtual DbSet<GhiChu> GhiChus { get; set; }
        public virtual DbSet<GiayTo> GiayToes { get; set; }
        public virtual DbSet<HoSo> HoSoes { get; set; }
        public virtual DbSet<Incident> Incidents { get; set; }
        public virtual DbSet<KeHoach_TieuChi> KeHoach_TieuChi { get; set; }
        public virtual DbSet<KeHoach_TieuChi_VatLieuSanXuat> KeHoach_TieuChi_VatLieuSanXuat { get; set; }
        public virtual DbSet<LichSuBoSungSYLL> LichSuBoSungSYLLs { get; set; }
        public virtual DbSet<Maintain_Car> Maintain_Car { get; set; }
        public virtual DbSet<Maintain_Car_Detail> Maintain_Car_Detail { get; set; }
        public virtual DbSet<Module> Modules { get; set; }
        public virtual DbSet<Nganh> Nganhs { get; set; }
        public virtual DbSet<NguoiUyQuyenLayHoSo_BaoHiem> NguoiUyQuyenLayHoSo_BaoHiem { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
        public virtual DbSet<NhiemVu> NhiemVus { get; set; }
        public virtual DbSet<QuanHeGiaDinh> QuanHeGiaDinhs { get; set; }
        public virtual DbSet<QuaTrinhCongTac> QuaTrinhCongTacs { get; set; }
        public virtual DbSet<QuyetDinh> QuyetDinhs { get; set; }
        public virtual DbSet<Supply> Supplies { get; set; }
        public virtual DbSet<Supply_Documentary_Equipment> Supply_Documentary_Equipment { get; set; }
        public virtual DbSet<Supply_tieuhao> Supply_tieuhao { get; set; }
        public virtual DbSet<SupplyPlan> SupplyPlans { get; set; }
        public virtual DbSet<ThucHien_TieuChi> ThucHien_TieuChi { get; set; }
        public virtual DbSet<TieuChi> TieuChis { get; set; }
        public virtual DbSet<TieuChi_VatLieuSanXuat> TieuChi_VatLieuSanXuat { get; set; }
        public virtual DbSet<TrinhDo> TrinhDoes { get; set; }
        public virtual DbSet<Truong> Truongs { get; set; }
        public virtual DbSet<TuyenDung_NhanVien> TuyenDung_NhanVien { get; set; }
        public virtual DbSet<VatLieuSanXuat> VatLieuSanXuats { get; set; }
        public virtual DbSet<Activity> Activities { get; set; }
        public virtual DbSet<ChiTiet_NhiemVu_NhanVien> ChiTiet_NhiemVu_NhanVien { get; set; }
        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<Account_Right> Account_Right { get; set; }
    }
}
