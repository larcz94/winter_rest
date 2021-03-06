USE [master]
GO
/****** Object:  Database [winter]    Script Date: 28/11/2016 04:09:48 ******/
CREATE DATABASE [winter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'winter', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\winter.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'winter_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\winter_0.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [winter] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [winter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [winter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [winter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [winter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [winter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [winter] SET ARITHABORT OFF 
GO
ALTER DATABASE [winter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [winter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [winter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [winter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [winter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [winter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [winter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [winter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [winter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [winter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [winter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [winter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [winter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [winter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [winter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [winter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [winter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [winter] SET RECOVERY FULL 
GO
ALTER DATABASE [winter] SET  MULTI_USER 
GO
ALTER DATABASE [winter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [winter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [winter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [winter] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'winter', N'ON'
GO
USE [winter]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 28/11/2016 04:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[contactno] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[message] [varchar](255) NOT NULL,
	[date] [date] NOT NULL,
	[time] [time](7) NOT NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[forgetpassword]    Script Date: 28/11/2016 04:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[forgetpassword](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[date] [date] NOT NULL,
	[time] [time](7) NOT NULL,
 CONSTRAINT [PK_forgetpassword] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[login]    Script Date: 28/11/2016 04:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[confirmpassword] [varchar](255) NOT NULL,
	[usertype] [varchar](255) NOT NULL,
	[activated] [varchar](255) NOT NULL,
	[date] [date] NOT NULL,
	[time] [time](7) NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[userdetails]    Script Date: 28/11/2016 04:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[firstname] [varchar](255) NOT NULL,
	[lastname] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[mobileno] [varchar](255) NOT NULL,
	[birth] [varchar](255) NOT NULL,
	[gender] [varchar](255) NOT NULL,
	[nic] [varchar](255) NOT NULL,
	[line1] [varchar](255) NOT NULL,
	[line2] [varchar](255) NOT NULL,
	[city] [varchar](255) NOT NULL,
	[province] [varchar](255) NOT NULL,
	[usertype] [varchar](255) NOT NULL,
	[startdate] [varchar](255) NOT NULL,
 CONSTRAINT [PK_userdetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[contact] ADD  CONSTRAINT [DF_contact_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[contact] ADD  CONSTRAINT [DF_contact_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[forgetpassword] ADD  CONSTRAINT [DF_forgetpassword_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[forgetpassword] ADD  CONSTRAINT [DF_forgetpassword_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[login] ADD  CONSTRAINT [DF_login_activated]  DEFAULT ('pending') FOR [activated]
GO
ALTER TABLE [dbo].[login] ADD  CONSTRAINT [DF_login_date]  DEFAULT (getdate()) FOR [date]
GO
ALTER TABLE [dbo].[login] ADD  CONSTRAINT [DF_login_time]  DEFAULT (getdate()) FOR [time]
GO
USE [master]
GO
ALTER DATABASE [winter] SET  READ_WRITE 
GO
