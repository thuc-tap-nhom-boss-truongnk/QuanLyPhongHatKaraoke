USE [master]
GO
/****** Object:  Database [IKaraokeDB]    Script Date: 3/14/2018 2:05:28 PM ******/
CREATE DATABASE [IKaraokeDB]
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IKaraokeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IKaraokeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IKaraokeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IKaraokeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IKaraokeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IKaraokeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [IKaraokeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IKaraokeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IKaraokeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IKaraokeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IKaraokeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IKaraokeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IKaraokeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IKaraokeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IKaraokeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IKaraokeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IKaraokeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IKaraokeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IKaraokeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IKaraokeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IKaraokeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IKaraokeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IKaraokeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IKaraokeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IKaraokeDB] SET  MULTI_USER 
GO
ALTER DATABASE [IKaraokeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IKaraokeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IKaraokeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IKaraokeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [IKaraokeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [IKaraokeDB]
GO
/****** Object:  Table [dbo].[CTDichVu]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDichVu](
	[MaDV] [int] NULL,
	[MaPH] [int] NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTThietBi]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTThietBi](
	[MaTB] [int] NULL,
	[MaPH] [int] NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](100) NOT NULL,
	[DonGia] [float] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[MaLoaiDV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaPH] [int] NULL,
	[ThanhTien] [float] NULL,
	[TongTien] [float] NULL,
	[TrangThai] [bit] NULL,
	[NgayLap] [date] NULL,
	[ThangLap] [nvarchar](2) NULL,
	[NamLap] [nvarchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[GT] [bit] NULL,
	[DienThoai] [nvarchar](20) NULL,
	[MaLoaiKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDichVu]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDichVu](
	[MaLoaiDV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDV] [nvarchar](20) NULL,
	[LoaiDV] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[MaLoaiKH] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiKH] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThietBi]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThietBi](
	[MaLoaiTB] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTB] [nvarchar](50) NOT NULL,
	[XuatXu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanPhong]    Script Date: 3/14/2018 2:05:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanPhong](
	[MaNP] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[NgayNhan] [date] NULL,
	[GioNhan] [time](7) NULL,
	[MaPH] [int] NULL,
	[SoLuongNguoi] [int] NULL,
	[SoDienThoai] [nvarchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/14/2018 2:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [nvarchar](20) NOT NULL,
	[MatMaDN] [nvarchar](20) NOT NULL,
	[QuyenDN] [nvarchar](20) NOT NULL,
	[HoTenNV] [nvarchar](30) NOT NULL,
	[NgaySinh] [date] NULL,
	[GT] [bit] NOT NULL,
	[DienThoai] [nvarchar](11) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[LuongNV] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 3/14/2018 2:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[SoPD] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[GioDat] [nvarchar](10) NOT NULL,
	[MaPH] [int] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhongHat]    Script Date: 3/14/2018 2:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongHat](
	[MaPH] [int] IDENTITY(1,1) NOT NULL,
	[TenPH] [nvarchar](20) NULL,
	[TrangThai] [int] NULL,
	[NgayVao] [date] NULL,
	[GioVao] [time](7) NULL,
	[GioRa] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThietBi]    Script Date: 3/14/2018 2:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBi](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[TenTB] [nvarchar](50) NOT NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[MaLoaiTB] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 3/14/2018 2:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[NguoiGui] [nvarchar](50) NULL,
	[NguoiNhan] [nvarchar](50) NULL,
	[Ngaygui] [datetime] NULL,
	[NgayNhan] [datetime] NULL,
	[NoiDungTB] [nvarchar](255) NULL,
	[TrangThaiTB] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CTDichVu] ([MaDV], [MaPH], [DonGia], [SoLuong]) VALUES (1, 1, 25000, 7)
INSERT [dbo].[CTDichVu] ([MaDV], [MaPH], [DonGia], [SoLuong]) VALUES (3, 3, NULL, 4)
INSERT [dbo].[CTDichVu] ([MaDV], [MaPH], [DonGia], [SoLuong]) VALUES (4, 2, NULL, 6)
INSERT [dbo].[CTDichVu] ([MaDV], [MaPH], [DonGia], [SoLuong]) VALUES (1, 4, 30000, 9)
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [MoTa], [MaLoaiDV]) VALUES (1, N'nước cam', 50000, N'nước cam ép nguyên chất', 2)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [MoTa], [MaLoaiDV]) VALUES (3, N'cóc dầm bò khô', 25000, N'cóc trộn với thịt bò khô', 1)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [MoTa], [MaLoaiDV]) VALUES (4, N'kem nuoc dua', 25000, N'kem va nuoc dua nguyen chat', 4)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGia], [MoTa], [MaLoaiDV]) VALUES (5, N'hoa qua dam', 120000, N'hoa qua dam bao gom cac loai qua tuoi mat', 1)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GT], [DienThoai], [MaLoaiKH]) VALUES (2, N'Phan Huy Dũng', 0, N'0123456789', 2)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GT], [DienThoai], [MaLoaiKH]) VALUES (3, N'Nguyễn Khánh Trường', 1, N'0912345678', 2)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiDichVu] ON 

INSERT [dbo].[LoaiDichVu] ([MaLoaiDV], [TenLoaiDV], [LoaiDV]) VALUES (1, N'hoa quả', N'đồ ăn')
INSERT [dbo].[LoaiDichVu] ([MaLoaiDV], [TenLoaiDV], [LoaiDV]) VALUES (2, N'nước ép', N'đồ uống')
INSERT [dbo].[LoaiDichVu] ([MaLoaiDV], [TenLoaiDV], [LoaiDV]) VALUES (4, N'kem', N'đồ ăn')
SET IDENTITY_INSERT [dbo].[LoaiDichVu] OFF
SET IDENTITY_INSERT [dbo].[LoaiKhachHang] ON 

INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [SoLuong]) VALUES (2, N'khách hàng quen', 4)
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKH], [TenLoaiKH], [SoLuong]) VALUES (3, N'khách hàng mới', 1)
SET IDENTITY_INSERT [dbo].[LoaiKhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiThietBi] ON 

INSERT [dbo].[LoaiThietBi] ([MaLoaiTB], [TenLoaiTB], [XuatXu]) VALUES (1, N'Amply', N'hk')
INSERT [dbo].[LoaiThietBi] ([MaLoaiTB], [TenLoaiTB], [XuatXu]) VALUES (2, N'Loa US', N'Canifonia')
INSERT [dbo].[LoaiThietBi] ([MaLoaiTB], [TenLoaiTB], [XuatXu]) VALUES (3, N'Loa Sony', N'Japan')
INSERT [dbo].[LoaiThietBi] ([MaLoaiTB], [TenLoaiTB], [XuatXu]) VALUES (4, N'Loa Bose', N'US')
INSERT [dbo].[LoaiThietBi] ([MaLoaiTB], [TenLoaiTB], [XuatXu]) VALUES (6, N'Mic HK', N'Korean')
SET IDENTITY_INSERT [dbo].[LoaiThietBi] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenDN], [MatMaDN], [QuyenDN], [HoTenNV], [NgaySinh], [GT], [DienThoai], [DiaChi], [LuongNV]) VALUES (1, N'dungph', N'dungph', N'admin', N'phan huy dung', CAST(N'1996-03-03' AS Date), 1, N'0123456789', N'ha noi', 1000000)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhongHat] ON 

INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (1, N'PH201', 1, CAST(N'2017-04-12' AS Date), CAST(N'20:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (2, N'PH203', 2, NULL, NULL, NULL)
INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (3, N'PH301', 3, NULL, NULL, NULL)
INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (4, N'PH302', 2, NULL, NULL, NULL)
INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (5, N'PH303', 3, NULL, NULL, NULL)
INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (6, N'PH401', 1, NULL, NULL, NULL)
INSERT [dbo].[PhongHat] ([MaPH], [TenPH], [TrangThai], [NgayVao], [GioVao], [GioRa]) VALUES (7, N'PH204', 2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PhongHat] OFF
SET IDENTITY_INSERT [dbo].[ThietBi] ON 

INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [DonGia], [SoLuong], [TrangThai], [MaLoaiTB]) VALUES (1, N'Loa BMB 1000W', 12900000, 20, 1, 2)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [DonGia], [SoLuong], [TrangThai], [MaLoaiTB]) VALUES (2, N'mic không dây HK', 500000, 12, 1, 6)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [DonGia], [SoLuong], [TrangThai], [MaLoaiTB]) VALUES (3, N'Loa Bose 800w', 20000000, 2, 0, 4)
SET IDENTITY_INSERT [dbo].[ThietBi] OFF
ALTER TABLE [dbo].[CTDichVu]  WITH CHECK ADD FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[CTDichVu]  WITH CHECK ADD FOREIGN KEY([MaPH])
REFERENCES [dbo].[PhongHat] ([MaPH])
GO
ALTER TABLE [dbo].[CTThietBi]  WITH CHECK ADD FOREIGN KEY([MaPH])
REFERENCES [dbo].[PhongHat] ([MaPH])
GO
ALTER TABLE [dbo].[CTThietBi]  WITH CHECK ADD FOREIGN KEY([MaTB])
REFERENCES [dbo].[ThietBi] ([MaTB])
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD FOREIGN KEY([MaLoaiDV])
REFERENCES [dbo].[LoaiDichVu] ([MaLoaiDV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaPH])
REFERENCES [dbo].[PhongHat] ([MaPH])
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaLoaiKH])
REFERENCES [dbo].[LoaiKhachHang] ([MaLoaiKH])
GO
ALTER TABLE [dbo].[NhanPhong]  WITH CHECK ADD FOREIGN KEY([MaPH])
REFERENCES [dbo].[PhongHat] ([MaPH])
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD FOREIGN KEY([MaPH])
REFERENCES [dbo].[PhongHat] ([MaPH])
GO
ALTER TABLE [dbo].[ThietBi]  WITH CHECK ADD FOREIGN KEY([MaLoaiTB])
REFERENCES [dbo].[LoaiThietBi] ([MaLoaiTB])
GO
USE [master]
GO
ALTER DATABASE [IKaraokeDB] SET  READ_WRITE 
GO
