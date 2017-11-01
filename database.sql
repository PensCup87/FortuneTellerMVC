USE [master]
GO
/****** Object:  Database [FortuneTellerMVC]    Script Date: 11/1/2017 3:11:23 PM ******/
CREATE DATABASE [FortuneTellerMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FortuneTellerMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FortuneTellerMVC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FortuneTellerMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\FortuneTellerMVC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FortuneTellerMVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FortuneTellerMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FortuneTellerMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FortuneTellerMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FortuneTellerMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FortuneTellerMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FortuneTellerMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FortuneTellerMVC] SET  MULTI_USER 
GO
ALTER DATABASE [FortuneTellerMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FortuneTellerMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FortuneTellerMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FortuneTellerMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FortuneTellerMVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FortuneTellerMVC]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/1/2017 3:11:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CusFirstName] [nvarchar](50) NOT NULL,
	[CusLastName] [nvarchar](50) NOT NULL,
	[CusAge] [int] NOT NULL,
	[CusBirthMonth] [varchar](10) NOT NULL,
	[FavoriteColor] [nvarchar](50) NOT NULL,
	[NumberOfSiblings] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CusFirstName], [CusLastName], [CusAge], [CusBirthMonth], [FavoriteColor], [NumberOfSiblings]) VALUES (1, N'Sid', N'Crosby', 30, N'August', N'Black', 2)
INSERT [dbo].[Customer] ([CustomerID], [CusFirstName], [CusLastName], [CusAge], [CusBirthMonth], [FavoriteColor], [NumberOfSiblings]) VALUES (2, N'g', N'g', 67, N'January', N'red', 3)
SET IDENTITY_INSERT [dbo].[Customer] OFF
USE [master]
GO
ALTER DATABASE [FortuneTellerMVC] SET  READ_WRITE 
GO
