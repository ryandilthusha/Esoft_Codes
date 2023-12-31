USE [master]
GO
/****** Object:  Database [C#]    Script Date: 9/11/2023 1:09:06 AM ******/
CREATE DATABASE [C#]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'C#', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\C#.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'C#_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\C#_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [C#] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [C#].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [C#] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [C#] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [C#] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [C#] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [C#] SET ARITHABORT OFF 
GO
ALTER DATABASE [C#] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [C#] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [C#] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [C#] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [C#] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [C#] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [C#] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [C#] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [C#] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [C#] SET  DISABLE_BROKER 
GO
ALTER DATABASE [C#] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [C#] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [C#] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [C#] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [C#] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [C#] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [C#] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [C#] SET RECOVERY FULL 
GO
ALTER DATABASE [C#] SET  MULTI_USER 
GO
ALTER DATABASE [C#] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [C#] SET DB_CHAINING OFF 
GO
ALTER DATABASE [C#] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [C#] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [C#] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [C#] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'C#', N'ON'
GO
ALTER DATABASE [C#] SET QUERY_STORE = OFF
GO
USE [C#]
GO
/****** Object:  Table [dbo].[Pizza]    Script Date: 9/11/2023 1:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pizza](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Zip_Code] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Tel] [varchar](50) NULL,
	[Coupen_ID] [varchar](50) NULL,
	[Pay] [varchar](50) NULL,
	[Credit] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Total_Price] [varchar](50) NULL,
	[Size] [varchar](255) NULL,
	[Mushroom_Topping] [varchar](255) NULL,
	[greenpepper_topping] [varchar](50) NULL,
	[ancho_topping] [varchar](50) NULL,
	[extra_topping] [varchar](50) NULL,
	[Userid] [int] NULL,
 CONSTRAINT [PK_Pizza] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reg_Cus]    Script Date: 9/11/2023 1:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reg_Cus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [varchar](50) NULL,
	[UPass] [varchar](50) NULL,
 CONSTRAINT [PK_Reg_Cus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_info]    Script Date: 9/11/2023 1:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [varchar](50) NULL,
	[s_address] [varchar](50) NULL,
	[s_age] [varchar](50) NULL,
 CONSTRAINT [PK_student_info] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testing_Table]    Script Date: 9/11/2023 1:09:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testing_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pizza] ON 

INSERT [dbo].[Pizza] ([id], [Name], [Address], [Zip_Code], [City], [Tel], [Coupen_ID], [Pay], [Credit], [Date], [Total_Price], [Size], [Mushroom_Topping], [greenpepper_topping], [ancho_topping], [extra_topping], [Userid]) VALUES (22, N'Ryan', N'Negombo', N'2321', N'Negombo', N'0764170647', N'4354', N'Master', N'4553234', N'12/21/2021 6:56:25 PM', N'7', N'small', N'YES', N'YES', N'NO', N'NO', 3)
INSERT [dbo].[Pizza] ([id], [Name], [Address], [Zip_Code], [City], [Tel], [Coupen_ID], [Pay], [Credit], [Date], [Total_Price], [Size], [Mushroom_Topping], [greenpepper_topping], [ancho_topping], [extra_topping], [Userid]) VALUES (23, N'Ryan', N'Negombo', N'2321', N'Negombo', N'0764170647', N'4354', N'Master', N'4553234', N'12/21/2021 6:56:25 PM', N'3.5', N'small', N'YES', N'YES', N'NO', N'YES', 3)
INSERT [dbo].[Pizza] ([id], [Name], [Address], [Zip_Code], [City], [Tel], [Coupen_ID], [Pay], [Credit], [Date], [Total_Price], [Size], [Mushroom_Topping], [greenpepper_topping], [ancho_topping], [extra_topping], [Userid]) VALUES (24, N'Ryan', N'Negombo', N'2321', N'Negombo', N'0764170647', N'4354', N'Master', N'4553234', N'12/21/2021 6:56:25 PM', N'4', N'small', N'YES', N'YES', N'YES', N'YES', 3)
INSERT [dbo].[Pizza] ([id], [Name], [Address], [Zip_Code], [City], [Tel], [Coupen_ID], [Pay], [Credit], [Date], [Total_Price], [Size], [Mushroom_Topping], [greenpepper_topping], [ancho_topping], [extra_topping], [Userid]) VALUES (25, N'Ryan', N'Negombo', N'2321', N'Negombo', N'0764170647', N'4354', N'Master', N'4553234', N'12/21/2021 6:56:25 PM', N'2', N'small', N'NO', N'NO', N'NO', N'NO', 3)
INSERT [dbo].[Pizza] ([id], [Name], [Address], [Zip_Code], [City], [Tel], [Coupen_ID], [Pay], [Credit], [Date], [Total_Price], [Size], [Mushroom_Topping], [greenpepper_topping], [ancho_topping], [extra_topping], [Userid]) VALUES (26, N'Ryan', N'Negombo', N'2321', N'Negombo', N'0764170647', N'4354', N'Master', N'4553234', N'12/21/2021 6:56:25 PM', N'5', N'large', N'YES', N'YES', N'NO', N'NO', 3)
INSERT [dbo].[Pizza] ([id], [Name], [Address], [Zip_Code], [City], [Tel], [Coupen_ID], [Pay], [Credit], [Date], [Total_Price], [Size], [Mushroom_Topping], [greenpepper_topping], [ancho_topping], [extra_topping], [Userid]) VALUES (27, N'Ryan', N'Negombo', N'2321', N'Negombo', N'0764170647', N'4354', N'Paypal', N'12345', N'12/7/2021 6:56:25 PM', N'32', N'medium', N'YES', N'YES', N'YES', N'YES', 3)
SET IDENTITY_INSERT [dbo].[Pizza] OFF
GO
SET IDENTITY_INSERT [dbo].[Reg_Cus] ON 

INSERT [dbo].[Reg_Cus] ([ID], [UName], [UPass]) VALUES (1, N'123', N'123')
INSERT [dbo].[Reg_Cus] ([ID], [UName], [UPass]) VALUES (2, N'Ryan', N'Ryan')
INSERT [dbo].[Reg_Cus] ([ID], [UName], [UPass]) VALUES (3, N'hi', N'hi')
SET IDENTITY_INSERT [dbo].[Reg_Cus] OFF
GO
USE [master]
GO
ALTER DATABASE [C#] SET  READ_WRITE 
GO
