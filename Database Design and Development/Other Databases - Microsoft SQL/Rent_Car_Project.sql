USE [master]
GO
/****** Object:  Database [Rent_Car_Project]    Script Date: 9/11/2023 1:04:50 AM ******/
CREATE DATABASE [Rent_Car_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rent_Car_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Rent_Car_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rent_Car_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Rent_Car_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Rent_Car_Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rent_Car_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rent_Car_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rent_Car_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rent_Car_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rent_Car_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rent_Car_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET RECOVERY FULL 
GO
ALTER DATABASE [Rent_Car_Project] SET  MULTI_USER 
GO
ALTER DATABASE [Rent_Car_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rent_Car_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rent_Car_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rent_Car_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rent_Car_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Rent_Car_Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Rent_Car_Project', N'ON'
GO
ALTER DATABASE [Rent_Car_Project] SET QUERY_STORE = OFF
GO
USE [Rent_Car_Project]
GO
/****** Object:  Table [dbo].[Bill_LongD_Hire_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_LongD_Hire_Table](
	[Bill_ID] [int] IDENTITY(1,1) NOT NULL,
	[Driver_Name] [varchar](50) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Bill_Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_OneD_Hire_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_OneD_Hire_Table](
	[Bill_ID] [int] IDENTITY(1,1) NOT NULL,
	[Driver_Name] [varchar](50) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Bill_Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_Rent_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_Rent_Table](
	[Bill_ID] [int] IDENTITY(1,1) NOT NULL,
	[Driver_Name] [varchar](50) NOT NULL,
	[Date] [varchar](50) NOT NULL,
	[Bill_Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Bill_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details_Drivers_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details_Drivers_Table](
	[Driver_ID] [int] IDENTITY(1,1) NOT NULL,
	[Driver_Username] [varchar](50) NOT NULL,
	[Driver_Password] [varchar](50) NOT NULL,
	[Driver_Email] [varchar](50) NOT NULL,
	[Driver_Phone] [varchar](50) NOT NULL,
	[Driver_DOB] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Driver_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details_LongD_Hire_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details_LongD_Hire_Table](
	[LongD_ID] [int] IDENTITY(1,1) NOT NULL,
	[Veh_Type] [varchar](50) NOT NULL,
	[Veh_Brand] [varchar](50) NOT NULL,
	[Veh_Model] [varchar](50) NOT NULL,
	[Veh_Colour] [varchar](50) NOT NULL,
	[LongD_Packages] [varchar](50) NOT NULL,
	[LongD_Per_km_charge] [int] NOT NULL,
	[LongD_Max_km_limit] [int] NOT NULL,
	[LongD_Extra_km_charge] [int] NOT NULL,
	[LongD_Driver_overnight_charge] [int] NOT NULL,
	[LongD_Vehicle_parking_charge] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LongD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details_OneD_Hire_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details_OneD_Hire_Table](
	[OneD_ID] [int] IDENTITY(1,1) NOT NULL,
	[Veh_Type] [varchar](50) NOT NULL,
	[Veh_Brand] [varchar](50) NOT NULL,
	[Veh_Model] [varchar](50) NOT NULL,
	[Veh_Colour] [varchar](50) NOT NULL,
	[OneD_Packages] [varchar](50) NOT NULL,
	[OneD_Per_km_charge] [int] NOT NULL,
	[OneD_Max_km_limit] [int] NOT NULL,
	[OneD_Extra_km_charge] [int] NOT NULL,
	[OneD_Max_hour_limit] [int] NOT NULL,
	[OneD_Extra_hour_charge] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OneD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details_Renting_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details_Renting_Table](
	[Rent_ID] [int] IDENTITY(1,1) NOT NULL,
	[Veh_Type] [varchar](50) NOT NULL,
	[Veh_Brand] [varchar](50) NOT NULL,
	[Veh_Model] [varchar](50) NOT NULL,
	[Veh_Colour] [varchar](50) NOT NULL,
	[Rent_Daily] [int] NOT NULL,
	[Rent_Weekly] [int] NOT NULL,
	[Rent_Monthly] [int] NOT NULL,
	[Rent_DriverRate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Rent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details_Vehicle_Table]    Script Date: 9/11/2023 1:04:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details_Vehicle_Table](
	[Veh_ID] [int] IDENTITY(1,1) NOT NULL,
	[Veh_Type] [varchar](50) NOT NULL,
	[Veh_RegNo] [varchar](50) NOT NULL,
	[Veh_Brand] [varchar](50) NOT NULL,
	[Veh_Model] [varchar](50) NOT NULL,
	[Veh_Colour] [varchar](50) NOT NULL,
	[Own_Name] [varchar](50) NOT NULL,
	[Own_ID] [varchar](50) NOT NULL,
	[Own_Phone] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Veh_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill_LongD_Hire_Table] ON 

INSERT [dbo].[Bill_LongD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (1, N'Pathum', N'1/16/2022 12:00:00 AM', 46400)
INSERT [dbo].[Bill_LongD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (2, N'Ryan', N'2/3/2022 12:00:00 AM', 56400)
INSERT [dbo].[Bill_LongD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (3, N'Ryan', N'2/3/2022 12:00:00 AM', 132800)
INSERT [dbo].[Bill_LongD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (4, N'Ryan', N'2/3/2022 12:00:00 AM', 154000)
INSERT [dbo].[Bill_LongD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (5, N'Ryan', N'2/3/2022 12:00:00 AM', 278800)
SET IDENTITY_INSERT [dbo].[Bill_LongD_Hire_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill_OneD_Hire_Table] ON 

INSERT [dbo].[Bill_OneD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (1, N'Michelle', N'1/16/2022 12:00:00 AM', 5000)
INSERT [dbo].[Bill_OneD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (2, N'Ryan', N'2/3/2022 12:00:00 AM', 57290)
INSERT [dbo].[Bill_OneD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (3, N'Ryan', N'2/3/2022 12:00:00 AM', 96640)
INSERT [dbo].[Bill_OneD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (4, N'Ryan', N'2/3/2022 12:00:00 AM', 249240)
INSERT [dbo].[Bill_OneD_Hire_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (5, N'Ryan', N'2/3/2022 12:00:00 AM', 15600)
SET IDENTITY_INSERT [dbo].[Bill_OneD_Hire_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill_Rent_Table] ON 

INSERT [dbo].[Bill_Rent_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (1, N'Ryan', N'1/16/2022 12:00:00 AM', 5000)
INSERT [dbo].[Bill_Rent_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (2, N'Ryan', N'2/3/2022 12:00:00 AM', 146000)
INSERT [dbo].[Bill_Rent_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (3, N'Ryan', N'2/3/2022 12:00:00 AM', 354000)
INSERT [dbo].[Bill_Rent_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (4, N'Ryan', N'2/3/2022 12:00:00 AM', 55000)
INSERT [dbo].[Bill_Rent_Table] ([Bill_ID], [Driver_Name], [Date], [Bill_Amount]) VALUES (5, N'Ryan', N'5/20/2023 12:00:00 AM', 74000)
SET IDENTITY_INSERT [dbo].[Bill_Rent_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Details_Drivers_Table] ON 

INSERT [dbo].[Details_Drivers_Table] ([Driver_ID], [Driver_Username], [Driver_Password], [Driver_Email], [Driver_Phone], [Driver_DOB]) VALUES (1, N'Ryan', N'Ryan', N'ryandilthusha@gmail.com', N'0764170647', N'1997-02-25')
INSERT [dbo].[Details_Drivers_Table] ([Driver_ID], [Driver_Username], [Driver_Password], [Driver_Email], [Driver_Phone], [Driver_DOB]) VALUES (2, N'Michelle', N'Michelle', N'michellefernando@gmail.com', N'0764170485', N'1997-06-24')
INSERT [dbo].[Details_Drivers_Table] ([Driver_ID], [Driver_Username], [Driver_Password], [Driver_Email], [Driver_Phone], [Driver_DOB]) VALUES (3, N'Pathum', N'Pathum', N'pathumfernando@gmail.com', N'0766123468', N'1997-03-03')
SET IDENTITY_INSERT [dbo].[Details_Drivers_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Details_LongD_Hire_Table] ON 

INSERT [dbo].[Details_LongD_Hire_Table] ([LongD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [LongD_Packages], [LongD_Per_km_charge], [LongD_Max_km_limit], [LongD_Extra_km_charge], [LongD_Driver_overnight_charge], [LongD_Vehicle_parking_charge]) VALUES (1, N'Car', N'Nissan', N'FB 15', N'Grey', N'2 days trip', 100, 200, 120, 1000, 200)
INSERT [dbo].[Details_LongD_Hire_Table] ([LongD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [LongD_Packages], [LongD_Per_km_charge], [LongD_Max_km_limit], [LongD_Extra_km_charge], [LongD_Driver_overnight_charge], [LongD_Vehicle_parking_charge]) VALUES (2, N'Car', N'Nissan', N'FB 15', N'Grey', N'3 days trip', 100, 300, 120, 1000, 200)
INSERT [dbo].[Details_LongD_Hire_Table] ([LongD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [LongD_Packages], [LongD_Per_km_charge], [LongD_Max_km_limit], [LongD_Extra_km_charge], [LongD_Driver_overnight_charge], [LongD_Vehicle_parking_charge]) VALUES (3, N'Car', N'Nissan', N'FB 15', N'Grey', N'4 days trip', 100, 400, 120, 1000, 200)
INSERT [dbo].[Details_LongD_Hire_Table] ([LongD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [LongD_Packages], [LongD_Per_km_charge], [LongD_Max_km_limit], [LongD_Extra_km_charge], [LongD_Driver_overnight_charge], [LongD_Vehicle_parking_charge]) VALUES (4, N'Car', N'Nissan', N'FB 15', N'Grey', N'5 days trip', 100, 500, 120, 1000, 200)
INSERT [dbo].[Details_LongD_Hire_Table] ([LongD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [LongD_Packages], [LongD_Per_km_charge], [LongD_Max_km_limit], [LongD_Extra_km_charge], [LongD_Driver_overnight_charge], [LongD_Vehicle_parking_charge]) VALUES (5, N'Car', N'Nissan', N'FB 15', N'Grey', N'6 days trip', 100, 600, 120, 1000, 200)
INSERT [dbo].[Details_LongD_Hire_Table] ([LongD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [LongD_Packages], [LongD_Per_km_charge], [LongD_Max_km_limit], [LongD_Extra_km_charge], [LongD_Driver_overnight_charge], [LongD_Vehicle_parking_charge]) VALUES (6, N'Car', N'Nissan', N'FB 15', N'Grey', N'7 days trip', 100, 700, 120, 1000, 200)
SET IDENTITY_INSERT [dbo].[Details_LongD_Hire_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Details_OneD_Hire_Table] ON 

INSERT [dbo].[Details_OneD_Hire_Table] ([OneD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [OneD_Packages], [OneD_Per_km_charge], [OneD_Max_km_limit], [OneD_Extra_km_charge], [OneD_Max_hour_limit], [OneD_Extra_hour_charge]) VALUES (1, N'Car', N'Nissan', N'FB 15', N'Grey', N'Air Port Drop', 100, 50, 120, 3, 150)
INSERT [dbo].[Details_OneD_Hire_Table] ([OneD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [OneD_Packages], [OneD_Per_km_charge], [OneD_Max_km_limit], [OneD_Extra_km_charge], [OneD_Max_hour_limit], [OneD_Extra_hour_charge]) VALUES (2, N'Car', N'Nissan', N'FB 15', N'Grey', N'Air Port Pickup', 100, 50, 120, 3, 150)
INSERT [dbo].[Details_OneD_Hire_Table] ([OneD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [OneD_Packages], [OneD_Per_km_charge], [OneD_Max_km_limit], [OneD_Extra_km_charge], [OneD_Max_hour_limit], [OneD_Extra_hour_charge]) VALUES (3, N'Car', N'Nissan', N'FB 15', N'Grey', N'100km Per Day', 100, 100, 120, 4, 200)
INSERT [dbo].[Details_OneD_Hire_Table] ([OneD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [OneD_Packages], [OneD_Per_km_charge], [OneD_Max_km_limit], [OneD_Extra_km_charge], [OneD_Max_hour_limit], [OneD_Extra_hour_charge]) VALUES (4, N'Car', N'Nissan', N'FB 15', N'Grey', N'200km Per Day', 100, 200, 120, 8, 200)
INSERT [dbo].[Details_OneD_Hire_Table] ([OneD_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [OneD_Packages], [OneD_Per_km_charge], [OneD_Max_km_limit], [OneD_Extra_km_charge], [OneD_Max_hour_limit], [OneD_Extra_hour_charge]) VALUES (5, N'Car', N'Nissan', N'FB 15', N'Grey', N'Over 200km Per Day', 100, 300, 120, 12, 200)
SET IDENTITY_INSERT [dbo].[Details_OneD_Hire_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Details_Renting_Table] ON 

INSERT [dbo].[Details_Renting_Table] ([Rent_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [Rent_Daily], [Rent_Weekly], [Rent_Monthly], [Rent_DriverRate]) VALUES (1, N'Car', N'Nissan', N'FB 15', N'Grey', 2000, 10000, 40000, 1000)
INSERT [dbo].[Details_Renting_Table] ([Rent_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [Rent_Daily], [Rent_Weekly], [Rent_Monthly], [Rent_DriverRate]) VALUES (2, N'SUV', N'Toyota', N'Cpmpact', N'White', 4000, 20000, 80000, 2000)
INSERT [dbo].[Details_Renting_Table] ([Rent_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [Rent_Daily], [Rent_Weekly], [Rent_Monthly], [Rent_DriverRate]) VALUES (3, N'Van', N'Toyota', N'Lite Ace', N'Black', 2500, 12000, 60000, 1500)
INSERT [dbo].[Details_Renting_Table] ([Rent_ID], [Veh_Type], [Veh_Brand], [Veh_Model], [Veh_Colour], [Rent_Daily], [Rent_Weekly], [Rent_Monthly], [Rent_DriverRate]) VALUES (4, N'Bus', N'TATA', N'Leyland', N'Blue', 5000, 20000, 100000, 2000)
SET IDENTITY_INSERT [dbo].[Details_Renting_Table] OFF
GO
SET IDENTITY_INSERT [dbo].[Details_Vehicle_Table] ON 

INSERT [dbo].[Details_Vehicle_Table] ([Veh_ID], [Veh_Type], [Veh_RegNo], [Veh_Brand], [Veh_Model], [Veh_Colour], [Own_Name], [Own_ID], [Own_Phone]) VALUES (1, N'Car', N'KD 7275', N'Nissan', N'FB 15', N'Grey', N'Kelum', N'745736735V', N'0773733076')
INSERT [dbo].[Details_Vehicle_Table] ([Veh_ID], [Veh_Type], [Veh_RegNo], [Veh_Brand], [Veh_Model], [Veh_Colour], [Own_Name], [Own_ID], [Own_Phone]) VALUES (2, N'SUV', N'CAR 3553', N'Toyota', N'Cpmpact', N'White', N'Anam', N'705967735V', N'0773969457')
INSERT [dbo].[Details_Vehicle_Table] ([Veh_ID], [Veh_Type], [Veh_RegNo], [Veh_Brand], [Veh_Model], [Veh_Colour], [Own_Name], [Own_ID], [Own_Phone]) VALUES (3, N'Van', N'PG 6587', N'Toyota', N'Lite Ace', N'Black', N'Kapila', N'805635785V', N'0747356845')
INSERT [dbo].[Details_Vehicle_Table] ([Veh_ID], [Veh_Type], [Veh_RegNo], [Veh_Brand], [Veh_Model], [Veh_Colour], [Own_Name], [Own_ID], [Own_Phone]) VALUES (4, N'Bus', N'LT 7653', N'TATA', N'Leyland', N'Blue', N'Saman', N'727563456V', N'0716457452')
SET IDENTITY_INSERT [dbo].[Details_Vehicle_Table] OFF
GO
USE [master]
GO
ALTER DATABASE [Rent_Car_Project] SET  READ_WRITE 
GO
