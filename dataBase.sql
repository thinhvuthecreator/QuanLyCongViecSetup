USE [master]
GO
/****** Object:  Database [QUANLYCONGVIEC]    Script Date: 4/13/2023 6:29:47 PM ******/
CREATE DATABASE [QUANLYCONGVIEC] ON  PRIMARY 
( NAME = N'QUANLYCONGVIEC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYCONGVIEC.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLYCONGVIEC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUANLYCONGVIEC_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLYCONGVIEC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYCONGVIEC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYCONGVIEC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYCONGVIEC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYCONGVIEC] SET DB_CHAINING OFF 
GO
USE [QUANLYCONGVIEC]
GO
/****** Object:  Table [dbo].[HINHANH]    Script Date: 4/13/2023 6:29:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHANH](
	[MAHINH] [int] IDENTITY(0,1) NOT NULL,
	[TENHINH] [nvarchar](200) NOT NULL,
	[NGAYGIAOHINH] [nvarchar](100) NULL,
	[SDTKHACHGIAO] [varchar](10) NULL,
	[GIAHINH] [money] NULL,
	[TIENKHACHCOC] [money] NULL,
	[GHICHU] [nvarchar](1000) NULL,
	[DAXONG] [int] NULL,
	[MALOAI] [int] NULL,
	[KICHCO] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHANHBIXOA]    Script Date: 4/13/2023 6:29:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHANHBIXOA](
	[MAHINH] [int] IDENTITY(0,1) NOT NULL,
	[TENHINH] [nvarchar](200) NOT NULL,
	[NGAYGIAOHINH] [nvarchar](100) NULL,
	[SDTKHACHGIAO] [varchar](10) NULL,
	[GIAHINH] [money] NULL,
	[TIENKHACHCOC] [money] NULL,
	[GHICHU] [nvarchar](1000) NULL,
	[DAXONG] [int] NULL,
	[MALOAI] [int] NULL,
	[KICHCO] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIHINHANH]    Script Date: 4/13/2023 6:29:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHINHANH](
	[MALOAI] [int] IDENTITY(0,1) NOT NULL,
	[TENLOAI] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HINHANH] ON 

INSERT [dbo].[HINHANH] ([MAHINH], [TENHINH], [NGAYGIAOHINH], [SDTKHACHGIAO], [GIAHINH], [TIENKHACHCOC], [GHICHU], [DAXONG], [MALOAI], [KICHCO]) VALUES (36, N'thịnh nè', N'mai', N'0987918374', 2000000.0000, 500000.0000, N'okok', 0, 15, N'50 x 50')
SET IDENTITY_INSERT [dbo].[HINHANH] OFF
GO
SET IDENTITY_INSERT [dbo].[HINHANHBIXOA] ON 

INSERT [dbo].[HINHANHBIXOA] ([MAHINH], [TENHINH], [NGAYGIAOHINH], [SDTKHACHGIAO], [GIAHINH], [TIENKHACHCOC], [GHICHU], [DAXONG], [MALOAI], [KICHCO]) VALUES (41, N'Cá chép', N'15/4/2023', N'0987847264', 300000.0000, 250000.0000, N'', 0, 28, N'20 x 30')
SET IDENTITY_INSERT [dbo].[HINHANHBIXOA] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIHINHANH] ON 

INSERT [dbo].[LOAIHINHANH] ([MALOAI], [TENLOAI]) VALUES (15, N'Hình em bé')
INSERT [dbo].[LOAIHINHANH] ([MALOAI], [TENLOAI]) VALUES (29, N'Hình giáo viên')
INSERT [dbo].[LOAIHINHANH] ([MALOAI], [TENLOAI]) VALUES (18, N'Hình sinh nhật')
INSERT [dbo].[LOAIHINHANH] ([MALOAI], [TENLOAI]) VALUES (28, N'Hình thờ')
SET IDENTITY_INSERT [dbo].[LOAIHINHANH] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LOAIHINH__BF45B9961BFD2C07]    Script Date: 4/13/2023 6:29:48 PM ******/
ALTER TABLE [dbo].[LOAIHINHANH] ADD UNIQUE NONCLUSTERED 
(
	[TENLOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HINHANH] ADD  DEFAULT ((0)) FOR [GIAHINH]
GO
ALTER TABLE [dbo].[HINHANH] ADD  DEFAULT ((0)) FOR [TIENKHACHCOC]
GO
ALTER TABLE [dbo].[HINHANHBIXOA] ADD  DEFAULT ((0)) FOR [GIAHINH]
GO
ALTER TABLE [dbo].[HINHANHBIXOA] ADD  DEFAULT ((0)) FOR [TIENKHACHCOC]
GO
ALTER TABLE [dbo].[HINHANH]  WITH CHECK ADD FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIHINHANH] ([MALOAI])
GO
ALTER TABLE [dbo].[HINHANHBIXOA]  WITH CHECK ADD FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIHINHANH] ([MALOAI])
GO
USE [master]
GO
ALTER DATABASE [QUANLYCONGVIEC] SET  READ_WRITE 
GO
