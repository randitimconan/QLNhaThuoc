USE [QLNhaThuoc]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Level] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bophan]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bophan](
	[BophanID] [int] IDENTITY(1,1) NOT NULL,
	[Tenbophan] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bophan] PRIMARY KEY CLUSTERED 
(
	[BophanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHoadonbanthuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoadonbanthuoc](
	[HoadonbanthuocID] [int] NOT NULL,
	[Thuoc] [int] NOT NULL,
	[Soluong] [real] NULL,
	[Dongia] [real] NULL,
 CONSTRAINT [PK_CTHoadonbanhang] PRIMARY KEY CLUSTERED 
(
	[HoadonbanthuocID] ASC,
	[Thuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHoadonnhapthuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoadonnhapthuoc](
	[HoadonnhapthuocID] [int] NOT NULL,
	[ThuocID] [int] NOT NULL,
	[Soluong] [real] NULL,
	[Dongia] [real] NULL,
 CONSTRAINT [PK_CTHoadonnhaphang] PRIMARY KEY CLUSTERED 
(
	[HoadonnhapthuocID] ASC,
	[ThuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhmucthuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmucthuoc](
	[DanhmucthuocID] [int] NOT NULL,
	[Tendanhmuc] [nchar](10) NULL,
 CONSTRAINT [PK_Danhmucthuoc] PRIMARY KEY CLUSTERED 
(
	[DanhmucthuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hoadonbanthuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadonbanthuoc](
	[HoadonbanthuocID] [int] IDENTITY(1,1) NOT NULL,
	[Ngayviet] [datetime] NULL,
	[KhachhangID] [int] NULL,
	[NhanvienID] [int] NULL,
	[Thanhtien] [real] NULL,
 CONSTRAINT [PK_Hoadonbanhang] PRIMARY KEY CLUSTERED 
(
	[HoadonbanthuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hoadonnhapthuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadonnhapthuoc](
	[HoadonnhapthuocID] [int] IDENTITY(1,1) NOT NULL,
	[Ngayviet] [datetime] NULL,
	[NhanvienID] [int] NULL,
	[NhacungcapID] [int] NULL,
	[Thanhtien] [real] NULL,
 CONSTRAINT [PK_Hoadonnhaphang] PRIMARY KEY CLUSTERED 
(
	[HoadonnhapthuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[KhachhangID] [int] IDENTITY(1,1) NOT NULL,
	[Tenkhachhang] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
	[Gioitinh] [bit] NULL,
	[Sodienthoai] [nchar](17) NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[KhachhangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kho]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[KhoID] [int] IDENTITY(1,1) NOT NULL,
	[Tenkho] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[KhoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Luutru]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luutru](
	[KhoID] [int] NOT NULL,
	[ThuocID] [int] NOT NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_Luutru] PRIMARY KEY CLUSTERED 
(
	[KhoID] ASC,
	[ThuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[NhacungcapID] [int] IDENTITY(1,1) NOT NULL,
	[Tennhacungcap] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [varchar](20) NULL,
 CONSTRAINT [PK_Nhacungcap] PRIMARY KEY CLUSTERED 
(
	[NhacungcapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[NhanvienID] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[BophanID] [int] NULL,
	[Hesoluong] [real] NULL,
	[Gioitinh] [bit] NULL,
	[Ngaysinh] [datetime] NULL,
	[Diachi] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[NhanvienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhomthuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhomthuoc](
	[NhomthuocID] [int] IDENTITY(1,1) NOT NULL,
	[Tennhomthuoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loaisanpham] PRIMARY KEY CLUSTERED 
(
	[NhomthuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 5/26/2016 11:23:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[ThuocID] [int] IDENTITY(1,1) NOT NULL,
	[Tenthuoc] [nvarchar](50) NULL,
	[Donvitinh] [nvarchar](10) NULL,
	[Dongia] [real] NULL,
	[Ngaysanxuat] [datetime] NULL,
	[Ngayhethan] [datetime] NULL,
	[Noisanxuat] [nvarchar](50) NULL,
	[Congdung] [nvarchar](max) NULL,
	[Thanhphan] [nvarchar](max) NULL,
	[NhacungcapID] [int] NULL,
	[NhomthuocID] [int] NULL,
	[DanhmucthuocID] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[ThuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[CTHoadonbanthuoc]  WITH CHECK ADD  CONSTRAINT [FK_CTHoadonbanthuoc_Hoadonbanthuoc] FOREIGN KEY([HoadonbanthuocID])
REFERENCES [dbo].[Hoadonbanthuoc] ([HoadonbanthuocID])
GO
ALTER TABLE [dbo].[CTHoadonbanthuoc] CHECK CONSTRAINT [FK_CTHoadonbanthuoc_Hoadonbanthuoc]
GO
ALTER TABLE [dbo].[CTHoadonbanthuoc]  WITH CHECK ADD  CONSTRAINT [FK_CTHoadonbanthuoc_Thuoc] FOREIGN KEY([Thuoc])
REFERENCES [dbo].[Thuoc] ([ThuocID])
GO
ALTER TABLE [dbo].[CTHoadonbanthuoc] CHECK CONSTRAINT [FK_CTHoadonbanthuoc_Thuoc]
GO
ALTER TABLE [dbo].[CTHoadonnhapthuoc]  WITH CHECK ADD  CONSTRAINT [FK_CTHoadonnhapthuoc_Hoadonnhapthuoc] FOREIGN KEY([HoadonnhapthuocID])
REFERENCES [dbo].[Hoadonnhapthuoc] ([HoadonnhapthuocID])
GO
ALTER TABLE [dbo].[CTHoadonnhapthuoc] CHECK CONSTRAINT [FK_CTHoadonnhapthuoc_Hoadonnhapthuoc]
GO
ALTER TABLE [dbo].[CTHoadonnhapthuoc]  WITH CHECK ADD  CONSTRAINT [FK_CTHoadonnhapthuoc_Thuoc] FOREIGN KEY([ThuocID])
REFERENCES [dbo].[Thuoc] ([ThuocID])
GO
ALTER TABLE [dbo].[CTHoadonnhapthuoc] CHECK CONSTRAINT [FK_CTHoadonnhapthuoc_Thuoc]
GO
ALTER TABLE [dbo].[Hoadonbanthuoc]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonbanthuoc_Khachhang] FOREIGN KEY([KhachhangID])
REFERENCES [dbo].[Khachhang] ([KhachhangID])
GO
ALTER TABLE [dbo].[Hoadonbanthuoc] CHECK CONSTRAINT [FK_Hoadonbanthuoc_Khachhang]
GO
ALTER TABLE [dbo].[Hoadonbanthuoc]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonbanthuoc_Nhanvien] FOREIGN KEY([NhanvienID])
REFERENCES [dbo].[Nhanvien] ([NhanvienID])
GO
ALTER TABLE [dbo].[Hoadonbanthuoc] CHECK CONSTRAINT [FK_Hoadonbanthuoc_Nhanvien]
GO
ALTER TABLE [dbo].[Hoadonnhapthuoc]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonnhapthuoc_Nhacungcap] FOREIGN KEY([NhacungcapID])
REFERENCES [dbo].[Nhacungcap] ([NhacungcapID])
GO
ALTER TABLE [dbo].[Hoadonnhapthuoc] CHECK CONSTRAINT [FK_Hoadonnhapthuoc_Nhacungcap]
GO
ALTER TABLE [dbo].[Hoadonnhapthuoc]  WITH CHECK ADD  CONSTRAINT [FK_Hoadonnhapthuoc_Nhanvien] FOREIGN KEY([NhanvienID])
REFERENCES [dbo].[Nhanvien] ([NhanvienID])
GO
ALTER TABLE [dbo].[Hoadonnhapthuoc] CHECK CONSTRAINT [FK_Hoadonnhapthuoc_Nhanvien]
GO
ALTER TABLE [dbo].[Luutru]  WITH CHECK ADD  CONSTRAINT [FK_Luutru_Kho] FOREIGN KEY([KhoID])
REFERENCES [dbo].[Kho] ([KhoID])
GO
ALTER TABLE [dbo].[Luutru] CHECK CONSTRAINT [FK_Luutru_Kho]
GO
ALTER TABLE [dbo].[Luutru]  WITH CHECK ADD  CONSTRAINT [FK_Luutru_Thuoc] FOREIGN KEY([ThuocID])
REFERENCES [dbo].[Thuoc] ([ThuocID])
GO
ALTER TABLE [dbo].[Luutru] CHECK CONSTRAINT [FK_Luutru_Thuoc]
GO
ALTER TABLE [dbo].[Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_Nhanvien_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Nhanvien] CHECK CONSTRAINT [FK_Nhanvien_Account]
GO
ALTER TABLE [dbo].[Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_Nhanvien_Bophan] FOREIGN KEY([BophanID])
REFERENCES [dbo].[Bophan] ([BophanID])
GO
ALTER TABLE [dbo].[Nhanvien] CHECK CONSTRAINT [FK_Nhanvien_Bophan]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_Danhmucthuoc] FOREIGN KEY([DanhmucthuocID])
REFERENCES [dbo].[Danhmucthuoc] ([DanhmucthuocID])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_Danhmucthuoc]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_Nhacungcap] FOREIGN KEY([NhacungcapID])
REFERENCES [dbo].[Nhacungcap] ([NhacungcapID])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_Nhacungcap]
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_Nhomthuoc] FOREIGN KEY([NhomthuocID])
REFERENCES [dbo].[Nhomthuoc] ([NhomthuocID])
GO
ALTER TABLE [dbo].[Thuoc] CHECK CONSTRAINT [FK_Thuoc_Nhomthuoc]
GO
