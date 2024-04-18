USE [master]
GO
/****** Object:  Database [PlantDetection]    Script Date: 18/4/2024 7:49:31 pm ******/
CREATE DATABASE [PlantDetection]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PlantDetection', FILENAME = N'D:\SQL\MSSQL16.MSSQLSERVER01\MSSQL\DATA\PlantDetection.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PlantDetection_log', FILENAME = N'D:\SQL\MSSQL16.MSSQLSERVER01\MSSQL\DATA\PlantDetection_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PlantDetection] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlantDetection].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlantDetection] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PlantDetection] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PlantDetection] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PlantDetection] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PlantDetection] SET ARITHABORT OFF 
GO
ALTER DATABASE [PlantDetection] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PlantDetection] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PlantDetection] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PlantDetection] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PlantDetection] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PlantDetection] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PlantDetection] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PlantDetection] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PlantDetection] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PlantDetection] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PlantDetection] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PlantDetection] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PlantDetection] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PlantDetection] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PlantDetection] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PlantDetection] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PlantDetection] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PlantDetection] SET RECOVERY FULL 
GO
ALTER DATABASE [PlantDetection] SET  MULTI_USER 
GO
ALTER DATABASE [PlantDetection] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PlantDetection] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PlantDetection] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PlantDetection] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PlantDetection] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PlantDetection] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PlantDetection', N'ON'
GO
ALTER DATABASE [PlantDetection] SET QUERY_STORE = ON
GO
ALTER DATABASE [PlantDetection] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PlantDetection]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Desired]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Desired](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Temp] [nvarchar](max) NOT NULL,
	[Humidity] [nvarchar](max) NOT NULL,
	[Lighting] [nvarchar](max) NOT NULL,
	[CO2] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Desired] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diseases]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diseases](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Remedy] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[DateTime] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Diseases] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owners]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Owners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantDesired]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantDesired](
	[PlantId] [int] NOT NULL,
	[DesiredId] [int] NOT NULL,
 CONSTRAINT [PK_PlantDesired] PRIMARY KEY CLUSTERED 
(
	[PlantId] ASC,
	[DesiredId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantDiseases]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantDiseases](
	[PlantId] [int] NOT NULL,
	[DiseasesId] [int] NOT NULL,
 CONSTRAINT [PK_PlantDiseases] PRIMARY KEY CLUSTERED 
(
	[PlantId] ASC,
	[DiseasesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantOwners]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantOwners](
	[PlantId] [int] NOT NULL,
	[OwnerId] [int] NOT NULL,
 CONSTRAINT [PK_PlantOwners] PRIMARY KEY CLUSTERED 
(
	[PlantId] ASC,
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plants]    Script Date: 18/4/2024 7:49:31 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PlantDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Plants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240412081208_InitialCreate', N'8.0.0')
GO
SET IDENTITY_INSERT [dbo].[Desired] ON 

INSERT [dbo].[Desired] ([Id], [Title], [Temp], [Humidity], [Lighting], [CO2]) VALUES (1, N'Lettuce', N'Day: 21-25 degree celcius, Night: 20 degree celcius', N'75 - 80%', N'Early stages: 100PPF, Mature: 200PPF, 85% Red and 15% Blue', N'450 - 600 ppm')
SET IDENTITY_INSERT [dbo].[Desired] OFF
GO
SET IDENTITY_INSERT [dbo].[Diseases] ON 

INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (1, N'Black Spots', N'Wash off black spots', N'Chamber 2, Shelve 1, Top Row, Plant 5', N'01.05.2024.')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (2, N'Browning', N'Trim off edges', N'Chamber 1_Shelve 1_ Row 1_ Plant 2.jpg', N'13-04-24 12:18:55')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (3, N'Black Spots', N'Wash off black spots', N'Chamber 1_Shelve 1_ Row 1_ Plant 6.jpg', N'13-04-24 12:18:56')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (4, N'Yellowing', N'lack of nutrients (manganese, iron or magnesium)', N'Chamber 2_Shelve 2_ Row 3_ Plant 2.jpg', N'13-04-24 12:18:57')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (5, N'Browning', N'Trim off edges', N'Chamber 3_Shelve 2_ Row 2_ Plant 5.jpg', N'13-04-24 12:18:58')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (6, N'Rusting', N'Remedy by using Neem oil, dusting of Sulphur or rust control fungicides. Climate change: Too much water or too little airflow and sunlight', N'Chamber 4_Shelve 5_ Row 3_ Plant 10.jpg', N'13-04-24 12:18:59')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (7, N'Browning', N'Trim off edges', N'Chamber 1_Shelve 1_ Row 1_ Plant 2.jpg', N'13-04-24 13:28:04')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (8, N'Black Spots', N'Wash off black spots', N'Chamber 1_Shelve 1_ Row 1_ Plant 6.jpg', N'13-04-24 13:28:05')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (9, N'Yellowing', N'lack of nutrients (manganese, iron or magnesium)', N'Chamber 2_Shelve 2_ Row 3_ Plant 2.jpg', N'13-04-24 13:28:06')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (10, N'Browning', N'Trim off edges', N'Chamber 3_Shelve 2_ Row 2_ Plant 5.jpg', N'13-04-24 13:28:07')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (11, N'Rusting', N'Remedy by using Neem oil, dusting of Sulphur or rust control fungicides. Climate change: Too much water or too little airflow and sunlight', N'Chamber 4_Shelve 5_ Row 3_ Plant 10.jpg', N'13-04-24 13:28:09')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (12, N'Browning', N'Trim off edges', N'Chamber 1_Shelve 1_ Row 1_ Plant 2.jpg', N'13-04-24 13:32:04')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (13, N'Black Spots', N'Wash off black spots', N'Chamber 1_Shelve 1_ Row 1_ Plant 6.jpg', N'13-04-24 13:32:05')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (14, N'Yellowing', N'lack of nutrients (manganese, iron or magnesium)', N'Chamber 2_Shelve 2_ Row 3_ Plant 2.jpg', N'13-04-24 13:32:05')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (15, N'Browning', N'Trim off edges', N'Chamber 3_Shelve 2_ Row 2_ Plant 5.jpg', N'13-04-24 13:32:07')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (16, N'Rusting', N'Remedy by using Neem oil, dusting of Sulphur or rust control fungicides. Climate change: Too much water or too little airflow and sunlight', N'Chamber 4_Shelve 5_ Row 3_ Plant 10.jpg', N'13-04-24 13:32:08')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (17, N'Healthy', N'No remedy needed', N'DSC_5457.JPG', N'13-04-24 13:32:12')
INSERT [dbo].[Diseases] ([Id], [Text], [Remedy], [Location], [DateTime]) VALUES (18, N'Healthy', N'No remedy needed', N'DSC_5458.JPG', N'13-04-24 13:32:18')
SET IDENTITY_INSERT [dbo].[Diseases] OFF
GO
SET IDENTITY_INSERT [dbo].[Owners] ON 

INSERT [dbo].[Owners] ([Id], [Name]) VALUES (1, N'Jack')
SET IDENTITY_INSERT [dbo].[Owners] OFF
GO
INSERT [dbo].[PlantDesired] ([PlantId], [DesiredId]) VALUES (1, 1)
GO
INSERT [dbo].[PlantDiseases] ([PlantId], [DiseasesId]) VALUES (1, 1)
GO
INSERT [dbo].[PlantOwners] ([PlantId], [OwnerId]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[Plants] ON 

INSERT [dbo].[Plants] ([Id], [Name], [PlantDate]) VALUES (1, N'Bok Choy', CAST(N'1903-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Plants] OFF
GO
/****** Object:  Index [IX_PlantDesired_DesiredId]    Script Date: 18/4/2024 7:49:31 pm ******/
CREATE NONCLUSTERED INDEX [IX_PlantDesired_DesiredId] ON [dbo].[PlantDesired]
(
	[DesiredId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlantDiseases_DiseasesId]    Script Date: 18/4/2024 7:49:31 pm ******/
CREATE NONCLUSTERED INDEX [IX_PlantDiseases_DiseasesId] ON [dbo].[PlantDiseases]
(
	[DiseasesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PlantOwners_OwnerId]    Script Date: 18/4/2024 7:49:31 pm ******/
CREATE NONCLUSTERED INDEX [IX_PlantOwners_OwnerId] ON [dbo].[PlantOwners]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PlantDesired]  WITH CHECK ADD  CONSTRAINT [FK_PlantDesired_Desired_DesiredId] FOREIGN KEY([DesiredId])
REFERENCES [dbo].[Desired] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantDesired] CHECK CONSTRAINT [FK_PlantDesired_Desired_DesiredId]
GO
ALTER TABLE [dbo].[PlantDesired]  WITH CHECK ADD  CONSTRAINT [FK_PlantDesired_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantDesired] CHECK CONSTRAINT [FK_PlantDesired_Plants_PlantId]
GO
ALTER TABLE [dbo].[PlantDiseases]  WITH CHECK ADD  CONSTRAINT [FK_PlantDiseases_Diseases_DiseasesId] FOREIGN KEY([DiseasesId])
REFERENCES [dbo].[Diseases] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantDiseases] CHECK CONSTRAINT [FK_PlantDiseases_Diseases_DiseasesId]
GO
ALTER TABLE [dbo].[PlantDiseases]  WITH CHECK ADD  CONSTRAINT [FK_PlantDiseases_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantDiseases] CHECK CONSTRAINT [FK_PlantDiseases_Plants_PlantId]
GO
ALTER TABLE [dbo].[PlantOwners]  WITH CHECK ADD  CONSTRAINT [FK_PlantOwners_Owners_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owners] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantOwners] CHECK CONSTRAINT [FK_PlantOwners_Owners_OwnerId]
GO
ALTER TABLE [dbo].[PlantOwners]  WITH CHECK ADD  CONSTRAINT [FK_PlantOwners_Plants_PlantId] FOREIGN KEY([PlantId])
REFERENCES [dbo].[Plants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlantOwners] CHECK CONSTRAINT [FK_PlantOwners_Plants_PlantId]
GO
USE [master]
GO
ALTER DATABASE [PlantDetection] SET  READ_WRITE 
GO
