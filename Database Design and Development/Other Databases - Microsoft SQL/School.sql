USE [master]
GO
/****** Object:  Database [School]    Script Date: 9/11/2023 1:06:06 AM ******/
CREATE DATABASE [School]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\School.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\School_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [School] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School] SET ARITHABORT OFF 
GO
ALTER DATABASE [School] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School] SET  DISABLE_BROKER 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School] SET RECOVERY FULL 
GO
ALTER DATABASE [School] SET  MULTI_USER 
GO
ALTER DATABASE [School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [School] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'School', N'ON'
GO
ALTER DATABASE [School] SET QUERY_STORE = OFF
GO
USE [School]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 9/11/2023 1:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[class_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/11/2023 1:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_ID] [int] NOT NULL,
	[Month] [nchar](10) NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_2]    Script Date: 9/11/2023 1:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_2](
	[Employee_ID] [int] NOT NULL,
	[Month] [nchar](10) NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/11/2023 1:06:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[age] [int] NULL,
	[contact] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Class] ([id], [student_id], [class_name]) VALUES (25, 1, N'11A')
INSERT [dbo].[Class] ([id], [student_id], [class_name]) VALUES (26, 2, N'13A')
INSERT [dbo].[Class] ([id], [student_id], [class_name]) VALUES (27, 4, N'10B')
INSERT [dbo].[Class] ([id], [student_id], [class_name]) VALUES (28, 3, N'9C')
INSERT [dbo].[Class] ([id], [student_id], [class_name]) VALUES (29, 10, N'6B')
GO
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (100, N'Jan       ', 10000)
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (100, N'Feb       ', 20000)
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (100, N'Mar       ', 25000)
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (101, N'Jan       ', 12000)
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (101, N'Feb       ', 15000)
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (102, N'Jan       ', 20000)
INSERT [dbo].[Employee] ([Employee_ID], [Month], [Amount]) VALUES (103, N'          ', 15000)
GO
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (100, N'Jan       ', 10000)
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (100, N'Feb       ', 20000)
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (100, N'Mar       ', 25000)
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (101, N'Jan       ', 12000)
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (101, N'Feb       ', 15000)
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (102, N'Jan       ', 20000)
INSERT [dbo].[Employee_2] ([Employee_ID], [Month], [Amount]) VALUES (103, NULL, 15000)
GO
INSERT [dbo].[Student] ([id], [name], [age], [contact]) VALUES (1, N'abc', 21, 11234244)
INSERT [dbo].[Student] ([id], [name], [age], [contact]) VALUES (2, N'def', 23, 2244232)
INSERT [dbo].[Student] ([id], [name], [age], [contact]) VALUES (3, N'pqr', 17, 7735555)
INSERT [dbo].[Student] ([id], [name], [age], [contact]) VALUES (4, N'lmn', 29, 11344545)
INSERT [dbo].[Student] ([id], [name], [age], [contact]) VALUES (5, N'xyz', 24, 2335353)
GO
USE [master]
GO
ALTER DATABASE [School] SET  READ_WRITE 
GO
