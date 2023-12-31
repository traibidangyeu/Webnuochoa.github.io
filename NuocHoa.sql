USE [QLNH]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [CK__SanPham__GiaBan__2A4B4B5E]
GO
ALTER TABLE [dbo].[ChiTietDatHang] DROP CONSTRAINT [CK__ChiTietDa__SoLuo__30F848ED]
GO
ALTER TABLE [dbo].[ChiTietDatHang] DROP CONSTRAINT [CK__ChiTietDa__DonGi__31EC6D26]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [Fk_LoaiSPham]
GO
ALTER TABLE [dbo].[DonDatHang] DROP CONSTRAINT [Fk_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietDatHang] DROP CONSTRAINT [Fk_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDatHang] DROP CONSTRAINT [Fk_DonHang]
GO
/****** Object:  Index [UQ__KhachHan__D5B8C7F0F41F91B0]    Script Date: 1/8/2022 7:49:43 PM ******/
ALTER TABLE [dbo].[KhachHang] DROP CONSTRAINT [UQ__KhachHan__D5B8C7F0F41F91B0]
GO
/****** Object:  Index [UQ__KhachHan__A9D10534415920B8]    Script Date: 1/8/2022 7:49:43 PM ******/
ALTER TABLE [dbo].[KhachHang] DROP CONSTRAINT [UQ__KhachHan__A9D10534415920B8]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/8/2022 7:49:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SanPham]') AND type in (N'U'))
DROP TABLE [dbo].[SanPham]
GO
/****** Object:  Table [dbo].[LoaiSPham]    Script Date: 1/8/2022 7:49:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiSPham]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiSPham]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/8/2022 7:49:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhachHang]') AND type in (N'U'))
DROP TABLE [dbo].[KhachHang]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 1/8/2022 7:49:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DonDatHang]') AND type in (N'U'))
DROP TABLE [dbo].[DonDatHang]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 1/8/2022 7:49:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChiTietDatHang]') AND type in (N'U'))
DROP TABLE [dbo].[ChiTietDatHang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1/8/2022 7:49:43 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin]') AND type in (N'U'))
DROP TABLE [dbo].[Admin]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 1/8/2022 7:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 1/8/2022 7:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatHang](
	[SoDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [Pk_ChiTietDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 1/8/2022 7:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
 CONSTRAINT [Pk_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/8/2022 7:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienThoaiKH] [varchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [Pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSPham]    Script Date: 1/8/2022 7:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSPham](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_LoaiSPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/8/2022 7:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](38, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [varchar](50) NULL,
	[MuiHuong] [nvarchar](max) NULL,
	[DanhGia] [nvarchar](max) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaLoai] [int] NULL,
 CONSTRAINT [Pk_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'admin', N'123456', N'Trần Mỹ Nhi')
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [Hoten]) VALUES (N'user', N'654321', N'ndtkhai')
GO
INSERT [dbo].[ChiTietDatHang] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (1, 2, 1, CAST(627 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDatHang] ([SoDH], [MaSP], [SoLuong], [DonGia]) VALUES (2, 12, 10, CAST(465 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([SoDH], [MaKH], [NgayDH], [NgayGiao], [DaThanhToan], [TinhTrangGiaoHang]) VALUES (1, 1, CAST(N'2022-01-06T23:51:24.783' AS DateTime), CAST(N'2022-01-28T00:00:00.000' AS DateTime), 0, 0)
INSERT [dbo].[DonDatHang] ([SoDH], [MaKH], [NgayDH], [NgayGiao], [DaThanhToan], [TinhTrangGiaoHang]) VALUES (2, 1, CAST(N'2022-01-06T23:51:55.453' AS DateTime), CAST(N'2022-01-30T00:00:00.000' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiachiKH], [DienThoaiKH], [NgaySinh]) VALUES (1, N'Trần Mỹ Nhi', N'mynhi', N'123456', N'tnhi4790@gmail.com', N'abcxyz', N'0587585470', CAST(N'2002-04-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[LoaiSPham] ([MaLoai], [TenLoai]) VALUES (111, N'Nuớc Hoa Nam')
INSERT [dbo].[LoaiSPham] ([MaLoai], [TenLoai]) VALUES (222, N'Nuớc Hoa Nữ')
INSERT [dbo].[LoaiSPham] ([MaLoai], [TenLoai]) VALUES (333, N'Nuớc Hoa Unisex')
INSERT [dbo].[LoaiSPham] ([MaLoai], [TenLoai]) VALUES (444, N'Nuớc Hoa Mini')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (1, N'Versace Eros For Men EDT', CAST(390 AS Decimal(38, 0)), N'Được giới thiệu lần đầu tại liên hoan phim Cannes 2012, Versace Eros lấy nguồn cảm hứng từ vị thần tình yêu trong thần thoại  thần thoại Hy Lạp(Eros là vị thần hy lạp của tình yêu). Versace Eros For Men là sự kết hợp và thể hiện của niềm đam mê vô tận và ham muốn mãnh liệt.', N'nhn1.jpg', N'Hương đầu: bạc hà, táo xanh, chanh. Hương giữa: đậu Tonka, hoa phong lữ, Ambroxan. Hương cuối: hương vani, cỏ Vetiver, địa y, tuyết tùng.', N' Độ lưu hương: Lâu (7 giờ - 12 giờ).', CAST(N'2020-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (2, N'Dior Sauvage Parfum', CAST(627 AS Decimal(38, 0)), N'Dior Sauvage Eau De Toilette ra mắt từ năm 2015 đã làm “bấn loạn” giới yêu nước hoa bởi hương thơm vừa quyến rũ, vừa hoang dại. Và 2018 này hãng tung ra phiên bản Dior Sauvage Eau De Parfum tăng cường độ lưu hương để thỏa mãn các tín đồ nước hoa.', N'nhn2.jpg', N' Khác với phiên bản EDP và EDT trước, Sauvage Parfum năm nay sẽ rất dữ dằn, mạnh mẽ với việc tăng cường các thành phần phương đông đặc biệt với Đậu Vanilla , hoa hồi, và hạt nhục đậu khấu.', N' Độ lưu hương: Lâu( 2 giờ - 3 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (3, N'Dior Sauvage EDP', CAST(840 AS Decimal(38, 0)), N' Vào năm 2018, Dior giới thiệu phiên bản mới của Dior Sauvage đã ra mắt vào năm 2015 với nồng độ Eau De Parfum. Các thành phần với hơi hướng phương Đông và vani. Tạo nên mùi hương ngọt ngào, bí ẩn và gợi cảm. Nhà chế tạo nước hoa Francois Demachy lấy sa mạc trong cảnh hoàng hôn làm cảm hứng điều chế nên Dior Sauvage. Ngài đã đưa làn gió mát, ngọt lành của màn đêm hoà cùng không khí nóng bỏng của sa mạc. Bằng cách đó một mùi hương nước hoa nam Dior nóng bỏng bậc nhất được ra đời.', N'nhn3.jpg', N' Hương đầu: cam Bergamot. Hương giữa: hoa oải hương, tiêu Tứ Xuyên, đại hồi, hạt nhục đậu khấu. Hương cuối: nhựa Ambroxan, vanilla', N' Độ lưu hương: Lâu(7 giờ - 9 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (4, N'Versace Pour Homme', CAST(420 AS Decimal(38, 0)), N' Mùi hương mới cho nam giới – Nước hoa Versace Pour Homme – là sự pha trộn các thành phần tinh chất có nguồn gốc Địa Trung Hải với hỗn hợp hương thơm hàng đầu rất phù hợp cho nam giới ngày nay: đó là những người đàn ông tri thức và tự tin, năng động, mạnh mẽ và đầy đam mê, sống hài hòa với thế giới tự nhiên.', N'nhn4.jpg', N'Hương đầu: Chanh, tinh dầu hoa cam, cam Bergamot, hoa hồng. Hương giữa: Hoa lan dạ hương, hoa Clary Sage, gỗ tuyết tùng và phong lữ. Hương cuối: Đậu Tonka, xạ hương và hổ phách', N' Độ lưu hương: Tạm ổn ( 3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (5, N'Giorgio Armani AcSqua Di Gio Pour Homme For Men', CAST(694 AS Decimal(38, 0)), N' Giorgio Armani tạo ra hương nước hoa Giorgio Armani Acqua Di Gio được lấy cảm hứng từ những gì tinh túy nhất. Chai nước hoa được chính thức tung lên thị trường vào năm 1996 và vẫn được sử dụng rộng rãi tới bây giờ. Nhà sáng chế Alberto Morillas lấy cảm hứng từ vẻ đẹp của vùng đất Pantellerie. Hương thơm không phân biệt bất kỳ giới tính nào. Sự tự do, hoà hợp giữa vị mặn ngọt của biển và nắng, gió ấm áp từ tinh không. Hương nước hoa đầy ánh nắng mặt trời Địa Trung Hải nóng như thiêu đốt mơn trơn trên làn da. Chai nước hoa bùng nổ sự nam tính trong con người bạn.', N'nhn5.jpg', N' Hương đầu: quả cam; chanh vỏ cam; quả quýt; hoa nhài; cam bergamot; quả chanh; hoa cam. Hương giữa: hoa anh thảo; nhục đậu khấu; mộc tê; rau mùi; hoa Violet; lan Nam Phi; hương biển; quả đào; hoa dạ lan hương; hoa hồng; hoa nhài; cây hương thảo. Hương cuối: hổ phách; hoắc hương; địa y; tuyết tùng; xạ hương ', N' Độ lưu hương: Tạm ổn (3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (6, N'Versace Eros Flame EDP For Men', CAST(871 AS Decimal(38, 0)), N' ersace Eros Flame là mùi hương mới toanh, được thương hiệu nước hoa đến từ Ý – Versace ra mắt vào năm 2018, vẫn lấy cảm hứng từ thần thoại Hy Lạp như các phiên bản cùng dòng. So với bản Versace Eros năm 2012 thì phiên bản mới có sự khác biệt hoàn toàn về thiết kế lẫn mùi hương.', N'nhn6.jpg', N' Hương Đầu: Chinotto, Quả chanh vàng, Quả quýt hồng, Tiêu đen, Cây hương thảo.. Hương giữa: Hoa hồng, Hoa phong lữ, Tiêu. Hương cuối: Gỗ tuyết tùng Texas, Cây hoắc hương, Đậu Tonka. Hương Va ni, Gỗ đàn hương, Rêu sồi.', N' Độ lưu hương: Lâu (7 giờ - 12 giờ).', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (7, N'Giorgio Armani Acqua Di Gio Profondo EDP', CAST(518 AS Decimal(38, 0)), N'Acqua Di Gio Profondo là hương thơm mới được thương hiệu Giorgio Armani cho ra mắt năm 2020. Đây là một mùi hương nam giới mang đậm hình ảnh đại dương xanh thẫm, mãnh liệt, dạt dào như một người đàn ông nam tính cung sự tự do và cảm xúc dạt dào như những cơn sóng biển. Người đứng sau mùi hương là bật thầy nước hoa Alberto Morillas. ', N'nhn7.jpg', N'Hương đầu: Hương biển, Cam Bergamot, Quýt xanh, Aquozone Hương giữa: Hương thảo, Hoa oải hương, Cây bách, Mastic, lentisque. Hương cuối: Hổ phách, Hoắc hương, Xạ hương, Hương khoáng.', N'  Độ lưu hương: Tạm ổn ( 3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (8, N'Jean Paul Gaultier Ultra Male EDT', CAST(975 AS Decimal(38, 0)), N' Jean Paul Gaultier Ultra Male chai nước hoa quyến rũ đầy ngọt ngào. Mùi hương phảng phất, mê hoặc, ai “bắt” lấy được hương thơm này rồi thì nhớ mãi không quên. Không hẳn mà tự nhiên chai nước hoa này được mô tả đầy sự kích thích và tò mò đến vậy.', N'nhn8.jpg', N' Hương Đầu: Cam Bergamot, Quả lê, Cây bạc hà, Hoa Oải Hương, Quả chanh vàng. Hương giữa: Quế, Cây đơn sâm, Thì là Ba Tư. Hương cuối: Hương Va ni, Hổ phách, Gỗ tuyết tùng, Cây hoắc hương', N' Độ lưu hương: Lâu (7 giờ - 12 giờ).', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (9, N'Chanel Bleu De Chanel Parfum', CAST(808 AS Decimal(38, 0)), N' Bleu De Chanel Parfum là phiên bản với nồng độ tinh dầu mạnh nhất trong 3 chai dòng Bleu của Chanel. Mạnh mẽ và tinh tế, Bleu De Chanel Parfum cho nam giới bộc lộ bản chất quyết tâm và nam tính mạnh mẽ. Đại diện cho màu sắc của tự do, phóng khoáng. Hương thơm ẩn mình trong thiết kế đen mạnh mẽ, sang trọng và có chút bí ẩn.', N'nhn9.jpg', N' Hương đầu: vỏ chanh, cam bergamot, bạc hà, ngải. Hương giữa: hoa oải hương, phong lữ, hương xanh, thơm. Hương cuối: gỗ tuyết tùng, gỗ đàn hương, hương Iso E Super, đậu tonka, gỗ hổ phách.', N' Độ lưu hương: Lâu (7 giờ - 12 giờ).', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (10, N'Montblanc Explorer Mont Blanc EDP', CAST(971 AS Decimal(38, 0)), N' Tiếp nối thành công của các dòng hương nổi tiếng Legend và Emblem. Thương hiệu Mont Blanc đã cho ra đời sản phẩm mới mang tên Montblanc Explorer. Explorer được lấy cảm hứng từ những nhà thám hiểm, luôn khao khát chinh phục những thử thách mới lạ. Nước hoa nam Montblanc Explorer mới sẽ được điều chế dưới dạng Eau de Parfum.', N'nhn10.jpg', N' Hương Đầu: Cam Bergamot, Hồng tiêu, Cây đơn sâm. Hương giữa: Da thuộc, Cỏ hương bài Haiti. Hương cuối: Lá cây hoắc hương Indo, Quả Ca cao, Akigalawood, Hương Ambroxan.', N' Độ lưu hương: Trung bình  (2 giờ - 5 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 111)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (11, N' Narciso Rodriguez For Her EDP', CAST(414 AS Decimal(38, 0)), N' Narciso Rodriguez For Her là sản phẩm đầu tay của thương hiệu Narciso Rodriguez và cũng là chai nước hoa mà từ lúc ra mắt cho tới thời điểm hiện tại đều nằm trong Top hit hương nước hoa được nữ giới yêu thích nhất. Năm 2006 Narciso Rodriguez cho ra phiên bản EDP Narciso màu hồng pastel nhẹ nhàng cùng mùi hương ngọt ngào hiện đại và đầy cá tính được ví như vũ khí gây thương nhớ cao làm cho những cô nàng trở nên nổi bật và thu hút hơn bao giờ hết. ', N'nhnu1.jpg', N'Nhiều người cảm nhận thấy hương phấn thơm rất rõ rệt trong chai nước hoa này, đó là do sự cân bằng hoàn hảo của 2 hương thơm tuyệt đẹp đó là hoa hồng và xạ hương làm trung tâm, điểm quanh là gỗ thơm, hoắc hương và hổ phách. ', N' Độ lưu hương: 7 giờ - 12 giờ ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (12, N' Versace Bright Crystal EDT', CAST(465 AS Decimal(38, 0)), N' Năm 2006, Versace cho ra đời một loại nước hoa làm cả thế giới sửng sốt bởi mùi hương và thiết kế độc đáo, đó là Bright Crystal gợi tình, trong suốt và nổi bật. Lấy cảm hứng từ những sáng tạo độc đáo của người đi trước, Alberto Morillas đã vẻ nên một viên kim cương lấp lánh cho những buổi dạ tiệc lãng mạn để làm nên những câu chuyện tình đầy thăng hoa.', N'nhnu2.jpg', N'Lấy cảm hứng từ sự kết hợp giữa các sản phẩm nước hoa độc đáo nhất của Donatella Versace, nước hoa Bright Crystal ra đời mang trong mình hương thơm mát dịu của lựu, yuzu cùng mùi hương đầy lãng mạn và gợi tình của mẫu đơn, mộc lan, hoà quyện cùng hương thơm ấm áp của xạ hương và hổ phách.', N' Độ lưu hương: tạm ổn (3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (13, N'Gucci Bloom For Women EDP', CAST(608 AS Decimal(38, 0)), N' Thương hiệu thời trang nổi tiếng Gucci vừa cho ra mắt sản phẩm nước hoa mới Gucci Bloom For Women EDP 100ml vào tháng 8/2017. Hương nước hoa đầu tiên dưới bàn tay của nhà sáng tạo Alesxandro Michele. Đây chính là hương nước hoa được yêu thích bậc nhất bởi sự quyến rũ mà nó mang lại.', N'nhnu3.jpg', N' Hương chính: Hoa nhài Sambac, Hoa huệ trắng, Rễ cây diên vĩ', N' Độ lưu hương: Lâu (7 giờ-12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (14, N' Kenzo Flower EDP', CAST(310 AS Decimal(38, 0)), N' Kenzo Flower là loại nước hoa dành cho những người phụ nữ thành thị hiện đại luôn hướng về thiên nhiên để tạo cảm hứng sống mới và sáng tạo cho riêng mình. Flower by Kenzo một đóa hoa giữa lòng thành phố', N'nhnu4.jpg', N' Hương thơm mang lại một ấn tượng ban đầu vừa nhẹ nhàng vừa kinh ngạc bởi hương đầu tươi mát và rạng rỡ bao gồm phúc bồn đen, cây táo gai, hoa hồng, quả quýt. Tiếp nối là mùi hương thảo mộc quyến rũ chiết xuất nhựa hương, hoa nhài, hoa Violet, hoa hồng lung linh trong nắng.', N' Độ lưu hương:6 giờ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (15, N' Chanel Coco Mademoiselle Intense EDP', CAST(410 AS Decimal(38, 0)), N' Trong tất cả các loại nước hoa CHANEL hiện đại, nước hoa nữ Chanel Coco Mademoiselle Intense EDP được xem như là biểu tượng nhất. Nó là No5 cho thời hiện đại và kể từ khi ra mắt vào năm 2001 Coco Chanel đã là mùi thơm được lựa chọn của tất cả thế hệ phụ nữ. Cha đẻ của Coco Chanel là Oliver Polge, và Chanel cho ra mắt vào năm 2018 này.', N'nhnu5.jpg', N' Hương đầu: cam Silica, cam bergamot, chanh. Hương giữa: hoa hồng, hoa nhài, hỗn hợp trái cây. Hương cuối: hoắc hương, đậu tonka, vani, labbanum, xạ hương', N' Độ lưu hương: Lâu(7 giờ - 12 giờ) ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (16, N' Chanel Chance Eau Tendre EDP', CAST(925 AS Decimal(38, 0)), N' Một sự đổi mới trong những nốt hương tạo nên nét tươi mới cho dòng sản phẩm nước hoa của Chanel. Chance Eau Tendre đã đem đến sự đột phá với phong cách tao nhã, dường như biến mọi cô gái trở nên nàng thơ với vẻ đẹp thuần khiết lấp lánh điệu dáng tươi vui.', N'nhnu6.jpg', N'Hương Đầu: Quả bưởi, Quả mộc qua. Hương giữa: Hoa nhài, Hoa lan dạ hương. Hương cuối: Xạ hương, Hoa diên vĩ, Gỗ tuyết tùng Virginia, Hổ phách', N' Độ lưu hương: Tạm ổn ( 3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (17, N' Britney Spears Fantasy EDP', CAST(535 AS Decimal(38, 0)), N' Nước hoa Fantasy là loại nước hoa thứ hai của Britney Spears, ra đời một năm sau sự thành công của nước hoa Curious. Fantasy dành cho những người phụ nữ duyên dáng và quyến rũ! Hương thơm mang lại sự rung động, gợi cảm và rất ngọt ngào. Một loại nước hoa lấy cảm hứng từ bản năng yêu tràn ngập tâm hồn bạn trong lúc bạn ít mong đợi nó nhất. Nước hoa Britney Spears Fantasy là sự hòa trộn quyến rũ của mùi hoa quả chín, hương thơm ngào ngạt của hoa nhài, hoa lan, xạ hương, rễ cây orris thơm và mùi thảo mộc gợi cảm.', N'nhnu7.jpg', N' Hương đầu: trái kiwi, trái vải, trái mộc qua. Hương giữa: chocolate trắng, hoa nhài, hoa lan, bánh cupcake. Hương cuối: xạ hương, rễ cây orris, gỗ', N' Độ lưu hương: Lâu( 7 giờ - 10 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (18, N' Dior J’Adore', CAST(380 AS Decimal(38, 0)), N' Nếu nhắc đến những sản phẩm tôn vinh nét đẹp của người phụ nữ mà không có mặt nước hoa Dior J’Adore thì thật sự là một thiếu xót rất lớn. Thương hiệu Dior mang đến sản phẩm này với nguồn cảm hứng vô hạn của một người phụ nữ sở hữu vẻ đẹp xuất chúng, sự nữ tính vô hạn luôn chực chờ thời điểm bùng phát, mùi hương của nó là sự lan tỏa mạnh mẽ, kích động các giác quan một cách tối đa như mùi hương của bông hoa hồng tươi mát chớm nở trong ánh bình minh sớm mai.', N'nhnu8.jpg', N' Dior J’Adore sở hữu ba tầng hương với hương đầu là hoa mộc lan, dưa gang, đào, lê, cam bergamot, quýt, hương giữa là sự hòa quyện nhiều hương liệu nhất với hoa huệ, mận, hoa violet, phong lan, lan Nam Phi, hoa nhài, hoa lan chuông, hoa hồng và hương cuối là xạ hương, vani, tuyết tùng, trái mâm xôi.', N'Độ lưu hương: Lâu( 7 giờ - 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (19, N' Lancôme Idole Le Parfum', CAST(400 AS Decimal(38, 0)), N' Chai nước hoa nữ Lancome Idôle mang mùi hương hoa chypre hiện đại, được tạo ra bởi ba nhà sáng chế nữ: Shyamala Maisondieu, Adriana Medina và Nadège Le Garlantezec. Bên trong chứa đựng một loại tinh chất hoa hồng Isparta có nguồn gốc từ vùng đất Thổ Nhĩ Kỳ dành riêng cho Lancôme, cùng với một bông hồng Centifolia được trồng ở Pháp, tỏa sáng giữa các nốt hương của cam Bergamot, hợp chất của lê, Ấn Độ Jasmine Grandiflorum, và một loại rượu vang mới “sạch và sáng”.', N'nhnu9.jpg', N' Hương đầu: Hương thơm nước trái cây thơm ngát. Hương giữa: Hương thơm dịu dàng nhẹ nhàng của hoa hồng.Hương cuối: Hương thơm ấm phấn vanilla dễ thương nữ tính.', N' Độ lưu hương: Tốt (Trên 8 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (20, N' Victoria’s Secret Very Sexy Sea EDP', CAST(427 AS Decimal(38, 0)), N' Victoria’s Secret Very Sexy Sea được Victoria’s Secret  cho ra đời với hương thơm mang hình ảnh của biển mùa hè tươi mát  với thiết kế tông màu xanh rất dễ nhận diện và ấn tượng. Very Sexy Sea  mang đến mùi hương từ sự khác biệt, và gây ấn tượng khó quên của biển và nhất định sẽ làm những chuyến du lịch của bạn thêm ấn tượng và đáng nhớ hơn.', N'nhnu10.jpg', N' Hương đầu : Hương thơm của cam Bergamot. Hương giữa: Hương Hoa Cam. Hương cuối: Hương thơm của gỗ Tuyết tùng.', N' Độ lưu hương: Tốt (3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 222)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (21, N' Versace Eros For Men EDT', CAST(390 AS Decimal(38, 0)), N' Được giới thiệu lần đầu tại liên hoan phim Cannes 2012, Versace Eros lấy nguồn cảm hứng từ vị thần tình yêu trong thần thoại  thần thoại Hy Lạp(Eros là vị thần hy lạp của tình yêu). Versace Eros For Men là sự kết hợp và thể hiện của niềm đam mê vô tận và ham muốn mãnh liệt.', N'nhmn1.jpg', N'Versace Eros kết hợp hương thơm của bạc hà, táo xanh, đậu tonka và phong lữ tạo nên một hương thơm khó quên. Đây đích thị là hương thơm dành cho người đàn ông mạnh mẽ, đầy đam mê nhưng ẩn giấu dư vị nống ấm, quyến luyến dụ hoặc. Hương thơm tươi mới, mát mẻ ngay từ phát xịt đầu tiên. Sau đó, dậy nên nét quyến rũ bởi các note hương Phương Đông như đậu tonka, hổ phách amrboxan, hoa phong lữ và vani kết hợp với một sự mạnh mẽ đầy nam tính bởi các loại gỗ.', N' Độ lưu hương: Lâu(7 giờ - 12 giờ) ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (22, N' Versace Bright Crystal EDT', CAST(465 AS Decimal(38, 0)), N' Năm 2006, Versace cho ra đời một loại nước hoa làm cả thế giới sửng sốt bởi mùi hương và thiết kế độc đáo, đó là Bright Crystal gợi tình, trong suốt và nổi bật. Lấy cảm hứng từ những sáng tạo độc đáo của người đi trước, Alberto Morillas đã vẻ nên một viên kim cương lấp lánh cho những buổi dạ tiệc lãng mạn để làm nên những câu chuyện tình đầy thăng hoa.', N'nhmn2.jpg', N'Lấy cảm hứng từ sự kết hợp giữa các sản phẩm nước hoa độc đáo nhất của Donatella Versace, nước hoa Bright Crystal ra đời mang trong mình hương thơm mát dịu của lựu, yuzu cùng mùi hương đầy lãng mạn và gợi tình của mẫu đơn, mộc lan, hoà quyện cùng hương thơm ấm áp của xạ hương và hổ phách.', N' Độ lưu hương: tạm ổn (3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (23, N' Versace Pour Homme', CAST(420 AS Decimal(38, 0)), N' Mùi hương mới cho nam giới – Nước hoa Versace Pour Homme – là sự pha trộn các thành phần tinh chất có nguồn gốc Địa Trung Hải với hỗn hợp hương thơm hàng đầu rất phù hợp cho nam giới ngày nay: đó là những người đàn ông tri thức và tự tin, năng động, mạnh mẽ và đầy đam mê, sống hài hòa với thế giới tự nhiên.', N'nhmn3.jpg', N' Hương đầu: Chanh, tinh dầu hoa cam, cam Bergamot, hoa hồng. Hương giữa: Hoa lan dạ hương, hoa Clary Sage, gỗ tuyết tùng và phong lữ. Hương cuối: Đậu Tonka, xạ hương và hổ phách', N' Độ lưu hương: Tam ổn(3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (24, N' Kenzo Flower EDP', CAST(310 AS Decimal(38, 0)), N' Kenzo Flower là loại nước hoa dành cho những người phụ nữ thành thị hiện đại luôn hướng về thiên nhiên để tạo cảm hứng sống mới và sáng tạo cho riêng mình. Flower by Kenzo một đóa hoa giữa lòng thành phố', N'nhmn4.jpg', N' Hương thơm mang lại một ấn tượng ban đầu vừa nhẹ nhàng vừa kinh ngạc bởi hương đầu tươi mát và rạng rỡ bao gồm phúc bồn đen, cây táo gai, hoa hồng, quả quýt. Tiếp nối là mùi hương thảo mộc quyến rũ chiết xuất nhựa hương, hoa nhài, hoa Violet, hoa hồng lung linh trong nắng.', N' Độ lưu hương:6 giờ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (25, N' Lancome Tresor Midnight Rose', CAST(399 AS Decimal(38, 0)), N' Mọi loại nước hoa của Lancôme đều có vẻ lãng mạn của riêng nó. Nước hoa nữ Tresor Midnight Rose là sự ấm áp, ngọt ngào nhưng huyền diệu với ý tưởng một bông hoa chỉ nở vào lúc nửa đêm.', N'nhmn5.jpg', N' Hương đầu: hoa hồng, quả mâm xôi. Hương giữa: hoa nhài, hoa mẫu đơn, cây cassis, hạt tiêu hồng. Hương cuối: xạ hương, tuyết tùng, hương vani', N' Độ lưu hương: Lâu(7 giờ - 12 giờ) ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (26, N' Chanel Chance Eau Tendre EDP', CAST(925 AS Decimal(38, 0)), N' Một sự đổi mới trong những nốt hương tạo nên nét tươi mới cho dòng sản phẩm nước hoa của Chanel. Chance Eau Tendre đã đem đến sự đột phá với phong cách tao nhã, dường như biến mọi cô gái trở nên nàng thơ với vẻ đẹp thuần khiết lấp lánh điệu dáng tươi vui.', N'nhmn6.jpg', N'Hương Đầu: Quả bưởi, Quả mộc qua. Hương giữa: Hoa nhài, Hoa lan dạ hương. Hương cuối: Xạ hương, Hoa diên vĩ, Gỗ tuyết tùng Virginia, Hổ phách', N' Độ lưu hương: Tạm ổn ( 3 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (27, N' Britney Spears Fantasy EDP', CAST(535 AS Decimal(38, 0)), N' Nước hoa Fantasy là loại nước hoa thứ hai của Britney Spears, ra đời một năm sau sự thành công của nước hoa Curious. Fantasy dành cho những người phụ nữ duyên dáng và quyến rũ! Hương thơm mang lại sự rung động, gợi cảm và rất ngọt ngào. Một loại nước hoa lấy cảm hứng từ bản năng yêu tràn ngập tâm hồn bạn trong lúc bạn ít mong đợi nó nhất. Nước hoa Britney Spears Fantasy là sự hòa trộn quyến rũ của mùi hoa quả chín, hương thơm ngào ngạt của hoa nhài, hoa lan, xạ hương, rễ cây orris thơm và mùi thảo mộc gợi cảm.', N'nhmn7.jpg', N' Hương đầu: trái kiwi, trái vải, trái mộc qua. Hương giữa: chocolate trắng, hoa nhài, hoa lan, bánh cupcake. Hương cuối: xạ hương, rễ cây orris, gỗ', N' Độ lưu hương: Lâu( 7 giờ - 10 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (28, N' Dior J’Adore', CAST(380 AS Decimal(38, 0)), N' Nếu nhắc đến những sản phẩm tôn vinh nét đẹp của người phụ nữ mà không có mặt nước hoa Dior J’Adore thì thật sự là một thiếu xót rất lớn. Thương hiệu Dior mang đến sản phẩm này với nguồn cảm hứng vô hạn của một người phụ nữ sở hữu vẻ đẹp xuất chúng, sự nữ tính vô hạn luôn chực chờ thời điểm bùng phát, mùi hương của nó là sự lan tỏa mạnh mẽ, kích động các giác quan một cách tối đa như mùi hương của bông hoa hồng tươi mát chớm nở trong ánh bình minh sớm mai.', N'nhmn8.jpg', N' Dior J’Adore sở hữu ba tầng hương với hương đầu là hoa mộc lan, dưa gang, đào, lê, cam bergamot, quýt, hương giữa là sự hòa quyện nhiều hương liệu nhất với hoa huệ, mận, hoa violet, phong lan, lan Nam Phi, hoa nhài, hoa lan chuông, hoa hồng và hương cuối là xạ hương, vani, tuyết tùng, trái mâm xôi.', N'Độ lưu hương: Lâu( 7 giờ - 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (29, N' Lancôme Miracle', CAST(385 AS Decimal(38, 0)), N' Nước hoa Lancôme Miracle lấy màu hồng làm màu sắc chính cho sản phẩm, với thiết kế chai đơn giản. Thế nhưng, sánh đôi cùng màu hồng nhẹ nhàng ấy lại là dòng hương tràn đây năng lượng và cá tính. Mang cảm hứng từ cuộc sống, xem cuộc sống như một phép lạ và những điều nhỏ nhất đều mang đến niềm vui và hạnh phúc, Miracle vượt qua giới hạn của chai nước hoa thông thường, trở thành người bạn không thể thiếu cho phái đẹp.', N'nhmn9.jpg', N' Hương đầu: Quả vải, lan Nam Phi. Hương giữa: Hoa mộc lan, gừng, quả quýt, hạt tiêu, hoa nhài.Hương cuối: Hổ phách, xạ hương, hoa nhài.', N' Độ lưu hương: Tạm ổn (khoảng 4 giờ - 6 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (30, N' Dior Miss Dior EDP 2021 Limited Edition', CAST(705 AS Decimal(38, 0)), N' Phiên bản 2021 của dòng nước hoa huyền thoại Miss Dior chính thức được giới thiệu đến công chúng với sắc hồng tím ngọt lịm và chiếc nơ truyền thống trên cổ chai đã được thay đổi bằng chiếc nơ vải ánh bạc điệu đà, nữ tính. Đặc biệt trong phiên bản giới hạn mùa lễ hội cuối năm 202 mỗi chai nước hoa còn được thương hiệu Dior thiết kế riêng lớp vỏ tuyệt đẹp với hoạ tiết winterberry. Francois Demachy – nhà chế tác nước hoa danh tiếng của Dior đã miêu tả rằng phiên bản Miss Dior EDP này mang cảm hứng gợi cảm, tươi vui và thần thái lan toả hương thơm hạnh phú như một đoá hoa của ngày cười. Những nốt cao sang của tinh chất hoa hồng đắt giá len lỏi giữa những đoá hoa lan chuông trong trẻo và một chút thú vị, thơm ngát của hoa mẫu đơn và diên vỹ.', N'nhmn10.jpg', N' Hương đầu:  Hoa diên vỹ, hoa mẫu đơn, hoa lan chuông. Hương giữa: Hoa hồng Grasse, quả đào, quả mơ. Hương cuối: Vani, gỗ đàn hương, xạ hương, benzoin, đậu tonka', N' Độ lưu hương: Tốt (6 giờ - 8 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 333)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (31, N' Le Labo Santal 33 EDP', CAST(846 AS Decimal(38, 0)), N' Le Labo Santal 33 là hương thơm thuộc nhóm gỗ dành cho cả nam và nữ, được ra mắt vào năm 2011 bởi thương hiệu nước hoa “tươi” nổi tiếng Le Labo . Sáng tác mùi hương này chính là nghệ nhân chế tác nước hoa nổi tiếng Frank Voelkl. Hiếm có chai nước hoa nào có thể làm hài lòng ở cả 2 giới, thế nhưng Santal 33 lại là một sự đặc cách đầy điển hình cho việc mùi hương đẹp ở bất kỳ giới tính nào.', N'nhun1.jpg', N' Mùi hương đặc trưng: Gỗ đàn hương, Gỗ tuyết tùng, Bạch đậu khấu, Hoa violet, Giấy cói, Da, Hổ phách, Hoa diên vĩ.', N' Độ lưu hương: Rất lâu(Trên 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (32, N' Versace Eros For Men EDT', CAST(390 AS Decimal(38, 0)), N' Được giới thiệu lần đầu tại liên hoan phim Cannes 2012, Versace Eros lấy nguồn cảm hứng từ vị thần tình yêu trong thần thoại  thần thoại Hy Lạp(Eros là vị thần hy lạp của tình yêu). Versace Eros For Men là sự kết hợp và thể hiện của niềm đam mê vô tận và ham muốn mãnh liệt.', N'nhun2.jpg', N' Hương đầu: bạc hà, táo xanh, chanh. Hương giữa: đậu Tonka, hoa phong lữ, Ambroxan. Hương cuối: hương vani, cỏ Vetiver, địa y, tuyết tùng.', N' Độ lưu hương: Lâu(7 giờ - 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (33, N' Mancera Paris Cedrat Boise EDP', CAST(755 AS Decimal(38, 0)), N' Thuộc dòng nước hoa unisex, nước hoa Mancera Paris Cedrat Boise được ra đời vào năm 2011 của thương hiệu Mancera. Mang đậm sắc hương của hương cam chanh thơm ngát. Một mùi hương không sinh ra để dành cho đám đông nhưng làm mê đắm những ai có chiều sâu và mãi vương vấn sau một vài lần thưởng thức. ', N'nhun3.jpg', N' Hương Đầu: Cam Bergamot, Quả chanh vàng Sicili, Quả lý chua đen, Hương gia vị cay. Hương giữa: Hương trái cây, Hoa nhài nước, Lá cây hoắc hương.Hương cuối: Gỗ đàn hương, Gỗ tuyết tùng, Da thuộc, Rêu sồi Moss, Xạ hương trắng, Hương Va ni.', N'Độ lưu hương: 7-12 tiếng ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (34, N' MCM Eau De Parfum Mode Creation Munich', CAST(995 AS Decimal(38, 0)), N' MCM là thương hiệu thời trang cao cấp của Đức ra đời từ những năm 1976 cho tới nay thương hiệu đã trở nên quen thuộc với tín đồ thời trang khắp nơi trên thế giới. Năm 2021 MCM cho ra đời mùi hương nước hoa mang tên MCM Eau De Parfum Mode Creation Munich với thiết kế mang đậm dấu ấn của thương hiệu cùng mùi hương unisex tinh tế, đây có thể nói là chai nước hoa được mong chờ nhất mùa hè năm nay.', N'nhun4.jpg', N' Như những cơn gió mát ngày hè, hương thơm mở ra với sự tươi mới của quả mâm xôi và quả đào mọng nước. Mùi hương dần tiến triển một cách bất ngờ đến hương của những bông hoa mẫu đơn sang trọng củanhững cánh  hoa nhài được hái bằng tay cầu kì và dư vị của lá hoa violet. Theo thời gian, mùi hương tồn động lại ở một miền yên tĩnh nơi Rêu sồi, Vanilla, Ambroxan và gỗ đàn hương cùng tồn tại hài hòa, đẹp đẽ.', N' Độ lưu hương: 7-12 tiếng', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (35, N' Paco Rabanne 1 Million', CAST(338 AS Decimal(38, 0)), N' Nhà sáng tạo Paco Rabanne đã nói “trong tất cả các nền văn minh và tôn giáo, vàng luôn luôn được tích trữ và làm mọi người say mê”. Vàng ở xung quanh chúng ta: trong kiến trúc, thiết kế, đồ trang sức, quần áo, phụ kiện, thời trang… Nó luôn gây sự chú ý và được coi trọng trên toàn thế giới và có một giá trị rất thiêng liêng. Đó là ý tưởng mà Paco Rabanne mang đến khi sáng tạo ra mùi nước hoa mới, rằng trong mọi hoàn cảnh xã hội, hay ngay cả tôn giáo, từ xưa đến nay vàng luôn là một xa xỉ phẩm và có sức quyến rũ mạnh mẽ. Uy lực và thứ ánh sáng của nó đã mê hoặc được biết bao con người. Với mong muốn đó, Paco Rabanna lên ý tưởng thiết kế ra một loài nước hoa xa hoa, đầy mê hoặc với thiết kế hình thỏi vàng ấn tượng, biểu trưng cho uy quyền, tiếng tăm, sức mạnh, giàu sang và thịnh vượng.', N'nhun5.jpg', N' Hương đầu: Bưởi, cây bạc hà, cam Mandarin. Hương giữa: Hoa hồng, cây quế, gia vị. Hương cuối: Leather, mùi gỗ, hổ phách, cây hoắc hương', N' Độ lưu hương: Rất lâu (Trên 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (36, N' Le Labo Another 13', CAST(935 AS Decimal(38, 0)), N' Le Labo Another 13 vẻn vẹn tối giản 13 note mùi. Trong veo, dễ gần, xong lại khó đoán, và “hút hàng”. Với mùi hương tạo từ hoa, gỗ và xạ hương kiểu không quá ngọt ngào hoa lá cành hay rượu thuốc. Cứ xịt là thấy mình quyến rũ vô cùng như nào ấy, hay ít nhất làm người khác phải trầm trồ nhăn trán đặt dấu chấm hỏi về mùi hương của mình', N'nhun6.jpg', N' Hương chính: Hương Iso E Super, Hương Amyl Salicylate, Xạ hương, Long diên hương, Cây vông vang, Quả lê. Mùi hương chủ điểm là Ambroxan kết hợp cùng hoa nhẹ gỗ nhẹ xạ hương… Tạo thành hiệu ứng hương không mùi. Một hợp chất ngửi nhang nhác một phần mùi long diên hương. Bởi vị ngầy ngậy trong veo rất “da thịt” thanh khiết. 13 hơi hướng gỗ mùi rất trắng sạch khô lại hơi ngầy ngậy. Thơm nửa da thịt nửa mùi giấy sách tươi mới. Và chủ nhân của Le Labo Another 13 như một trang giấy trắng, chờ đợi người ta cảm nhận theo cách riêng của mình.', N' Độ lưu hương: Rất Lâu( Trên 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (37, N' Paco Rabanne Phantom For Men', CAST(370 AS Decimal(38, 0)), N' Xu hướng những sản phẩm nước hoa mang màu sắc công nghệ tương lai dần bắt đầu nở rộ mạnh mẽ từ 2021 với hàng loạt concept độc đáo, trong số đó không thể bỏ qua một trong những cái tên tiên phong của trào lưu này, đó chính là Phantom được cho ra đời bởi thương hiệu Paco Rabanne. Paco Rabanne Phantom là chai nước hoa đầu tiên có thể kết nối NFC bằng ứng dụng điện thoại mở ra một vũ trụ của Phantom – người chiến hữu mới của bạn. Thiết kế ấn tượng độc đáo dưới hình dáng của một nhân vật mà tuỳ theo cảm nhận, đó là một phi hành gia, robot hay là người ngoài hành tinh – tất cả đều dựa trên trí tưởng tượng của người sử dụng.', N'nhun7.jpg', N' Hương đầu: vỏ chanh vàng, hoa oải hương, chanh vàng amalfi. Hương giữa: hoa oải hương, hương đất, khói, táo xanh. Hương cuối: vani, oải hương, cỏ hương bài', N' Độ lưu hương: Tốt (6 giờ - 8 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (38, N' Calvin Klein CK Be', CAST(370 AS Decimal(38, 0)), N' Nước hoa CK Be được thương hiệu Calvin Klein cho ra mắt vào năm 1996 bởi nhà sáng lập Ann Gottlieb đến nay vẫn luôn nhận được sự yêu thích của nhiều người, bất kể tuổi tác hay giới tính.', N'nhun8.jpg', N' Hương đầu: hoa lavender, mùi sương, bạc hà, oải hương, cam bergamot. Hương giữa: hương cỏ, hoa mộc lan, hoa lan, hoa lan Nam Phi, trái đào, hoa nhài. Hương cuối: gỗ đàn hương, hổ phách, xạ hương, tuyết tùng, vani.', N' Độ lưu hương: 3 giờ - 6 giờ', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (39, N' Jean Paul Gaultier Le Male', CAST(560 AS Decimal(38, 0)), N' Đây là loại nước hoa đầu tiên mà Gaultier dành cho nam giới, ông muốn làm hồi sinh những giá trị truyền thống trong nước hoa Le Male. Kiểu chai thể hiện một cách gợi cảm qua hình tượng bán thân của nam giới với chiếc áo thủy thủ. Hình tượng những chàng trai ngon nghẻ hay một người đàn ông cuồn cuộn cơ bắp vẫn có thể ướp lên mình thứ hương thơm cực đỉnh từ Le male. Những dòng chảy vani phối trộn cùng bạc hà và oải hương, hoa cam đơn giản nhưng bằng khướu giác vượt bậc của nhà chế tác Francis Kurkdjian đã đủ tạo nên một thứ bùa yêu mãnh liệt có thể hớp hồn cả nam giới lẫn nữ giới.', N'nhun9.jpg', N' Hương đầu: cây ngải tây, hoa oải hương, lá bạc hà, cam Bergamot, hạt bạch đậu khấu. Hương giữa: cây carum, hoa cam, cây quế. Hương cuối: hương gỗ, đậu Tonka, hổ phách, hương vani, tuyết tùng', N' Độ lưu hương: Ổn (6 giờ - 8 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [MoTa], [AnhBia], [MuiHuong], [DanhGia], [NgayCapNhat], [SoLuongTon], [MaLoai]) VALUES (40, N' Armaf Club De Nuit Sillage EDP', CAST(930 AS Decimal(38, 0)), N' Club De Nuit Sillage là hương nước hoa mới được thương hiệu nước hoa Ả Rập Armaf cho ra mắt năm 2020. Thương hiệu Armaf  nổi tiếng với những chai nước hoa có mùi hương khá giống với những chai nước hoa đình đám trên thế giới và Sillage cũng không ngoại lệ khi được đánh giá là mang đậm màu sắc của siêu phẩm Creed Silver Mountain Water.', N'nhun10.jpg', N' Hương đầu: Cam Bergamot, Quả chanh, Gừng, Quả lý chua, lá Violet. Hương giữa: Hoa nhài, Hoa diên vĩ, Hoa hồng. Hương cuối: Gỗ đàn hương, Gỗ tuyết tùng, Xạ hương, Ambroxan.', N' Độ lưu hương: Lâu (7 giờ - 12 giờ)', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 15, 444)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__A9D10534415920B8]    Script Date: 1/8/2022 7:49:43 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__D5B8C7F0F41F91B0]    Script Date: 1/8/2022 7:49:43 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [Fk_DonHang] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DonDatHang] ([SoDH])
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [Fk_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD  CONSTRAINT [Fk_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDatHang] CHECK CONSTRAINT [Fk_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [Fk_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [Fk_LoaiSPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [Fk_LoaiSPham]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
