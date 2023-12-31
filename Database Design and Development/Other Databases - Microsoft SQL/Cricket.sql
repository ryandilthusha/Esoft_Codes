USE [master]
GO
/****** Object:  Database [Cricket]    Script Date: 9/11/2023 1:07:40 AM ******/
CREATE DATABASE [Cricket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cricket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cricket.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cricket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cricket_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cricket] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cricket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cricket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cricket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cricket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cricket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cricket] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cricket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cricket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cricket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cricket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cricket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cricket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cricket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cricket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cricket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cricket] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cricket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cricket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cricket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cricket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cricket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cricket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cricket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cricket] SET RECOVERY FULL 
GO
ALTER DATABASE [Cricket] SET  MULTI_USER 
GO
ALTER DATABASE [Cricket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cricket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cricket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cricket] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cricket] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cricket] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cricket', N'ON'
GO
ALTER DATABASE [Cricket] SET QUERY_STORE = OFF
GO
USE [Cricket]
GO
/****** Object:  Table [dbo].[coach]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coach](
	[ID] [int] NOT NULL,
	[Coach_Name] [varchar](255) NULL,
	[cOACH_aDDRESS] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager_SALARY]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager_SALARY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Manager_id] [int] NULL,
	[basic_salary] [decimal](18, 0) NULL,
	[allwance] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Match_Date] [date] NULL,
	[Id_host] [int] NULL,
	[result] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_profile]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_profile](
	[Id] [int] NULL,
	[Player_Name] [varchar](255) NULL,
	[DOB] [date] NULL,
	[Resident] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player_SALARY]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player_SALARY](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Player_id] [int] NULL,
	[basic_salary] [decimal](18, 0) NULL,
	[allwance] [decimal](18, 0) NULL,
	[bonus] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScoreCard]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScoreCard](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[team_name] [varchar](255) NULL,
	[match_date] [date] NULL,
	[venue] [varchar](255) NULL,
	[matchtime] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[team]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[team_name] [varchar](255) NULL,
	[owner_name] [varchar](255) NULL,
	[Starting_Date] [date] NULL,
	[coach] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 9/11/2023 1:07:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

INSERT [dbo].[Match] ([Id], [Match_Date], [Id_host], [result]) VALUES (1, CAST(N'2021-01-01' AS Date), 1, 4)
INSERT [dbo].[Match] ([Id], [Match_Date], [Id_host], [result]) VALUES (2, CAST(N'1994-01-01' AS Date), 1, 10)
SET IDENTITY_INSERT [dbo].[Match] OFF
GO
SET IDENTITY_INSERT [dbo].[team] ON 

INSERT [dbo].[team] ([Id], [team_name], [owner_name], [Starting_Date], [coach]) VALUES (3, N'Sri Lanka', N'NO', CAST(N'1980-01-01' AS Date), N'None')
INSERT [dbo].[team] ([Id], [team_name], [owner_name], [Starting_Date], [coach]) VALUES (4, N'England', N'NO', CAST(N'1980-01-01' AS Date), N'None')
INSERT [dbo].[team] ([Id], [team_name], [owner_name], [Starting_Date], [coach]) VALUES (5, N'India', N'NO', CAST(N'2000-01-01' AS Date), N'None')
INSERT [dbo].[team] ([Id], [team_name], [owner_name], [Starting_Date], [coach]) VALUES (6, N'Maldives', N'NO', CAST(N'2021-01-01' AS Date), N'None')
INSERT [dbo].[team] ([Id], [team_name], [owner_name], [Starting_Date], [coach]) VALUES (7, N'Nepal', N'NO', CAST(N'2021-01-01' AS Date), N'None')
SET IDENTITY_INSERT [dbo].[team] OFF
GO
USE [master]
GO
ALTER DATABASE [Cricket] SET  READ_WRITE 
GO
