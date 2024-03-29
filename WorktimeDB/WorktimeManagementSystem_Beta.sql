USE [master]
GO
/****** Object:  Database [WorktimeManagementSystem]    Script Date: 3/24/2023 2:44:33 PM ******/
CREATE DATABASE [WorktimeManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorktimeManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WorktimeManagementSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorktimeManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WorktimeManagementSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WorktimeManagementSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorktimeManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorktimeManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorktimeManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorktimeManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorktimeManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorktimeManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WorktimeManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [WorktimeManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorktimeManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorktimeManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorktimeManagementSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorktimeManagementSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WorktimeManagementSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WorktimeManagementSystem] SET QUERY_STORE = OFF
GO
USE [WorktimeManagementSystem]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 3/24/2023 2:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](12) NULL,
	[PhoneNum] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[UserName] [varchar](50) NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/24/2023 2:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[AdminID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/24/2023 2:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](20) NULL,
	[PhoneNum] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[DepartmentID] [int] NOT NULL,
	[Salary] [decimal](8, 2) NULL,
	[AdminID] [int] NOT NULL,
 CONSTRAINT [PK__Employee__3214EC27324C3F0B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeWorktime]    Script Date: 3/24/2023 2:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeWorktime](
	[WorktimeID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[StartWorktime] [smalldatetime] NOT NULL,
	[EndWorktime] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorktimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 3/24/2023 2:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectID] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [ntext] NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
	[EmployeeID] [int] NULL,
	[DepartmentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 3/24/2023 2:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resources](
	[ResourcesID] [int] NOT NULL,
	[ProjectID] [int] NOT NULL,
	[Income] [decimal](10, 2) NULL,
	[Expenses] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ResourcesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_Departments_Admins] FOREIGN KEY([AdminID])
REFERENCES [dbo].[Admins] ([ID])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_Departments_Admins]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Admins] FOREIGN KEY([AdminID])
REFERENCES [dbo].[Admins] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Admins]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments]
GO
ALTER TABLE [dbo].[EmployeeWorktime]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeWorktime_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[EmployeeWorktime] CHECK CONSTRAINT [FK_EmployeeWorktime_Employees]
GO
ALTER TABLE [dbo].[EmployeeWorktime]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeWorktime_Projects] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ProjectID])
GO
ALTER TABLE [dbo].[EmployeeWorktime] CHECK CONSTRAINT [FK_EmployeeWorktime_Projects]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Departments] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Departments]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Employees]
GO
ALTER TABLE [dbo].[Resources]  WITH CHECK ADD  CONSTRAINT [FK_Resources_Projects] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ProjectID])
GO
ALTER TABLE [dbo].[Resources] CHECK CONSTRAINT [FK_Resources_Projects]
GO
USE [master]
GO
ALTER DATABASE [WorktimeManagementSystem] SET  READ_WRITE 
GO
