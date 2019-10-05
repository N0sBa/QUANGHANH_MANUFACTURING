USE [QUANGHANHABC]
GO
SET IDENTITY_INSERT [dbo].[TieuChi] ON 

GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (1, N'Than đào lò', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (2, N'Than khai thác', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (3, N'Than lộ thiên tự làm', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (4, N'Than lộ thiên thuê ngoài', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (5, N'Đất đá bóc', N'Mét khối')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (6, N'Than nhập Dương Huy', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (7, N'Mét lò CBSX tự làm', N'Mét')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (8, N'Mét lò CBSX thuê ngoài', N'Mét')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (9, N'Mét lò xén', N'Mét')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (10, N'Than sàng tuyển', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (11, N'Than tiêu thụ', N'Tấn')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (12, N'Doanh thu', N'Tỷ đồng')
GO
INSERT [dbo].[TieuChi] ([MaTieuChi], [TenTieuChi], [DonViDo]) VALUES (13, N'Đá xít xuất kho', N'Tấn')
GO
SET IDENTITY_INSERT [dbo].[TieuChi] OFF
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'AT', N'An toàn', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'BGD', N'Ban giám đốc', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'BTK', N'BTK', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'CD', N'Công đoàn', N'Đoàn thể')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'CDVT', N'Cơ điện vận tải', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'CTA', N'Công ty ASEAN', N'Đơn vị sản xuất thuê ngoài')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'CV', N'CV', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'DK', N'Điều khiển', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'DTM', N'DTM', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'DU', N'Đảng ủy', N'Đoàn thể')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'KCM', N'KCM', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'KCS', N'Kỹ thuật sàng tuyển', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'KH', N'KH', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'KT', N'KT', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXCDM', N'Phân xưởng cơ điện mỏ', N'Phân xưởng thuộc về phục vụ')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXCKSC', N'Phân xưởng cơ khí, sửa chữa', N'Phân xưởng thuộc về phục vụ')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDL1', N'Công ty Xây lắp mỏ - TKV', N'Đơn vị sản xuất thuê ngoài')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDL2', N'Liên doanh nhà thầu Công ty CP thương mại - công nghệ CT Thăng Long và Công ty tư vấn Công ty Thăng Long', N'Đơn vị sản xuất thuê ngoài')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDL3', N'Phân xưởng đào lò 3', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDL5', N'Phân xưởng đào lò 5', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDL7', N'Phân xưởng đào lò 7', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDL8', N'Phân xưởng đào lò 8', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXDS', N'Phân xưởng đời sống', N'Phân xưởng thuộc về phục vụ')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT1', N'Phân xưởng khải thác 1', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT10', N'Phân xưởng khai thác 10', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT11', N'Phân xưởng khai thác 11', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT2', N'Phân xưởng khai thác 2', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT3', N'Phân xưởng khai thác 3', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT4', N'Phân xưởng khai thác 4', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT5', N'Phân xưởng khai thác 5', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT6', N'Phân xưởng khai thác 6', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT7', N'Phân xưởng khai thác 7', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT8', N'Phân xưởng khai thác 8', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXKT9', N'Phân xưởng khai thác 9', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXLT', N'Phân xưởng lộ thiên', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXPV', N'Phân xưởng phục vụ', N'Phân xưởng thuộc về phục vụ')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXST', N'Phân xưởng sàng tuyển', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXTGQLKM', N'Phân xưởng thông gió - quản lý khí mỏ', N'Phân xưởng thuộc về phục vụ')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXVT1', N'Phân xưởng vận tải 1', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXVT2', N'Phân xưởng vận tải 2', N'Phân xưởng sản xuất chính')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'PXXD', N'Phân xưởng xây dựng', N'Phân xưởng thuộc về phục vụ')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'TCLD', N'Tổ chức lao động', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'TD', N'TD', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'TGM', N'TGM', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'TN', N'Thanh niên', N'Đoàn thể')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'VP', N'VP', N'Văn phòng')
GO
INSERT [dbo].[Department] ([department_id], [department_name], [department_type]) VALUES (N'YT', N'YT', N'Văn phòng')
GO
SET IDENTITY_INSERT [dbo].[KeHoach_TieuChi] ON 

GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (1, N'PXKT1', 2, 10, 2019, 23, 5000007)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (3, N'PXKT1', 1, 10, 2019, 23, 4354654)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (4, N'PXKT2', 2, 10, 2019, 23, 4564555)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (6, N'PXKT2', 1, 10, 2019, 23, 1234465)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (7, N'PXDL3', 1, 10, 2019, 23, 4353566)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (8, N'PXDL5', 1, 10, 2019, 23, 4213565)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (9, N'PXDL8', 1, 10, 2019, 23, 4231565)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (10, N'PXLT', 3, 10, 2019, 23, 4653565)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (12, N'PXLT', 4, 10, 2019, 23, 5546465)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (14, N'PXKT1', 7, 10, 2019, 23, 3133565)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (15, N'PXKT3', 7, 10, 2019, 23, 2132545)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (16, N'PXKT4', 7, 10, 2019, 23, 2134465)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (18, N'PXDL3', 7, 10, 2019, 23, 5456565)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (19, N'CTA', 8, 10, 2019, 23, 2132455)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (20, N'PXDL1', 8, 10, 2019, 23, 2134555)
GO
INSERT [dbo].[KeHoach_TieuChi] ([MaKeHoach], [MaPhongBan], [MaTieuChi], [ThangKeHoach], [NamKeHoach], [SoNgayLamViec], [SanLuongKeHoach]) VALUES (21, N'PXDL2', 8, 10, 2019, 23, 7556775)
GO
SET IDENTITY_INSERT [dbo].[KeHoach_TieuChi] OFF
GO
SET IDENTITY_INSERT [dbo].[ThucHien_TieuChi] ON 

GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (1, N'PXKT1', 2, CAST(0x37400B00 AS Date), 1, 2411)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (2, N'PXKT1', 2, CAST(0x37400B00 AS Date), 2, 1451)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (4, N'PXKT1', 2, CAST(0x37400B00 AS Date), 3, 145)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (5, N'PXKT1', 1, CAST(0x37400B00 AS Date), 1, 5456)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (6, N'PXKT1', 1, CAST(0x37400B00 AS Date), 2, 2133)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (7, N'PXKT1', 1, CAST(0x37400B00 AS Date), 3, 123)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (8, N'PXKT2', 1, CAST(0x37400B00 AS Date), 1, 1321)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (9, N'PXKT2', 1, CAST(0x37400B00 AS Date), 2, 142)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (10, N'PXKT2', 1, CAST(0x37400B00 AS Date), 3, 214)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (11, N'PXKT3', 7, CAST(0x37400B00 AS Date), 1, 2019)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (12, N'PXKT3', 7, CAST(0x37400B00 AS Date), 2, 213)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (13, N'PXKT3', 7, CAST(0x37400B00 AS Date), 3, 1245)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (14, N'PXKT4', 7, CAST(0x37400B00 AS Date), 1, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (15, N'PXKT4', 7, CAST(0x37400B00 AS Date), 2, 125)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (16, N'PXKT4', 7, CAST(0x37400B00 AS Date), 3, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (17, N'PXDL3', 1, CAST(0x37400B00 AS Date), 1, 1233)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (18, N'PXDL3', 1, CAST(0x37400B00 AS Date), 2, 123)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (19, N'PXDL3', 1, CAST(0x37400B00 AS Date), 3, 456)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (20, N'PXDL3', 7, CAST(0x37400B00 AS Date), 1, 1322)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (21, N'PXDL3', 7, CAST(0x37400B00 AS Date), 2, 2133)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (22, N'PXDL3', 7, CAST(0x37400B00 AS Date), 3, 764)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (23, N'PXDL5', 1, CAST(0x37400B00 AS Date), 1, 123)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (24, N'PXDL5', 1, CAST(0x37400B00 AS Date), 2, 213)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (25, N'PXDL5', 1, CAST(0x37400B00 AS Date), 3, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (26, N'PXDL8', 1, CAST(0x37400B00 AS Date), 1, 2321)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (27, N'PXDL8', 1, CAST(0x37400B00 AS Date), 2, 123)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (28, N'PXDL8', 1, CAST(0x37400B00 AS Date), 3, 4564)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (29, N'PXDL1', 8, CAST(0x37400B00 AS Date), 1, 1232)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (30, N'PXDL1', 8, CAST(0x37400B00 AS Date), 2, 4564)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (31, N'PXDL1', 8, CAST(0x37400B00 AS Date), 3, 3542)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (32, N'PXDL2', 8, CAST(0x37400B00 AS Date), 1, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (33, N'PXDL2', 8, CAST(0x37400B00 AS Date), 2, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (34, N'PXDL2', 8, CAST(0x37400B00 AS Date), 3, 2139)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (35, N'PXLT', 3, CAST(0x37400B00 AS Date), 1, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (36, N'PXLT', 3, CAST(0x37400B00 AS Date), 2, 3421)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (37, N'PXLT', 3, CAST(0x37400B00 AS Date), 3, 1234)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (38, N'CTA', 8, CAST(0x37400B00 AS Date), 1, 2312)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (39, N'CTA', 8, CAST(0x37400B00 AS Date), 2, 2134)
GO
INSERT [dbo].[ThucHien_TieuChi] ([MaThucHien], [MaPhongBan], [MaTieuChi], [NgayThucHien], [CaThucHien], [SanLuongThucHien]) VALUES (40, N'CTA', 8, CAST(0x37400B00 AS Date), 3, 7564)
GO
SET IDENTITY_INSERT [dbo].[ThucHien_TieuChi] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThai] ON 

GO
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (1, N'Đang đi làm')
GO
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (2, N'Đã chấm dứt')
GO
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (3, N'Đang chờ điều động')
GO
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (4, N'Đang chờ chấm dứt')
GO
SET IDENTITY_INSERT [dbo].[TrangThai] OFF
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (1, N'Tiến sỹ')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (2, N'Thạc sỹ 
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (3, N'Đại học 
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (4, N'Cao đẳng 
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (5, N'Trung cấp chuyên nghiệp
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (6, N'CNKT(bằng nghề)
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (7, N'Sơ cấp 
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (8, N'Chứng chỉ 
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (9, N'Giấy chứng nhận
')
GO
INSERT [dbo].[TrinhDo] ([MaTrinhDo], [TenTrinhDo]) VALUES (10, N'THPT
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (1, N'Hồng Cẩm 
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (2, N'Hữu Nghị 
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (3, N'Mỏ Địa chất 
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (4, N'Đại học Công nghiệp 
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (5, N'Đại học Kinh Tế Quốc Dân
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (6, N'Trung Cấp Quân Y
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (7, N'Đại học Công nghiệp Quảng Ninh
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (8, N'Đại học xây dựng Hà Nội
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (9, N'Quản Lý Kinh Tế Công Nghiệp
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (10, N'Trung Học Kinh Tế Quảng Ninh
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (11, N'Đại học Bách Khoa
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (12, N'Viện Đại Học Mở
')
GO
INSERT [dbo].[Truong] ([MaTruong], [TenTruong]) VALUES (13, N'Học Viện Tài Chính
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'1', N'Kỹ thuật cơ điện mỏ hầm lò
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'2', N'Tin học B
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'3', N'Kỹ thuật khai thác mỏ hầm lò
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'4', N'Tiếng anh B
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'5', N'Kỹ thuật công trình xây dựng
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'6', N'Sửa chữa cơ điện mỏ hầm lò
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'7', N'Điện tử công nghiệp
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'8', N'Tin học A
')
GO
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (N'9', N'Kỹ thuật mỏ
')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'0101a', N'Trưởng ca vận hành
', N'Công Nhân Kỹ Thuật', NULL, N'3')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'0101b', N'Trưởng kíp vận hành
', N'Công Nhân Kỹ Thuật', NULL, N'3')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'0116', N'Nguội', N'Công Nhân Kỹ Thuật', N'Sửa chữa điện xí nghiệp
', N'4')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10000', N'Khoa học tự nhiên 
', N'Trung Cấp', NULL, N'2')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10600', N'Địa chất 
', N'Trung Cấp', N'Thủy văn
', N'2')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10601', N'Địa chất tổng quát 
', N'Trung Cấp', NULL, N'2')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10800', N'Địa chất
', N'Cao đẳng - Đại học ', NULL, N'1')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10801', N'Địa chất học
', N'Cao đẳng - Đại học ', NULL, N'1')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10803', N'Địa chất công trình
', N'Cao đẳng - Đại học ', NULL, N'1')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'10804', N'Địa chất thuỷ văn
', N'Cao đẳng - Đại học ', NULL, N'1')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'20100', N'Cơ khí 
', N'Cao đẳng - Đại học ', N'Quản lý đất đai
', N'1')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'20101', N'Cơ khí chế tạo máy 
', N'Cao đẳng - Đại học ', N'Cơ khí động lực, cơ khí ô tô, Cơ khí nông nghiệp, Kỹ thuật cơ khí
', N'1')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'20102', N'Chế tạo, sửa chữa máy 
', N'Trung Cấp', NULL, N'2')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [CapBac], [ChiTiet], [MaNganh]) VALUES (N'20103', N'Rèn dập 
', N'Trung Cấp', N'Chế tạo phụ tùng cơ khí
', N'2')
GO
SET IDENTITY_INSERT [dbo].[CongViec] ON 

GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (1, N'Giám đốc', N'TKV 09.2', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (2, N'Phó giám đốc', N'TKV 09.3', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (3, N'Kế toán trưởng', N'TKV 09.4', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (4, N'Bí thư đảng uỷ', N'TKV 09.2', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (5, N'Phó bí thư đảng uỷ', N'TKV 09.3', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (6, N'Chánh văn phòng đảng uỷ', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (7, N'Chánh văn phòng Công đoàn', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (8, N'Chủ tịch công đoàn', N'TKV 09.3', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (9, N'Phó chủ tịch Công đoàn', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (10, N'Bí thư đoàn thanh niên', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (11, N'Phó bí thư đoàn thanh niên', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (12, N'Trưởng phòng', N'TKV 08.3.VII', 724000)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (13, N'Phó trưởng phòng', N'TKV 08.3.VII', 579000)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (14, N'Quản đốc chỉ đạo sản xuất trực tiếp trong hầm lò', N'TKV 08.3.VII', 724000)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (15, N'Quản đốc Chỉ đạo sản xuất trực tiếp khai thác than lộ thiên và trong nhà máy sàng tuyển', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (16, N'Kỹ thuật viên phân xưởng chỉ đạo sản xuất trực tiếp khai thác than lộ thiên và trong nhà máy sàng tuyển', N'TKV 08.3.VII', 579000)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (17, N'Kỹ thuật viên phân xưởng', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (18, N'Quản đốc', N'TKV 08.4.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (19, N'Phó quản đốc chỉ đạo sản xuất trực tiếp trong hầm lò', N'TKV 08.3.VII', 579000)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (20, N'Phó quản đốc chỉ đạo sản xuất trực tiếp khai thác than lộ thiên và trong nhà máy sàng tuyển', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (21, N'Phó quản đốc', N'TKV 08.4.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (22, N'Phó quản đốc cơ điện chỉ đạo sản xuất trực tiếp trong hầm lò', N'TKV 08.4.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (23, N'Phó quản đốc cơ điện chỉ đạo sản xuất trực tiếp khai thác than lộ thiên và trong nhà máy sàng tuyển', N'TKV 08.3.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (24, N'Kỹ thuật viên phân xưởng ', N'TKV 01.NI.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (25, N'Kinh tế viên (Nhân viên kinh tế)', N'TKV 01.NI.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (26, N'Cán sự', N'TKV 01.NI.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (27, N'Cán sự (Nhân viên kinh tế)', N'TKV 02.NI.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (28, N'(Kỹ thuật viên) Chỉ đạo kỹ thuật trực tiếp trong hầm lò', N'TKV 02.NII.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (29, N'Kỹ thuật viên (Y tá) trực dưới hầm lò ', N'TKV 02.NII.VII', NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (30, N'Kỹ thuật viên (Y tá)', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (31, N'Chưa phân công', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (32, N'Chuyên viên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (33, N'(Công nhân) khai thác mỏ hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (34, N'(Lò trưởng) khai thác mỏ hầm lò ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (35, N'(Công nhân) khai thác mỏ hầm lò ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (36, N'Công nhân quan trắc (công nhân trực thông tin)', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (37, N'Công nhân trực thông tin', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (38, N'Công nhân trực thông tin (Công nhân quan trắc) ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (39, N'(Công nhân) Nấu ăn trong các nhà hàng, khách sạn, các bếp ăn tập thể có từ 100 suất ăn trở lên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (40, N'Công nhân lao động phổ thông', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (41, N'Công nhân cấp phát bồi dưỡng', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (42, N'Công nhân sản xuất nước uống tinh khiết', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (43, N'Công nhân quét dọn nhà vệ sinh công cộng; xử lý rác sinh hoạt ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (44, N'Công nhân thống kê', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (45, N'Công nhân giặt quần áo bảo hộ lao động', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (46, N'Công nhân giặt sấy bảo hộ lao động', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (47, N'Công nhân vận hành thiết bị điện tử tin học (VH cân giao than )', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (48, N'Công nhân thợ mộc, nề, sắt', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (49, N'Công nhân thủ kho vật tư', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (50, N'(Công nhân) bốc xếp thủ công ở các ga, kho, bến, bãi', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (51, N'Công nhân bốc xếp vật tư (bốc xếp thủ công ở các ga, kho, bến, bãi)', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (52, N'Công nhân tiếp liệu', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (53, N'Công nhân vận hành trạm bơm nước', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (54, N'Công nhân vẫy đầu đường, thống kế chuyến, điều xe', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (55, N'(Công nhân) sàng tuyển thủ công, khai thác than thủ công ở mỏ lộ thiên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (56, N'(Công nhân) vận hành băng tải, máy nghiền, sàng than, đá', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (57, N'(Công nhân) Sửa chữa, bảo dưỡng các thiết bị khai thác than', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (58, N'(Công nhân) lấy mẫu, hóa nghiệm phân tích than', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (59, N'Công nhân kiểm tra chất lượng sản phẩm ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (60, N'(Công nhân) Sửa chữa cơ điện trên các mỏ lộ thiên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (61, N'(Công nhân) Sửa chữa, bảo dưỡng các thiết bị khai thác than', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (62, N'Công nhân vận hành nồi hơi đốt than', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (63, N'(Công nhân) giao nhận, bán buôn, bán lẻ xăng, dầu, nhựa đường, các sản phẩm hoá dầu tại cửa hàng, kho,trạm, bến, bãi và trên sông', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (64, N'(Công nhân) Đo khí, đo gió, trực cửa gió, trắc địa. KCS trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (65, N'(Công nhân) trực gác cửa gió trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (66, N'(Công nhân) sửa chữa ắc quy', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (67, N'(Công nhân) vận hành, bảo trì trạm biến thế trung thế', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (68, N'(Công nhân) đo khí, đo gió trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (69, N'(Công nhân) vận tải than trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (70, N'(Công nhân) lái máy gạt, ủi công suất dưới 180 CV', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (71, N'(Công nhân) lái máy xúc dung tích gầu dưới 4m3', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (72, N'Sửa chữa cơ điện trong mỏ hầm lò (Đốc công)', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (73, N'(Công nhân) Sửa chữa cơ điện trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (74, N'(Công nhân) lắp đặt, sửa chữa hệ thống thông tin liên lạc trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (75, N'(Công nhân) vận hành trạm quạt khí nén, điện, diezel, trạm xạc ắc quy trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (76, N'(Công nhân khoan thăm dò) Khoan đá bằng búa máy cầm tay trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (77, N'(Công nhân) thủ kho mìn trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (78, N'(Công nhân) Bắn mìn lộ thiên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (79, N'(Công nhân) thủ kho vật liệu nổ công nghiệp', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (80, N'(Công nhân) Lái máy gạt, ủi có công suất từ 180 CV trở lên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (81, N'(Công nhân) Lái máy xúc dung tích gầu từ 4m3 trở lên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (82, N'(Công nhân) vận hành máy khoan super, khoan sông đơ, khoan đập cáp trên các mỏ lộ thiên', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (83, N'Công nhân trông giữ xe', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (84, N'Công nhân bảo vệ tuần tra, canh gác', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (85, N'(Công nhân) bảo vệ kho trong hầm lò', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (86, N'(Công nhân) bảo vệ tài nguyên, ranh giới mỏ than', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (87, N'Công nhân lái xe con', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (88, N'Công nhân lái xe con (lái xe cứu thương)', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (89, N'Công nhân lái xe khách dưới 20 ghế', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (90, N'Công nhân lái xe cẩu dưới 3,5 tấn ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (91, N'Công nhân lái xe tải từ 3,5 tấn đến dưới 7,5 tấn ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (92, N'Công nhân lái xe khách từ 20 ghế đến dưới 40 ghế ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (93, N'Công nhân lái xe cẩu từ 3,5 tấn đến dưới 7,5 tấn ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (94, N'Công nhân lái xe nâng, hạ từ 3,5 tấn đến dưới 7,5 tấn ', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (95, N'(Công nhân) Lái xe ô tô khách từ 40 ghế đến dưới 80 ghế', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (96, N'(Công nhân) lái xe vận tải từ 7 tấn đến dưới 20 tấn', NULL, NULL)
GO
INSERT [dbo].[CongViec] ([MaCongViec], [TenCongViec], [ThangLuong], [PhuCap]) VALUES (97, N'(Công nhân) lái xe vận tải, có trọng tải 20 tấn trở lên', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CongViec] OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8056', N'Cao Thành Duy', NULL, 1, NULL, NULL, NULL, CAST(0x171C0B00 AS Date), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'khoe', NULL, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, N'PXKT1')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8057', N'Lưu Đức Thắng', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXKT2')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8058', N'Đào Văn Thành', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXKT3')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8059', N'Nguyễn Văn Đại', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXDL3')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8060', N'Phạm Duy Hùng', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXDL5')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8061', N'Nguyễn Văn Lâm', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXDL7')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8062', N'Phạm Ngọc Quý', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXKT1')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8063', N'Đặng Thái Hà', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXKT7')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8064', N'Nguyễn Văn Thọ', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXDL8')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8065', N'Vừ A Dinh', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXLT')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8066', N'Trần Nhật Thu', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXST')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8067', N'Nguyễn Duy Giang', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXVT1')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8069', N'Đỗ Văn Oai', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXVT2')
GO
INSERT [dbo].[NhanVien] ([MaNV], [Ten], [Tenkhac], [GioiTinh], [CapUyHienTai], [CapUyKiem], [PhuCapChucVu], [NgaySinh], [NoiSinh], [DanToc], [QueQuan], [TonGiao], [NoiOHienTai], [SoDienThoai], [TPGiaDinhXuatThan], [NgayThamGiaCachMang], [NgayVaoDangCSVN], [NgayChinhThuc], [NgayVaoToChucCTXH], [ToChuc], [NgayNhapNgu], [NgayXuatNgu], [QuanHamChucVuCaoNhat], [HocHamHocViCaoNhat], [LyLuanChinhTri], [NgoaiNgu], [CongTacChinhDangLam], [NgachCongChuc], [MaNgach], [DanhHieuDuocPhong], [SoTruongCongTac], [CongViecDaLamLauNhat], [KhenThuong], [KyLuat], [TinhTrangSucKhoe], [ChiTietSucKhoe], [ChieuCao], [CanNang], [NhomMau], [HangThuongBinh], [GiaDinhChinhSach], [SoCMND], [NgayCapCMND], [NoiCapCMND], [NgayDiLam], [MaUyQuyen], [SoBHXH], [NgayTraBHXH], [LoaiNhanVien], [MaCongViec], [MucLuong], [MaTrinhDo], [MaTruong], [BacLuong], [NgheTruoc], [NgayTuyenDungTruoc], [CoQuanTruoc], [HeSo], [TuThang], [MaTrangThai], [MaChuyenNganh], [MaPhongBan]) VALUES (N'8070', N'Vũ Anh Tuấn', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, N'PXKT7')
GO
SET IDENTITY_INSERT [dbo].[BangCap_GiayChungNhan] ON 

GO
INSERT [dbo].[BangCap_GiayChungNhan] ([MaTruong], [MaBangCap_GiayChungNhan], [MaTrinhDo], [KieuBangCap], [ThoiHan], [TenBangCap], [Loai], [MaChuyenNganh]) VALUES (5, 1, 2, N'Bản gốc', N'-1', N'Bằng cử nhân đại học', N'Bằng cấp', N'10600')
GO
SET IDENTITY_INSERT [dbo].[BangCap_GiayChungNhan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChungChi] ON 

GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (1, N'AT điện bậc 1', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (2, N'AT điện bậc 2', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (3, N'AT điện bậc 3', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (4, N'ĐGKNN Đạt', 12, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (5, N'Giảng viên HLATLĐ', 12, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (6, N'Thiết bị áp lực VH hàn hơi', 6, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (7, N'Thiết bị áp lực VH máy nén khí', 18, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (8, N'Thiết bị áp lực VH nồi hơi', 18, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (9, N'Thiết bị áp lực VH thiết bị áp lực', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (10, N'Tời VH tời trục mỏ', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (11, N'Thiết bị nâng VH Monoray', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (12, N'Tời VH tời chở người', 18, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (13, N'Tời Phụ trách toa xe', 18, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (14, N'Vật liệu nổ Người quản lý', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (15, N'Vật liệu nổ Chỉ huy nổ mìn', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (16, N'Vật liệu nổ Người phục vụ', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (17, N'Vật liệu nổ Người vận chuyển', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (18, N'Vật liệu nổ Quản lý kho VLNCN', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (19, N'Vật liệu nổ Thợ mìn hạng B', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (20, N'Vật liệu nổ Thợ mìn hạng C', 24, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (21, N'Vì neo Vì neo', 18, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (22, N'VH tàu điện', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (23, N'Thiết bị nâng Thiết bị nâng hạ', 36, N'Bản gốc')
GO
INSERT [dbo].[ChungChi] ([MaChungChi], [TenChungChi], [ThoiHan], [KieuChungChi]) VALUES (24, N'Thiết bị nâng VH xe nâng hàng', 36, N'Bản gốc')
GO
SET IDENTITY_INSERT [dbo].[ChungChi] OFF
GO
INSERT [dbo].[ChungChi_NhanVien] ([SoHieu], [NgayCap], [MaNV], [MaChungChi], [NgayTra]) VALUES (N'1', CAST(0x38400B00 AS Date), N'8056', 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[NhiemVu] ON 

GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'ĐGKNN', N'ĐẠT', 4, 1)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'AT điện', N'Bậc 1', 1, 2)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'AT điện', N'Bậc 2', 2, 3)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'AT điện', N'Bậc 3', 3, 4)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Người quản lý', 14, 5)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Chỉ huy nổ mìn', 15, 6)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Người phục vụ', 16, 7)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Người vận chuyển', 17, 8)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Quản lý kho VLNCN', 18, 9)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Thợ mìn hạng B', 19, 10)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vật liệu nổ', N'Thợ mìn hạng C', 20, 12)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Tời', N'Phụ trách toa xe', 13, 13)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Tời', N'VH tời chở người', 12, 14)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Tời', N'VH tời trục mỏ', 10, 15)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị áp lực', N'VH hàn hơi', 6, 16)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị áp lực', N'VH máy nén khí', 7, 17)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị áp lực', N'VH nồi hơi', 8, 18)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị áp lực', N'VH thiết bị áp lực', 9, 19)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị nâng', N'Vh Monoray', 11, 21)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị nâng', N'VH thiết bị nâng hạ', 23, 22)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Thiết bị nâng', N'VH xe nâng hàng', 24, 23)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Giảng viên HL ATLĐ', N'GVHLATLĐ', 5, 24)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'Vì neo', N'Vì neo', 21, 25)
GO
INSERT [dbo].[NhiemVu] ([Loai], [TenNhiemVu], [MaChungChi], [MaNhiemVu]) VALUES (N'VH tàu điện', N'VH tàu điện', 22, 26)
GO
SET IDENTITY_INSERT [dbo].[NhiemVu] OFF
GO
SET IDENTITY_INSERT [dbo].[DiemDanh_NangSuatLaoDong] ON 

GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (31, N'8056', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (32, N'8057', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT1', NULL, NULL, NULL, NULL, N'Ốm', NULL, 0, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (35, N'8058', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (36, N'8059', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXDL3', NULL, NULL, NULL, NULL, N'VLD', 0, 0, NULL, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (37, N'8060', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXDL5', NULL, NULL, NULL, NULL, N'Ốm', NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (38, N'8061', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXDL8', NULL, NULL, NULL, NULL, N'VLD', NULL, 0, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (40, N'8062', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXDL8', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (41, N'8063', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (42, N'8064', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT2', NULL, NULL, NULL, NULL, N'Ốm', NULL, 0, 0, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (43, N'8065', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT3', NULL, NULL, NULL, NULL, N'VLD', NULL, 0, 0, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (44, N'8066', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (45, N'8067', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXVT2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (46, N'8069', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXVT1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL)
GO
INSERT [dbo].[DiemDanh_NangSuatLaoDong] ([MaDiemDanh], [MaNV], [NgayDiemDanh], [CaDiemDanh], [ThoiGianThucTeDiemDanh], [MaDonVi], [NangSuatLaoDong], [HeSoChiaLuong], [DuBaoNguyCo], [GiaiPhapNguyCo], [LyDoVangMat], [Luong], [XacNhan], [DiLam], [GhiChu]) VALUES (48, N'8070', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC400000000 AS DateTime), N'PXKT1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[DiemDanh_NangSuatLaoDong] OFF
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'BNHL', N'Bơm nước hầm lò', N'Hầm lò')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'BNLT', N'Bơm nước lộ thiên', N'Lộ thiên')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'BT', N'Băng tải', N'Hầm lò')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'DD', N'Hệ thống dây đẫn', N'Cung cấp điện, truyền dẫn')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'MC', N'Máng cào', N'Hầm lò')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'MCC', N'Máy cắt, tủ cắt', N'Cung cấp điện, truyền dẫn')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'MX', N'Máy xúc', N'Lộ thiên')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'MXD', N'Máy xúc đá', N'Hầm lò')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'OTOHD', N'Ô tô vận tải Hyundai HD270', N'Lộ thiên')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'OTOKZ', N'Ô tô vận tải Kraz 65055', N'Lộ thiên')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'ST15', N'Hệ thống sàng tuyển 1,5 triệu tấn/năm', N'Sàng tuyển')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'ST25', N'Hệ thống sàng tuyển 2,5 triệu tấn/năm', N'Sàng tuyển')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'TBA', N'Trạm biến áp', N'Cung cấp điện, truyền dẫn')
GO
INSERT [dbo].[Equipment_category] ([Equipment_category_id], [Equipment_category_name], [divce_type]) VALUES (N'TTR', N'Tời trục', N'Hầm lò')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (1, N'Chờ điều động')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (2, N'Đang hoạt động')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (3, N'Đang sửa chữa')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (4, N'Hỏng')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (5, N'Đang bảo dưỡng')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (6, N'Đang điều động')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (7, N'Đang thu hồi')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (8, N'Đang thanh lý')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (9, N'Đang trung đại tu')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (10, N'Đang kiểm định')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (11, N'Đang chờ nghiệm thu')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (12, N'Đang hạn bảo đưỡng')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (13, N'Mới mua')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (14, N'Cấp mới')
GO
INSERT [dbo].[Status] ([statusid], [statusname]) VALUES (15, N'Đã thanh lý')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14L-5676', N'Ô tô Hyundai HD270', N'Huyndai', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOHD', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14L-5684', N'Ô tô Hyundai HD270', N'Huyndai', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOHD', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14M-5655', N'Ô tô Kamaz 6520', N'Kamaz', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOKZ', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14M-7618', N'Ô tô Kamaz 6520', N'Kamaz', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOKZ', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14M-7626', N'Ô tô Kamaz 6520', N'Kamaz', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOKZ', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14M-7905', N'Ô tô Kamaz 6520', N'Kamaz', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOKZ', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14M-7906', N'Ô tô Kamaz 6520', N'Kamaz', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOKZ', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'14M-7907', N'Ô tô Kamaz 6520', N'Kamaz', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'OTOKZ', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BNLT001', N'Máy bơm nước LT 500-70  (P=135 kW) số 1', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BNLT', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BNLT002', N'Máy bơm nước LT 500-70  (P=135 kW) số 2', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BNLT', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BNLT003', N'Máy bơm nước LT 360-52,5x2  (P=200 kW) số 3', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BNLT', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BT001', N'Băng tải B650  số 1', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BT', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BT002', N'Băng tải B1000 số 2', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BT', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BT003', N'Băng tải B800 số 1', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BT', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BT004', N'Băng tải B800 số 2', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BT', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'BT005', N'Băng tải B650 số 3', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'BT', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MC001', N'Bộ máng cào SGB 420/22', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'MC', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MC002', N'Máng cào than mã hiệu MC 420/22', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'MC', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MC003', N'Máng cào SGZ630/220', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'MC', N'PXKT1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX001', N'Kobelco SK230LC-6', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX002', N'Kobelco SK330LC-6', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX003', N'Hitachi ZX670LCH-3', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX004', N'Kawasaky 85 ZIV', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX005', N'Kawasaky 80 ZIV', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX006', N'Kawasaky 90 ZIV Số 1', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX007', N'Kawasaky 90 ZIV Số 2', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'MX008', N'Hyundai HL770-9S', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 16, N'SK230LC-6', N'A', N'Đường kế toán', N'MX', N'PXLT')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'ST001', N'Băng tải cấp liệu (số 1)', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'ST15', N'PXDL2')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'ST002', N'Băng tải cấp liệu (số 2)', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'ST15', N'PXDL2')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'ST003', N'Băng tải nhặt tay (số 1)', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'ST15', N'PXDL2')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'TBA001', N'Trạm biến áp 35/6kV-2x7500kVA +1x5000kVA', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'TBA', N'PXDL1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'TBA002', N'TBA số1:160kva- 6/0,4kv.(khu VP mỏ Ngã hai)', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'TBA', N'PXDL1')
GO
INSERT [dbo].[Equipment] ([equipmentId], [equipment_name], [supplier], [date_import], [depreciation_estimate], [depreciation_present], [durationOfInspection], [durationOfInsurance], [usedDay], [durationOfMaintainance], [total_operating_hours], [current_Status], [fabrication_number], [mark_code], [quality_type], [input_channel], [Equipment_category_id], [department_id]) VALUES (N'TBA003', N'TBA số2 160kVA - 6/0,4kv (MB +27) ', N'TCMOTOR', CAST(0x74320B00 AS Date), 20, 1.5, CAST(0xCB340B00 AS Date), CAST(0x803A0B00 AS Date), CAST(0x7D330B00 AS Date), CAST(0xB2350B00 AS Date), 365, 2, 20, N'HD270', N'A', N'Đường kế toán', N'TBA', N'PXDL1')
GO
SET IDENTITY_INSERT [dbo].[Incident] ON 

GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (1, CAST(0x0000A883014F1540 AS DateTime), CAST(0x0000A8BE00B28720 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX001', N'PXLT')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (2, CAST(0x0000A88300CDFE60 AS DateTime), CAST(0x0000A88500CB3F40 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX001', N'PXKT1')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (3, CAST(0x0000A89F00EEF3E0 AS DateTime), CAST(0x0000A89F0130DEE0 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX002', N'PXKT2')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (4, CAST(0x0000A89F00CB3F40 AS DateTime), CAST(0x0000A8BE00CB3F40 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX003', N'PXDL1')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (5, CAST(0x0000A8BE00EC34C0 AS DateTime), CAST(0x0000A8C1002932E0 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX004', N'PXDL2')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (6, CAST(0x0000A8BE00895440 AS DateTime), CAST(0x0000A8C00078D980 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX005', N'PXDL1')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (7, CAST(0x0000A8BE009C8E20 AS DateTime), CAST(0x0000A8BE00CB3F40 AS DateTime), N'Lò DV-110V7.3', N'Đứt xích', N'MX006', N'PXLT')
GO
INSERT [dbo].[Incident] ([incident_id], [start_time], [end_time], [detail_location], [reason], [equipmentId], [department_id]) VALUES (8, CAST(0x0000A8DC00A0ACD0 AS DateTime), NULL, N'Lò DV-110V7.3', NULL, N'MX001', N'PXKT3')
GO
SET IDENTITY_INSERT [dbo].[Incident] OFF
GO
SET IDENTITY_INSERT [dbo].[Maintain_Car] ON 

GO
INSERT [dbo].[Maintain_Car] ([maintainid], [equipmentid], [date], [departmentid], [maintain_content]) VALUES (1, N'14M-7905', CAST(0x893F0B00 AS Date), N'PXLT', N'Thay dầu')
GO
INSERT [dbo].[Maintain_Car] ([maintainid], [equipmentid], [date], [departmentid], [maintain_content]) VALUES (2, N'14M-7905', CAST(0x8A3F0B00 AS Date), N'PXLT', N'Thay dầu')
GO
INSERT [dbo].[Maintain_Car] ([maintainid], [equipmentid], [date], [departmentid], [maintain_content]) VALUES (3, N'14M-7905', CAST(0x8B3F0B00 AS Date), N'PXLT', N'Thay dầu')
GO
INSERT [dbo].[Maintain_Car] ([maintainid], [equipmentid], [date], [departmentid], [maintain_content]) VALUES (4, N'14M-7905', CAST(0x8C3F0B00 AS Date), N'PXLT', N'Thay dầu')
GO
SET IDENTITY_INSERT [dbo].[Maintain_Car] OFF
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'BL', N'Bu lông M20x200', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'BRZ39', N'Bánh răng Z39', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'CSGC', N'Cao su giảm chấn bánh xe', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'DAU', N'Dầu diezen', N'L', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'DIEN', N'Điện', N'kWh', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'KD', N'Khóa dịch KJ31,5', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'KNM16', N'Khớp nối móc KJ16', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'KNM19', N'Khớp nối móc KJ19', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'LHD', N'Lọc hồi dịch KJ19', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'P110', N'Phớt 110x125', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'P135', N'Phớt 110x135', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'P190', N'Phớt 190x230', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'P220', N'Phớt 220x260x10', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'T1.5', N'Thép tấm 1,5mm', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'T10', N'Thép tấm 10mm', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'T12', N'Thép tấm 12mm', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'T15', N'Thép tấm 15mm', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'T5', N'Thép tấm 5mm', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'T6', N'Thép tấm 6mm', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'VTG', N'Van tay gạt KJ16', N'Cái', NULL)
GO
INSERT [dbo].[Supply] ([supply_id], [supply_name], [unit], [price]) VALUES (N'XANG', N'Xăng A95', N'L', NULL)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'P110', N'PXKT2', CAST(0x623F0B00 AS Date), 14, 12, 5)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'P190', N'PXKT3', CAST(0x623F0B00 AS Date), 12, 5, 4)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'P220', N'PXLT', CAST(0x623F0B00 AS Date), 13, 11, 5)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'T10', N'PXKT2', CAST(0x623F0B00 AS Date), 10, 9, 3)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'T12', N'PXKT4', CAST(0x623F0B00 AS Date), 14, 7, 2)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'T15', N'PXKT5', CAST(0x623F0B00 AS Date), 10, 6, 3)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'T5', N'PXKT1', CAST(0x623F0B00 AS Date), 15, 10, 5)
GO
INSERT [dbo].[Supply_tieuhao] ([supplyid], [departmentid], [date], [quantity], [used], [thuhoi]) VALUES (N'T6', N'PXKT3', CAST(0x623F0B00 AS Date), 10, 8, 4)
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 

GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (1, CAST(0x03400B00 AS Date), N'BT002', N'Đào đá', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (2, CAST(0x02400B00 AS Date), N'BT002', N'Đào than', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (3, CAST(0x01400B00 AS Date), N'BT002', N'Chở đá', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (4, CAST(0x00400B00 AS Date), N'BT002', N'Chở than', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (5, CAST(0xFF3F0B00 AS Date), N'BT002', N'Xúc đá', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (6, CAST(0xFE3F0B00 AS Date), N'BT002', N'Đào than', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (7, CAST(0xFD3F0B00 AS Date), N'BT002', N'Chở than', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (8, CAST(0xFC3F0B00 AS Date), N'BT002', N'Chở than', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (9, CAST(0xFB3F0B00 AS Date), N'BT002', N'Chở đá', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (10, CAST(0xFA3F0B00 AS Date), N'BT002', N'Chở than', 10, 150)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (11, CAST(0x03400B00 AS Date), N'14M-7905', N'Xúc đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (12, CAST(0x02400B00 AS Date), N'14M-7905', N'Chở than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (13, CAST(0x01400B00 AS Date), N'14M-7905', N'Chở đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (14, CAST(0x00400B00 AS Date), N'14M-7905', N'Xúc than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (15, CAST(0xFF3F0B00 AS Date), N'14M-7905', N'Xúc than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (16, CAST(0xFE3F0B00 AS Date), N'14M-7905', N'Xúc than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (17, CAST(0xFD3F0B00 AS Date), N'14M-7905', N'Chở đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (18, CAST(0xFC3F0B00 AS Date), N'14M-7905', N'Xúc đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (19, CAST(0xFB3F0B00 AS Date), N'14M-7905', N'Chở than', 10, 30)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (20, CAST(0xFA3F0B00 AS Date), N'14M-7905', N'Xúc đá', 10, 20)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (21, CAST(0xDB3F0B00 AS Date), N'14M-7905', N'Chở than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (22, CAST(0xBD3F0B00 AS Date), N'14M-7905', N'Xúc đá', 10, 40)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (23, CAST(0x9E3F0B00 AS Date), N'14M-7905', N'Chở đá', 10, 30)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (24, CAST(0x03400B00 AS Date), N'MX008', N'Xúc đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (25, CAST(0x02400B00 AS Date), N'MX008', N'Chở than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (26, CAST(0x01400B00 AS Date), N'MX008', N'Chở đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (27, CAST(0x00400B00 AS Date), N'MX008', N'Xúc đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (28, CAST(0xFF3F0B00 AS Date), N'MX008', N'Chở than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (29, CAST(0xFE3F0B00 AS Date), N'MX008', N'Xúc đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (30, CAST(0xFD3F0B00 AS Date), N'MX008', N'Xúc đá', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (31, CAST(0xFC3F0B00 AS Date), N'MX008', N'Chở than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (32, CAST(0xFB3F0B00 AS Date), N'MX008', N'Xúc than', 10, 50)
GO
INSERT [dbo].[Activity] ([activityid], [date], [equipmentid], [activityname], [hours_per_day], [quantity]) VALUES (33, CAST(0xFA3F0B00 AS Date), N'MX008', N'Chở đá', 10, 50)
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'AT001', N'Kích cỡ gầu', N'mm', N'MX')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'AT002', N'Khổ đường ray', N'mm', N'MX')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'AT003', N'Lực kéo', N'lb', N'MX')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'AT004', N'tốc độ xoay', N'rpm', N'MX')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'OTO001', N'Số khung', N'mm', N'OTOHD')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'OTO002', N'Số máy', N'mm', N'OTOHD')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'OTO003', N'Số khung', N'mm', N'OTOKZ')
GO
INSERT [dbo].[Equipment_category_attribute] ([Equipment_category_attribute_id], [Equipment_category_attribute_name], [unit], [Equipment_category_id]) VALUES (N'OTO004', N'Số máy', N'mm', N'OTOKZ')
GO
INSERT [dbo].[Category_attribute_value] ([Value], [equipmentId], [Equipment_category_id], [Equipment_category_attribute_id]) VALUES (1000, N'MX001', N'MX', N'AT001')
GO
INSERT [dbo].[Category_attribute_value] ([Value], [equipmentId], [Equipment_category_id], [Equipment_category_attribute_id]) VALUES (1000, N'MX001', N'MX', N'AT002')
GO
INSERT [dbo].[Category_attribute_value] ([Value], [equipmentId], [Equipment_category_id], [Equipment_category_attribute_id]) VALUES (1000, N'MX001', N'MX', N'AT003')
GO
INSERT [dbo].[Category_attribute_value] ([Value], [equipmentId], [Equipment_category_id], [Equipment_category_attribute_id]) VALUES (1000, N'MX001', N'MX', N'AT004')
GO
INSERT [dbo].[Equipment_attribute] ([Equipment_attribute_id], [Equipment_attribute_name], [value], [unit], [equipmentId]) VALUES (N'SK001', N'Dung tích:', 123456789, N'Cái', N'14L-5684')
GO
INSERT [dbo].[Equipment_attribute] ([Equipment_attribute_id], [Equipment_attribute_name], [value], [unit], [equipmentId]) VALUES (N'SK002', N'Yeah yeah', 123456789, N'l', N'14M-7626')
GO
INSERT [dbo].[Equipment_attribute] ([Equipment_attribute_id], [Equipment_attribute_name], [value], [unit], [equipmentId]) VALUES (N'SK003', N'GG', 123456789, N'a', N'14L-5676')
GO
INSERT [dbo].[Equipment_attribute] ([Equipment_attribute_id], [Equipment_attribute_name], [value], [unit], [equipmentId]) VALUES (N'SM001', N'S? bánh', 123456789, N'B?', N'14L-5684')
GO
INSERT [dbo].[Equipment_attribute] ([Equipment_attribute_id], [Equipment_attribute_name], [value], [unit], [equipmentId]) VALUES (N'SM002', N'Oh yeah', 123456789, N'm', N'14M-7626')
GO
INSERT [dbo].[Equipment_attribute] ([Equipment_attribute_id], [Equipment_attribute_name], [value], [unit], [equipmentId]) VALUES (N'SM003', N'Congrate', 123456789, N'b', N'14L-5676')
GO
SET IDENTITY_INSERT [dbo].[Equipment_Inspection] ON 

GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (1, N'14L-5676', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (2, N'14L-5684', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (3, N'14M-5655', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (4, N'14M-7618', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (5, N'14M-7626', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (6, N'14M-7905', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (7, N'14M-7906', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (8, N'14M-7907', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (9, N'BNLT001', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (10, N'BNLT002', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (11, N'BNLT003', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (12, N'BT001', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (13, N'BT002', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (14, N'BT003', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (15, N'BT004', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (16, N'BT005', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (17, N'MC001', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (18, N'MC002', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (19, N'MC003', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (20, N'MX001', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (21, N'MX002', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (22, N'MX003', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (23, N'MX004', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (24, N'MX005', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (25, N'MX006', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (26, N'MX007', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (27, N'MX008', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (28, N'ST001', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (29, N'ST002', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (30, N'ST003', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (31, N'TBA001', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (32, N'TBA002', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Equipment_Inspection] ([inspect_id], [equipmentId], [inspect_expected_date], [inspect_start_date], [inspect_end_date]) VALUES (33, N'TBA003', CAST(0x00009F7000000000 AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Equipment_Inspection] OFF
GO
SET IDENTITY_INSERT [dbo].[Fuel_activities_consumption] ON 

GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (1, 1350, CAST(0xEF3E0B00 AS Date), N'14L-5676', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (2, 400, CAST(0xEF3E0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (3, 1350, CAST(0xF03E0B00 AS Date), N'14L-5676', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (4, 400, CAST(0xF03E0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (5, 1350, CAST(0xF13E0B00 AS Date), N'14L-5676', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (6, 400, CAST(0xF13E0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (7, 1460, CAST(0xBD3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (8, 10, CAST(0xDB3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (9, 1460, CAST(0xDB3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (10, 10, CAST(0xFA3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (11, 1460, CAST(0xFA3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (12, 10, CAST(0xFB3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (13, 1250, CAST(0xFB3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (14, 10, CAST(0xFC3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (15, 1250, CAST(0xFC3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (16, 10, CAST(0xFD3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (17, 1250, CAST(0xFD3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (18, 10, CAST(0xFE3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (19, 1250, CAST(0xFE3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (20, 10, CAST(0xFF3F0B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (21, 1250, CAST(0xFF3F0B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (22, 10, CAST(0x00400B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (23, 1250, CAST(0x00400B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (24, 10, CAST(0x01400B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (25, 1250, CAST(0x01400B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (26, 10, CAST(0x02400B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (27, 1250, CAST(0x02400B00 AS Date), N'BT002', N'DIEN')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (28, 10, CAST(0x03400B00 AS Date), N'14L-5676', N'XANG')
GO
INSERT [dbo].[Fuel_activities_consumption] ([fuelid], [consumption_value], [date], [equipmentId], [fuel_type]) VALUES (29, 1250, CAST(0x03400B00 AS Date), N'BT002', N'DIEN')
GO
SET IDENTITY_INSERT [dbo].[Fuel_activities_consumption] OFF
GO
SET IDENTITY_INSERT [dbo].[Maintain_Car_Detail] ON 

GO
INSERT [dbo].[Maintain_Car_Detail] ([maintaindetailid], [maintainid], [supplyid], [quantity], [supplyType], [supplyStatus]) VALUES (1, 1, N'T1.5', 2, 1, 1)
GO
INSERT [dbo].[Maintain_Car_Detail] ([maintaindetailid], [maintainid], [supplyid], [quantity], [supplyType], [supplyStatus]) VALUES (2, 2, N'T10', 2, 1, 2)
GO
INSERT [dbo].[Maintain_Car_Detail] ([maintaindetailid], [maintainid], [supplyid], [quantity], [supplyType], [supplyStatus]) VALUES (3, 3, N'T10', 2, 1, 2)
GO
INSERT [dbo].[Maintain_Car_Detail] ([maintaindetailid], [maintainid], [supplyid], [quantity], [supplyType], [supplyStatus]) VALUES (4, 3, N'T12', 2, 1, 2)
GO
INSERT [dbo].[Maintain_Car_Detail] ([maintaindetailid], [maintainid], [supplyid], [quantity], [supplyType], [supplyStatus]) VALUES (5, 3, N'T15', 2, 1, 2)
GO
INSERT [dbo].[Maintain_Car_Detail] ([maintaindetailid], [maintainid], [supplyid], [quantity], [supplyType], [supplyStatus]) VALUES (6, 4, N'P220', 2, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Maintain_Car_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTiet_NhiemVu_NhanVien] ON 

GO
INSERT [dbo].[ChiTiet_NhiemVu_NhanVien] ([NgayNhanNhiemVu], [MaNV], [MaNhiemVu], [MaChiTiet_NhiemVu_NhanVien], [IsInProcess]) VALUES (CAST(0x38400B00 AS Date), N'8056', 2, 1, 0)
GO
INSERT [dbo].[ChiTiet_NhiemVu_NhanVien] ([NgayNhanNhiemVu], [MaNV], [MaNhiemVu], [MaChiTiet_NhiemVu_NhanVien], [IsInProcess]) VALUES (CAST(0x38400B00 AS Date), N'8057', 2, 2, 0)
GO
INSERT [dbo].[ChiTiet_NhiemVu_NhanVien] ([NgayNhanNhiemVu], [MaNV], [MaNhiemVu], [MaChiTiet_NhiemVu_NhanVien], [IsInProcess]) VALUES (CAST(0x38400B00 AS Date), N'8057', 2, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[ChiTiet_NhiemVu_NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[QuyetDinh] ON 

GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (1, N'1', CAST(0x803F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (2, N'2', CAST(0x813F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (3, N'3', CAST(0x823F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (4, N'4', CAST(0x833F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (5, N'5', CAST(0x843F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (6, N'6', CAST(0x853F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (7, N'7', CAST(0x863F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (8, N'8', CAST(0x873F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (9, N'9', CAST(0x883F0B00 AS Date))
GO
INSERT [dbo].[QuyetDinh] ([MaQuyetDinh], [SoQuyetDinh], [NgayQuyetDinh]) VALUES (10, N'10', CAST(0x803F0B00 AS Date))
GO
SET IDENTITY_INSERT [dbo].[QuyetDinh] OFF
GO
SET IDENTITY_INSERT [dbo].[QuanHeGiaDinh] ON 

GO
INSERT [dbo].[QuanHeGiaDinh] ([MaQuanHeGiaDinh], [LoaiGiaDinh], [MoiQuanHe], [NgaySinh], [LyLich], [MaNV], [HoTen], [NoiThuongTru], [SoDienThoai]) VALUES (1, N'Nhà vợ', N'Bố', CAST(0x3B400B00 AS Date), N'Đi làm', N'8056', N'Nguyễn A Xử', NULL, NULL)
GO
INSERT [dbo].[QuanHeGiaDinh] ([MaQuanHeGiaDinh], [LoaiGiaDinh], [MoiQuanHe], [NgaySinh], [LyLich], [MaNV], [HoTen], [NoiThuongTru], [SoDienThoai]) VALUES (2, N'Nhà chồng', N'Mẹ', CAST(0x3B400B00 AS Date), N'Đi làm', N'8056', N'Nguyễn Thân Sinh', NULL, NULL)
GO
INSERT [dbo].[QuanHeGiaDinh] ([MaQuanHeGiaDinh], [LoaiGiaDinh], [MoiQuanHe], [NgaySinh], [LyLich], [MaNV], [HoTen], [NoiThuongTru], [SoDienThoai]) VALUES (3, N'Bản thân', N'', NULL, N'', N'8056', N'', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[QuanHeGiaDinh] OFF
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8057', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8058', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8059', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8060', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8061', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8062', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8063', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8064', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8065', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8066', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8067', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8069', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[HoSo] ([TrangThaiHoSo], [NgayNhanHoSo], [NguoiGiaoHoSo], [CamKetTuyenDung], [QuyetDinhTiepNhanDVC], [QDChamDutHopDongDVC], [NLDHocTheoChiTieuCTDT], [NguoiBanGiaoBangNhapKho], [NguoiGiuHoSo], [MaNV], [NgayQuyetDinhTuyenDung], [NgayDiLam], [DonViKyQuyetDinhTiepNhan], [NgayQuyetDinhChamDut], [NgayChamDut], [DonViKyQuyetDinhChamDut]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'8070', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8057', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8058', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8059', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8060', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8061', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8062', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8063', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8064', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8065', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8066', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8067', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8069', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
INSERT [dbo].[FakeAPI] ([MaNV], [NgayDiemDanh], [CaDiemDanh], [GioDiemDanh]) VALUES (N'8070', CAST(0x1F400B00 AS Date), 1, CAST(0x0000AAC4009C8E20 AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (1, N'Trần Thị Thương', N'thuongtt', N'gj37F6TZpGBfr6ITnly2IQ==', N'Chuyên Viên CĐVT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (2, N'Hoàng Bá Long', N'longhb', N'Fc+jC62BdOx2oXf4jd8exw==', N'Chuyên Viên CĐVT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (3, N'Nguyễn Văn Trữ', N'trunv', N'trunv', N'Chuyên Viên CĐVT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (4, N'Lại Bình Minh', N'minhlb', N'minhlb', N'Chuyên Viên CĐVT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (5, N'Nguyễn Văn Học', N'hocnv', N'WDs0YAymf9ffpA2YL3W6OA==', N'Phó Phòng TCLĐ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (6, N'Nguyễn Thị Hòa', N'hoant', N'hoant', N'Chuyên Viên TCLĐ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (7, N'Nguyễn Bá Vương', N'vuongnb', N'ctlJgcp3tKeOaa6b0IW1ig==', N'Chuyên Viên TCLĐ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (8, N'Nguyễn Thị Trà', N'trant', N'trant', N'Chuyên Viên TCLĐ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (9, N'Nguyễn Văn Long', N'longnv', N'rfSpMzUIM+4RBjHg4d4f/w==', N'Chuyên Viên TCLĐ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (10, N'Trần Văn Tú', N'tutv', N'tutv', N'Giám Đốc', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (11, N' Lê Minh Đức', N'duclm', N'duclm', N'Chuyên Viên KCS', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (12, N'Vũ Văn An', N'anvv', N'anvv', N'Chuyên Viên Điều Khiển', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (13, N'Nguyễn Đức Cương', N'cuongnd', N'cuongnd', N'Quản Đốc PXKT', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (14, N'ADMIN', N'admin', N'ISMvKXpXpadDiUoOSoAfww==', N'Quản lí phần mềm', NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (22, N'cdvt', N'cdvt', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Chuyên Viên CĐVT', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (23, N'tcld', N'tcld', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Chuyên Viên TCLD', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (24, N'bgd', N'bgd', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Giám Đốc', NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (25, N'dk', N'dk', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Điều Khiển', NULL, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (26, N'pxkt', N'pxkt', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Phân Xưởng Khai Thác', NULL, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (27, N'kcs', N'kcs', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Chuyên Viên KCS', NULL, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (28, N'pxds', N'pxds', N'4QrcOUm6Wau+VuBX8g+IPg==', N'Phân Xưởng Đời Sống', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (29, N'Nguyễn Thị Thúy', N'thuynt', N'UKj1ec3L2bPqFTQ8TCbp+w==', N'Chuyên Viên TCLĐ', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Account] ([ID], [Name], [Username], [Password], [Position], [NVID], [CDVT], [TCLD], [BGD], [DK], [KCS], [PXKT], [PXDL], [PXVT], [PXST], [PXPV], [PXDS], [PXCDM], [PXTGQLM], [PXXD], [PXLT], [AT], [KCM], [ADMIN]) VALUES (30, N'Nguyễn Văn Thành', N'thanhnv', N'xyUIXxi+3+1z/tqaMh6tQA==', N'Trưởng phòng TCLĐ', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Account_Right] ON 

GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (1, N'1', 1, N'Thêm mới thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (2, N'1', 1, N'Cập nhật ngày kiểm định thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (3, N'1', 1, N'Xuất ra excel danh sách thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (4, N'1', 1, N'Sửa thông tin thiết bị huy động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (5, N'1', 1, N'Xóa thông tin thiết bị huy động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (6, N'1', 1, N'Xem màn huy động thiết bị', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (7, N'1', 29, N'Xem màn cập nhật hoạt động thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (8, N'1', 29, N'Thêm cập nhật hoạt động thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (9, N'1', 29, N'Chỉnh sửa cập nhập hoạt động thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (10, N'1', 2, N'Xem màn huy động ô tô', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (11, N'1', 2, N'Thêm mới ô tô', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (12, N'1', 2, N'Sửa thông tin ô tô', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (13, N'1', 3, N'Xem màn cập nhật hoạt động ô tô', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (14, N'1', 3, N'Thêm cập nhật hoạt động ô tô', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (15, N'1', 3, N'Chỉnh sửa cập nhật hoạt động ô tô', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (16, N'1', 4, N'Xem màn bảo dưỡng hằng ngày ô tô', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (17, N'1', 4, N'Thêm bảo dưỡng hằng ngày ô tô', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (18, N'1', 4, N'Chỉnh sửa bảo dưỡng hàng ngày ô tô', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (19, N'1', 5, N'Xem màn thông tin sự cố', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (20, N'1', 5, N'Thêm sự cố', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (21, N'1', 5, N'Chỉnh sửa/Cập nhật sự cố', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (23, N'1', 6, N'Xem danh sách quyết định chưa xử lí', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (24, N'1', 7, N'Xem danh sách kiểm định', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (25, N'1', 8, N'Xem màn danh sách thiết bị chờ nghiệm thu', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (26, N'1', 9, N'Xem màn danh sách thiết bị đã nghiệm thu', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (27, N'1', 10, N'Xem màn xin cấp vật tư sửa chữa thường xuyên', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (28, N'1', 11, N'Xem màn tổng hợp vật tư sửa chữa thường xuyên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (29, N'1', 12, N'Xem màn tiêu hao vật tư', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (30, N'1', 13, N'Danh sách quyết định sửa chữa', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (31, N'1', 14, N'Danh sách quyết định bảo dưỡng', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (33, N'1', 10, N'Thêm vật tư sửa chữa thường xuyên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (35, N'1', 11, N'Chỉnh sửa bảng chi tiết tổng hợp vật tư', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (37, N'1', 12, N'Chỉnh sửa tiêu hao vật tư', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (38, N'1', 16, N'Danh sách quyết định điều động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (39, N'1', 17, N'Danh sách quyết định thu hồi', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (40, N'1', 18, N'Danh sách quyết định thanh lí', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (41, N'1', 19, N'Danh sách quyết định kiểm định', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (42, N'1', 20, N'Danh sách quyết định trùng đại tu', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (43, N'1', 21, N'Báo cáo sử dụng năng lượng', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (44, N'1', 22, N'Báo cáo sử dụng nhiên liệu', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (45, N'1', 23, N'Báo cáo huy động bơm thoát nước', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (46, N'1', 24, N'Báo cáo thanh lí thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (47, N'1', 25, N'Báo cáo biến động tăng giảm thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (48, N'1', 26, N'Báo cáo sữa chữa thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (49, N'1', 27, N'Báo cáo trung đại tu thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (50, N'1', 28, N'Báo cáo thu hồi thiết bị', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (51, N'2', 1, N'Xem danh sách hồ sơ nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (52, N'2', 1, N'Tuyển dụng nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (53, N'2', 1, N'Chỉnh sửa hồ sơ nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (54, N'2', 1, N'Xem lịch sử làm việc/điều chuyển nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (55, N'2', 1, N'Thanh lí hợp đồng nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (56, N'2', 1, N'Xem chi tiết hồ sơ nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (57, N'2', 8, N'Xem báo cáo thực hiện lao động, tiền lương công nhân', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (58, N'2', 2, N'Xem danh sách chứng chỉ lao động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (59, N'2', 2, N'Thêm chứng chỉ lao động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (60, N'2', 2, N'Chỉnh sửa chứng chỉ lao động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (61, N'2', 2, N'Xóa chứng chỉ lao động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (62, N'2', 3, N'Danh sách bảo hộ lao động', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (63, N'2', 4, N'Xem bảng tổng hợp toàn công ty', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (64, N'2', 5, N'Xem màn điều động nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (65, N'2', 5, N'Điều động nhân viên', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (67, N'2', 6, N'Báo cáo năng suất lao động và tiền lương', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (71, N'3', 2, N'Báo cáo chất lượng than tồn kho - tiêu thụ và sản xuất', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (72, N'3', 2, N'Sửa báo cáo chất lượng than tồn kho - tiêu thụ và sản xuất', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (73, N'3', 1, N'Nhập báo cáo chất lượng than tồn kho - tiêu thụ và sản xuất', 0)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (74, N'4', 1, N'Màn báo cáo chi tiết sản xuất than', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (75, N'4', 1, N'Chỉnh sửa báo cáo chi tiết sản xuất than', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (77, N'4', 2, N'Báo cáo nhân lực ngày/tháng', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (79, N'4', 3, N'Báo cáo sự cố', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (80, N'5', 1, N'Ban giám đốc', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (81, N'6', 1, N'Nhập báo cáo thực hiện kế hoạch sản xuất', 1)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (82, N'1', 8, N'Nghiệm thu thiết bị', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (83, N'1', 13, N'Thêm danh sách quyết định sửa chữa', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (84, N'1', 13, N'Chỉnh sửa/Cập nhật quyết định sửa chữa', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (85, N'1', 14, N'Thêm danh sách quyết định bảo dưỡng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (86, N'1', 14, N'Chỉnh sửa/Cập nhật quyết định bảo dưỡng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (87, N'1', 16, N'Thêm danh sách quyết định điều động', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (88, N'1', 16, N'Chỉnh sửa/Cập nhật quyết định điều động', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (89, N'1', 17, N'Thêm danh sách quyết định thu hồi', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (90, N'1', 17, N'Chỉnh sửa/Cập nhật quyết định thu hồi', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (91, N'1', 18, N'Thêm danh sách quyết định thanh lí', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (92, N'1', 18, N'Chỉnh sửa/Cập nhật quyết định thanh lí', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (93, N'1', 19, N'Thêm danh sách quyết định kiểm định', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (94, N'1', 19, N'Chỉnh sửa/Cập nhật quyết định kiểm định', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (95, N'1', 20, N'Thêm danh sách quyết định trung đại tu', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (96, N'1', 20, N'Chỉnh sửa/Cập nhật quyết định trung đại tu', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (102, N'2', 12, N'Xem màn đã xữ lí quyết định điều động', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (103, N'2', 13, N'Xem màn chưa xử lí quyết định điều động', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (104, N'2', 14, N'Màn tổng hợp các đơn vị chấm dứt tuyển dụng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (106, N'2', 15, N'Xem màn tổng hợp tuyển dụng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (108, N'2', 16, N'Xem màn tổng hợp chấm dứt', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (110, N'2', 17, N'Xem báo cáo tăng giảm lao động', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (111, N'2', 18, N'Xem màn biên bản chung', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (112, N'2', 19, N'Xem lịch sử thay đổi dữ liệu', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (114, N'1', 1, N'Thêm nhóm thiết bị', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (115, N'1', 2, N'Cập nhật ngày kiểm định ô tô', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (116, N'1', 6, N'Xử lí quyết định', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (117, N'1', 15, N'Màn cấp vật tư sữa chữa thường xuyên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (118, N'1', 11, N'Chỉnh sửa bảng tổng hợp vật tư', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (119, N'2', 13, N'Thêm mã quyết định điều động nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (120, N'2', 13, N'Xóa quyết định điều động nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (121, N'2', 12, N'Xóa quyết định đã xử lí', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (122, N'12', 20, N'Xem màn đăng kí suất ăn', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (123, N'12', 20, N'Đăng kí suất ăn', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (124, N'2', 21, N'Xem màn chưa quyết định chấm dứt hợp đồng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (125, N'2', 21, N'Thêm mã quyết định chấm dứt hợp đồng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (126, N'2', 21, N'Xóa quyết định chờ chấm dứt hợp đồng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (127, N'2', 22, N'Xem màn đã chấm dứt hợp đồng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (128, N'2', 22, N'Xóa quyết định đã chấm dứt hợp đồng', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (129, N'2', 23, N'Xem màn quản lí hồ sơ trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (130, N'2', 23, N'Xem chi tiết hồ sơ nhân viên trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (131, N'2', 23, N'Sửa chi tiết hồ sơ nhân viên trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (132, N'2', 24, N'Xem quản lí hồ sơ ngoài công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (133, N'2', 24, N'Xem chi tiết hồ sơ ngoài công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (134, N'2', 24, N'Sửa chi tiết hồ sơ ngoài công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (135, N'2', 25, N'Xem màn chuẩn hóa tên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (136, N'2', 25, N'Thêm chuẩn hóa tên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (137, N'2', 25, N'Chỉnh sửa chuẩn hóa tên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (138, N'2', 26, N'Xem màn đăng kí nhiệm vụ', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (139, N'2', 26, N'Xác nhận đăng kí nhiệm vụ', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (140, N'2', 26, N'Xem chứng chỉ của 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (141, N'2', 27, N'Xem màn báo cáo tình trạng chứng chỉ', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (142, N'2', 27, N'Gia hạn chứng chỉ', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (143, N'2', 27, N'Đăng kí chứng chỉ', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (144, N'3', 1, N'Lưu báo cáo', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (146, N'2', 23, N'Xem danh sách giấy tờ của nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (147, N'2', 23, N'Sửa giấy tờ của nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (148, N'2', 23, N'Xóa giấy tờ của nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (149, N'2', 26, N'Xem danh sách chứng chỉ của cả công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (150, N'2', 26, N'Thêm chứng chỉ mới của công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (151, N'2', 26, N'Sửa chứng chỉ mới của công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (152, N'2', 26, N'Xóa chứng chỉ của công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (153, N'2', 26, N'Xem danh sách chứng chỉ của nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (154, N'2', 26, N'Thêm chứng chỉ cho 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (155, N'2', 26, N'Sửa chứng chỉ của 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (156, N'2', 26, N'Xóa chứng chỉ của nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (157, N'2', 23, N'Thêm giấy tờ cho 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (158, N'4', 4, N'Nhập tai nạn lao động', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (159, N'2', 23, N'Xem danh sách bằng cấp, giấy chứng nhận có trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (160, N'2', 23, N'Thêm bằng cấp, giấy chứng nhận cho công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (161, N'2', 23, N'Sửa bằng cấp, giấy chứng nhận trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (162, N'2', 23, N'Xóa bằng cấp, giấy chứng nhận có trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (163, N'2', 23, N'Xem danh sách bằng cấp, giấy chứng nhận cho 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (164, N'2', 23, N'Thêm bằng cấp, giấy chứng nhận cho 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (165, N'2', 23, N'Sửa bằng cấp, giấy chứng nhận cho 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (166, N'2', 23, N'Xóa bằng cấp, giấy chứng nhận của 1 nhân viên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (167, N'2', 25, N'Xóa chuẩn hóa tên', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (168, N'2', 23, N'Thêm đợt bổ sung sơ yếu lí lịch của hồ sơ trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (169, N'2', 23, N'Sửa đợt bổ sung sơ yếu lí lịch của hồ sơ trong công ty', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (170, N'1', 5, N'Xuất excel màn sự cố', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (171, N'1', 7, N'Cập nhật kiểm định', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (172, N'1', 69, N'Xem loại vật tư', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (173, N'1', 69, N'Thêm vật tư', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (174, N'1', 69, N'Xóa vật tư', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (175, N'2', 30, N'Xem danh sách phòng ban', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (176, N'2', 30, N'Thêm phòng ban', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (177, N'2', 30, N'Sửa phòng ban', NULL)
GO
INSERT [dbo].[Account_Right] ([ID], [ModuleID], [GroupID], [Right], [isBasic]) VALUES (178, N'2', 30, N'Xóa phòng ban', NULL)
GO
SET IDENTITY_INSERT [dbo].[Account_Right] OFF
GO
SET IDENTITY_INSERT [dbo].[Account_Right_Detail] ON 

GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3028, 1, 1)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3029, 1, 6)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3303, 5, 57)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3304, 5, 67)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3305, 7, 138)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3306, 7, 139)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3307, 7, 140)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3308, 7, 141)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3309, 7, 142)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3310, 7, 143)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3311, 7, 149)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3312, 7, 150)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3313, 7, 151)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3314, 7, 152)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3315, 7, 153)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3316, 7, 154)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3317, 7, 155)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3318, 7, 156)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3340, 9, 51)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3341, 9, 52)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3342, 9, 53)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3343, 9, 54)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3344, 9, 55)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3345, 9, 56)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3346, 9, 64)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3347, 9, 65)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3348, 9, 102)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3349, 9, 103)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3350, 9, 104)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3351, 9, 106)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3352, 9, 108)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3353, 9, 119)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3354, 9, 120)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3355, 9, 121)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3356, 9, 124)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3357, 9, 125)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3358, 9, 126)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3359, 9, 127)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3360, 9, 128)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2387, 14, 1)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2388, 14, 2)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2389, 14, 3)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2390, 14, 4)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2391, 14, 5)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2392, 14, 6)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2393, 14, 7)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2394, 14, 8)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2395, 14, 9)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2396, 14, 10)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2397, 14, 11)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2398, 14, 12)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2399, 14, 13)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2400, 14, 14)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2401, 14, 15)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2402, 14, 16)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2403, 14, 17)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2404, 14, 18)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2405, 14, 19)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2406, 14, 20)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2407, 14, 21)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2408, 14, 22)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2409, 14, 23)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2410, 14, 24)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2411, 14, 25)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2412, 14, 26)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2413, 14, 27)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2414, 14, 28)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2415, 14, 29)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2416, 14, 30)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2417, 14, 31)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2418, 14, 32)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2419, 14, 33)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2420, 14, 34)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2421, 14, 35)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2422, 14, 36)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2423, 14, 37)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2424, 14, 38)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2425, 14, 39)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2426, 14, 40)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2427, 14, 41)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2428, 14, 42)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2429, 14, 43)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2430, 14, 44)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2431, 14, 45)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2432, 14, 46)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2433, 14, 47)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2434, 14, 48)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2435, 14, 49)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2436, 14, 50)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2437, 14, 51)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2438, 14, 52)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2439, 14, 53)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2440, 14, 54)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2441, 14, 55)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2442, 14, 56)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2443, 14, 57)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2444, 14, 58)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2445, 14, 59)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2446, 14, 60)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2447, 14, 61)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2448, 14, 62)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2449, 14, 63)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2450, 14, 64)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2451, 14, 65)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2452, 14, 66)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2453, 14, 67)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2454, 14, 68)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2455, 14, 69)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2456, 14, 70)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2457, 14, 71)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2458, 14, 72)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2459, 14, 73)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2460, 14, 74)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2461, 14, 75)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2462, 14, 76)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2463, 14, 77)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2464, 14, 78)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2465, 14, 79)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2466, 14, 80)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (2467, 14, 81)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3030, 22, 1)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3031, 22, 2)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3032, 22, 3)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3033, 22, 4)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3034, 22, 5)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3035, 22, 6)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3036, 22, 7)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3037, 22, 8)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3038, 22, 9)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3039, 22, 10)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3040, 22, 11)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3041, 22, 12)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3042, 22, 13)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3043, 22, 14)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3044, 22, 15)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3045, 22, 16)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3046, 22, 17)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3047, 22, 18)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3048, 22, 19)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3049, 22, 20)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3050, 22, 21)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3051, 22, 23)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3052, 22, 24)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3053, 22, 25)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3054, 22, 26)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3055, 22, 27)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3056, 22, 28)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3057, 22, 29)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3058, 22, 30)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3059, 22, 31)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3060, 22, 33)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3061, 22, 35)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3062, 22, 37)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3063, 22, 38)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3064, 22, 39)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3065, 22, 40)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3066, 22, 41)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3067, 22, 42)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3068, 22, 43)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3069, 22, 44)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3070, 22, 45)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3071, 22, 46)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3072, 22, 47)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3073, 22, 48)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3074, 22, 49)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3075, 22, 50)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3076, 22, 82)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3077, 22, 83)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3078, 22, 84)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3079, 22, 85)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3080, 22, 86)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3081, 22, 87)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3082, 22, 88)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3083, 22, 89)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3084, 22, 90)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3085, 22, 91)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3086, 22, 92)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3087, 22, 93)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3088, 22, 94)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3089, 22, 95)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3090, 22, 96)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3091, 22, 114)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3092, 22, 115)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3093, 22, 116)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3094, 22, 117)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3095, 22, 118)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3096, 23, 51)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3097, 23, 52)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3098, 23, 53)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3099, 23, 54)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3100, 23, 55)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3101, 23, 56)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3102, 23, 57)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3103, 23, 58)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3104, 23, 59)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3105, 23, 60)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3106, 23, 61)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3107, 23, 62)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3108, 23, 63)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3109, 23, 64)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3110, 23, 65)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3111, 23, 67)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3112, 23, 98)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3113, 23, 99)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3114, 23, 100)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3115, 23, 101)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3116, 23, 102)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3117, 23, 103)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3118, 23, 104)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3119, 23, 105)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3120, 23, 106)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3121, 23, 107)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3122, 23, 108)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3123, 23, 109)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3124, 23, 110)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3125, 23, 111)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3126, 23, 112)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3127, 23, 119)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3128, 23, 120)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3129, 23, 121)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3130, 23, 122)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3131, 23, 123)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3132, 23, 124)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3133, 23, 125)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3134, 23, 126)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3135, 23, 127)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3136, 23, 128)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3137, 23, 129)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3138, 23, 130)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3139, 23, 131)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3140, 23, 132)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3141, 23, 133)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3142, 23, 134)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3143, 23, 135)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3144, 23, 136)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3145, 23, 137)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3146, 23, 138)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3147, 23, 139)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3148, 23, 140)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3149, 23, 141)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3150, 23, 142)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3151, 23, 143)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3152, 24, 80)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3153, 25, 74)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3154, 25, 75)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3155, 25, 77)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3156, 25, 79)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3157, 26, 81)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3158, 27, 71)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3159, 27, 72)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3160, 27, 73)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3161, 27, 144)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3361, 29, 51)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3362, 29, 53)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3363, 29, 129)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3364, 29, 130)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3365, 29, 131)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3366, 29, 132)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3367, 29, 133)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3368, 29, 134)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3369, 29, 135)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3370, 29, 136)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3371, 29, 137)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3372, 29, 140)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3373, 29, 141)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3374, 29, 146)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3375, 29, 147)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3376, 29, 148)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3377, 29, 149)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3378, 29, 153)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3379, 29, 157)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3380, 29, 159)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3381, 29, 160)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3382, 29, 161)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3383, 29, 162)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3384, 29, 163)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3385, 29, 164)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3386, 29, 165)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3387, 29, 166)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3388, 29, 168)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3389, 29, 169)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3241, 30, 51)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3242, 30, 52)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3243, 30, 53)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3244, 30, 54)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3245, 30, 55)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3246, 30, 56)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3247, 30, 57)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3248, 30, 58)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3249, 30, 59)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3250, 30, 60)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3251, 30, 61)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3252, 30, 62)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3253, 30, 63)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3254, 30, 64)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3255, 30, 65)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3256, 30, 67)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3257, 30, 102)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3258, 30, 103)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3259, 30, 104)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3260, 30, 106)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3261, 30, 108)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3262, 30, 110)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3263, 30, 111)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3264, 30, 112)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3265, 30, 119)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3266, 30, 120)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3267, 30, 121)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3268, 30, 122)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3269, 30, 123)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3270, 30, 124)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3271, 30, 125)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3272, 30, 126)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3273, 30, 127)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3274, 30, 128)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3275, 30, 129)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3276, 30, 130)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3277, 30, 131)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3278, 30, 132)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3279, 30, 133)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3280, 30, 134)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3281, 30, 135)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3282, 30, 136)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3283, 30, 137)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3284, 30, 138)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3285, 30, 139)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3286, 30, 140)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3287, 30, 141)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3288, 30, 142)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3289, 30, 143)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3290, 30, 146)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3291, 30, 147)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3292, 30, 148)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3293, 30, 149)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3294, 30, 150)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3295, 30, 151)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3296, 30, 152)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3297, 30, 153)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3298, 30, 154)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3299, 30, 155)
GO
INSERT [dbo].[Account_Right_Detail] ([ID], [AccountID], [RightID]) VALUES (3300, 30, 156)
GO
SET IDENTITY_INSERT [dbo].[Account_Right_Detail] OFF
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'7', N'ADMIN')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'17', N'AT')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'5', N'BGD')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'1', N'CDVT')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'4', N'DK')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'18', N'KCM')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'3', N'KCS')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'13', N'PXCDM')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'8', N'PXDL')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'12', N'PXDS')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'6', N'PXKT')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'16', N'PXLT')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'11', N'PXPV')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'10', N'PXST')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'14', N'PXTGQLM')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'9', N'PXVT')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'15', N'PXXD')
GO
INSERT [dbo].[Module] ([ID], [Module]) VALUES (N'2', N'TCLD')
GO
