USE [master]
GO
/****** Object:  Database [TPMúsica]    Script Date: 2/11/2022 17:18:07 ******/
CREATE DATABASE [TPMúsica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TPMúsica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TPMúsica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TPMúsica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TPMúsica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TPMúsica] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TPMúsica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TPMúsica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TPMúsica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TPMúsica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TPMúsica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TPMúsica] SET ARITHABORT OFF 
GO
ALTER DATABASE [TPMúsica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TPMúsica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TPMúsica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TPMúsica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TPMúsica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TPMúsica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TPMúsica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TPMúsica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TPMúsica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TPMúsica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TPMúsica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TPMúsica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TPMúsica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TPMúsica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TPMúsica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TPMúsica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TPMúsica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TPMúsica] SET RECOVERY FULL 
GO
ALTER DATABASE [TPMúsica] SET  MULTI_USER 
GO
ALTER DATABASE [TPMúsica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TPMúsica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TPMúsica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TPMúsica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TPMúsica] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TPMúsica', N'ON'
GO
ALTER DATABASE [TPMúsica] SET QUERY_STORE = OFF
GO
USE [TPMúsica]
GO
/****** Object:  User [alumno]    Script Date: 2/11/2022 17:18:07 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 2/11/2022 17:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[IDAlbum] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fechaLanzamiento] [date] NOT NULL,
	[FKArtista] [int] NOT NULL,
	[foto] [varchar](200) NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[IDAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artista]    Script Date: 2/11/2022 17:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artista](
	[IDArtista] [int] IDENTITY(1,1) NOT NULL,
	[nombreCompleto] [varchar](50) NOT NULL,
	[nombreArtistico] [varchar](50) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[foto] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Artista] PRIMARY KEY CLUSTERED 
(
	[IDArtista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cancion]    Script Date: 2/11/2022 17:18:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancion](
	[IDCancion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[FKAlbum] [int] NOT NULL,
	[visualizaciones] [bigint] NOT NULL,
	[link] [varchar](200) NOT NULL,
	[genero] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cancion] PRIMARY KEY CLUSTERED 
(
	[IDCancion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (1, N'Whenever You Need Somebody', CAST(N'1987-11-16' AS Date), 15, N'https://i.discogs.com/DLlsh2_rQHqqC3R4QMMwqSM3gRem5_zgk2jE4bNsN3E/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQyMzA5/OS0xMzgyMjUwNDQ2/LTYwMzkuanBlZw.jpeg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (2, N'Hold Me In You Arms', CAST(N'1988-11-26' AS Date), 15, N'https://e.snmc.io/i/600/s/023b744b22cf0ea4f0f372f9d23fb8e5/5743316/rick-astley-hold-me-in-your-arms-Cover-Art.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (3, N'Thriller', CAST(N'1982-11-30' AS Date), 16, N'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/b5/58/d3/b558d32f-24fd-c889-d544-bc4c96f6113e/dj.oinzmlgt.jpg/1200x1200bb.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (4, N'Bad', CAST(N'1987-08-31' AS Date), 16, N'http://www.emilianosalinas.net/wp-content/uploads/2017/07/30_mj_bad.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (5, N'Everyday Is Christmas', CAST(N'2016-01-29' AS Date), 17, N'https://harmongocia.com/wp-content/uploads/2020/12/sia_everyday_is_christmas_cd_000.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (7, N'1000 Forms Of Fear', CAST(N'2014-07-04' AS Date), 17, N'https://m.media-amazon.com/images/I/719ntvdbxgL._SL1064_.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (8, N'After Hours', CAST(N'2020-03-20' AS Date), 18, N'https://i.pinimg.com/originals/dc/f6/23/dcf623c428ac4a66f65b0f92a9fb6e50.png')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (9, N'Beauty Behind The Madness', CAST(N'2015-08-28' AS Date), 18, N'https://tbtjamz.com/wp-content/uploads/2022/03/fb192e8ec65a973b8318f1f7c1b16c38.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (10, N'Future Nostalgia', CAST(N'2020-03-27' AS Date), 19, N'https://i.pinimg.com/736x/84/b5/fc/84b5fc527217e5ac9396cf22355a9d55.jpg')
INSERT [dbo].[Album] ([IDAlbum], [nombre], [fechaLanzamiento], [FKArtista], [foto]) VALUES (11, N'Deezer Sessions', CAST(N'2019-04-11' AS Date), 19, N'https://cdns-images.dzcdn.net/images/cover/aa1d69846672398d397889514cc095a9/500x500.jpg')
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Artista] ON 

INSERT [dbo].[Artista] ([IDArtista], [nombreCompleto], [nombreArtistico], [fechaNacimiento], [pais], [foto]) VALUES (15, N'Richard Paul Astley', N'Rick Astley', CAST(N'1966-02-06' AS Date), N'Inglaterra', N'https://cdns-images.dzcdn.net/images/artist/be045fbb2f4b2f9f81b1968c09c17ff2/500x500.jpg')
INSERT [dbo].[Artista] ([IDArtista], [nombreCompleto], [nombreArtistico], [fechaNacimiento], [pais], [foto]) VALUES (16, N'Michael Joseph Jackson', N'Michael Jackson', CAST(N'1958-08-29' AS Date), N'Estados Unidos', N'https://dovemibutto.files.wordpress.com/2013/06/bad-michael-jacksons-short-films-11016298-1124-1054.jpg')
INSERT [dbo].[Artista] ([IDArtista], [nombreCompleto], [nombreArtistico], [fechaNacimiento], [pais], [foto]) VALUES (17, N'Sia Kate Isobelle Furler', N'Sia', CAST(N'1975-12-18' AS Date), N'Australia', N'https://static.abc.es/media/estilo/2020/12/15/sia-kJXF--1248x698@abc.jpg')
INSERT [dbo].[Artista] ([IDArtista], [nombreCompleto], [nombreArtistico], [fechaNacimiento], [pais], [foto]) VALUES (18, N'Abel Makkonen Tesfaye', N'The weeknd', CAST(N'1990-02-16' AS Date), N'Canada', N'https://lumiere-a.akamaihd.net/v1/images/the_weeknd_ok_a1aa13f1.jpeg')
INSERT [dbo].[Artista] ([IDArtista], [nombreCompleto], [nombreArtistico], [fechaNacimiento], [pais], [foto]) VALUES (19, N'Dua Lipa', N'Dua Lipa', CAST(N'1995-08-22' AS Date), N'Kosovo', N'https://esp.unbilgi.com/wp-content/uploads/2021/04/Dua-Lipa-Facts.jpg')
SET IDENTITY_INSERT [dbo].[Artista] OFF
GO
SET IDENTITY_INSERT [dbo].[Cancion] ON 

INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (1, N'Never Gonna Give You Up', 1, 1294414954, N'https://www.youtube.com/embed/dQw4w9WgXcQ', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (2, N'Whenever You Need Somebody', 1, 17926162, N'https://www.youtube.com/embed/BeyEGebJ1l4', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (3, N'Together Forever', 1, 150574720, N'https://www.youtube.com/embed/yPYZpwSpKmA', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (4, N'It Would Take a Strong Strong Man', 1, 758792, N'https://www.youtube.com/embed/VBssFzSx6sI', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (5, N'The Love Has Gone', 1, 363224, N'https://www.youtube.com/embed/V8AvyCpCVJI', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (6, N'Don''t Say Goodbye', 1, 1159898, N'https://www.youtube.com/embed/X6uzlX51kbo', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (7, N'Slipping Away', 1, 278683, N'https://www.youtube.com/embed/czDxG-7SFsc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (8, N'No More Looking For Love', 1, 229258, N'https://www.youtube.com/embed/tbmKG-vJank', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (9, N'You Move Me', 1, 256566, N'https://www.youtube.com/embed/RXNFzrZTQy4', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (10, N'When I Fall in Love', 1, 445769, N'https://www.youtube.com/embed/rF1NHU_0NQE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (11, N'She Wants to Dance with Me', 2, 18772942, N'https://www.youtube.com/embed/yBwD4iYcWC4', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (12, N'Take Me to Your Heart', 2, 30815662, N'https://www.youtube.com/embed/eYuUAGXN0KM', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (13, N'I Don''t Want to Lose Her', 2, 79558, N'https://www.youtube.com/embed/dAPNM3-LyKY', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (14, N'Giving Up on Love', 2, 2898847, N'https://www.youtube.com/embed/_b5V1wchZJU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (15, N'Ain''t Too Proud To Beg', 2, 36692, N'https://www.youtube.com/embed/INbP13PWSQk', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (16, N'Till Then (Time Stands Still)', 2, 14404, N'https://www.youtube.com/embed/wdGF9_v16zk', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (17, N'Dial My Number', 2, 5770, N'https://www.youtube.com/embed/58j3PRELeYE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (18, N'I''ll Never Let You Down', 2, 47909, N'https://www.youtube.com/embed/3nV9udxkkxw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (19, N'I Don''t Want to Be Your Lover', 2, 3048, N'https://www.youtube.com/embed/KARX53vCoxU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (20, N'Hold Me in Your Arms', 2, 13505169, N'https://www.youtube.com/embed/DqZS89jFCFg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (21, N'Wanna Be Startin'' Somethin''', 3, 14083643, N'https://www.youtube.com/embed/1XMvPTFzgVU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (22, N'Baby Be Mine', 3, 5803353, N'https://www.youtube.com/embed/O3tnOVideSo', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (23, N'The Girl Is Mine', 3, 5741111, N'https://www.youtube.com/embed/8GB9BULxZ8c', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (24, N'Thriller', 3, 850081844, N'https://www.youtube.com/embed/sOnqjkJTMaA', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (26, N'Beat It', 3, 866260792, N'https://www.youtube.com/embed/oRdxUFDoQe0', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (27, N'Billie Jean', 3, 1241299074, N'https://www.youtube.com/embed/Zi_XLOBDo_Y', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (28, N'Human Nature', 3, 14166115, N'https://www.youtube.com/embed/ElN_4vUvTPs', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (29, N'P.Y.T. (Pretty Young Thing)', 3, 40668898, N'https://www.youtube.com/embed/1ZZQuj6htF4', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (30, N'The Lady in My Life', 3, 6764263, N'https://www.youtube.com/embed/cJLH5yXoqi8', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (31, N'Bad', 4, 419127818, N'https://www.youtube.com/embed/dsUXAEzaC3Q', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (32, N'The Way You Make Me Feel', 4, 426910766, N'https://www.youtube.com/embed/HzZ_urpj4As', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (33, N'Speed Demon
', 4, 91184795, N'https://www.youtube.com/embed/l039y9FaIjc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (34, N'Liberian Girl', 4, 47216424, N'https://www.youtube.com/embed/f3V-7DEAgdc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (35, N'Just Good Friends', 4, 2053182, N'https://www.youtube.com/embed/kt27N-_3Hjs', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (36, N'Another Part of Me
', 4, 31550937, N'https://www.youtube.com/embed/8vwHQNQ88cM', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (37, N'Man in the Mirror', 4, 138421110, N'https://www.youtube.com/embed/PivWY9wn5ps', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (38, N'I Just Can''t Stop Loving You', 4, 5582386, N'https://www.youtube.com/embed/GAmVuYEeSSg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (39, N'Dirty Diana', 4, 167418141, N'https://www.youtube.com/embed/yUi_S6YWjZw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (40, N'Smooth Criminal', 4, 756786919, N'https://www.youtube.com/embed/h_D3VFfhvs4', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (41, N'Leave Me Alone', 4, 76056351, N'https://www.youtube.com/embed/crbFmpezO4A', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (42, N'Santa''s Coming for Us', 5, 48659461, N'https://www.youtube.com/embed/V3EYjVPRClU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (43, N'Candy Cane Lane', 5, 47047, N'https://www.youtube.com/embed/kkWz5mLuLR8', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (44, N'Snowman', 5, 190552403, N'https://www.youtube.com/embed/gset79KMmt0', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (45, N'Snowflake', 5, 7064157, N'https://www.youtube.com/embed/G0a9VDxsHkw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (46, N'Ho Ho Ho', 5, 18987795, N'https://www.youtube.com/embed/MGanJGGVSrw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (47, N'Puppies Are Forever', 5, 5709324, N'https://www.youtube.com/embed/dZ0LgZ_yWv4', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (48, N'Sunshine', 5, 532441, N'https://www.youtube.com/embed/Ct3WXTMHMjk', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (49, N'Underneath the Mistletoe', 5, 12048674, N'https://www.youtube.com/embed/zmrsc8TtgsU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (50, N'Everyday Is Christmas', 5, 23004853, N'https://www.youtube.com/embed/JPp-oLkQPQQ', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (51, N'Underneath the Christmas Lights', 5, 5246972, N'https://www.youtube.com/embed/_V7wYTxO6Wk', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (53, N'Chandelier', 7, 2542728014, N'https://www.youtube.com/embed/2vjPBrBU-TM', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (54, N'Burn the Pages', 7, 3177215, N'https://www.youtube.com/embed/VznorLuugTU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (55, N'Eye of the Needle', 7, 48028680, N'https://www.youtube.com/embed/1kg0EdD7tzE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (56, N'Hostage', 7, 994602, N'https://www.youtube.com/embed/nEzASnPOwgc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (57, N'Straight for the Knife', 7, 1034120, N'https://www.youtube.com/embed/pEMIvuSRmvE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (58, N'Fair Game
', 7, 773263, N'https://www.youtube.com/embed/SL4kxeXwUeg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (59, N'Elastic Heart', 7, 1241524190, N'https://www.youtube.com/embed/KWZGAExj-es', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (60, N'Free the Animal', 7, 79307, N'https://www.youtube.com/embed/rdVGrCE9dAc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (61, N'Fire Meet Gasoline', 7, 127696122, N'https://www.youtube.com/embed/fNdeLSKSZ1M', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (62, N'Cellophane', 7, 1387588, N'https://www.youtube.com/embed/MvQrH2T6VHc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (63, N'Dressed In Black', 7, 2953193, N'https://www.youtube.com/embed/S0b2aMcCxeg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (64, N'Alone Again', 8, 21314576, N'https://www.youtube.com/embed/JH398xAYpZA', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (65, N'Too Late', 8, 21637599, N'https://www.youtube.com/embed/nl71vFvVOvw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (66, N'Hardest to Love', 8, 15235662, N'https://www.youtube.com/embed/pM3nIOYF2W8', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (67, N'Scared to Live', 8, 10363989, N'https://www.youtube.com/embed/MzsU_sn2aIE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (68, N'Snowchild', 8, 24049471, N'https://www.youtube.com/embed/G0JKdFjWkLA', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (69, N'Escape From LA', 8, 22188549, N'https://www.youtube.com/embed/vsARlcGW0jE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (70, N'Heartless', 8, 39583396, N'https://www.youtube.com/embed/-uj9b9JCIJM', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (71, N'Faith', 8, 20300282, N'https://www.youtube.com/embed/RcS_8-a-sMg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (72, N'Blinding Lights', 8, 633163770, N'https://www.youtube.com/embed/4NRXx6U8ABQ', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (73, N'In Your Eyes', 8, 102296267, N'https://www.youtube.com/embed/E3QiD99jPAg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (74, N'Save Your Tears', 8, 947171383, N'https://www.youtube.com/embed/XXYlFuWEuKI', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (75, N'Repeat After Me (interlude)', 8, 5832460, N'https://www.youtube.com/embed/CE-Iy24NOTY', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (76, N'After Hours', 8, 96108761, N'https://www.youtube.com/embed/ygTZZpVkmKg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (77, N'Until I Bleed Out', 8, 19653730, N'https://www.youtube.com/embed/i58MNnk6BhY', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (78, N'Real Life', 9, 5000000, N'https://www.youtube.com/embed/EjlLdjzE7dg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (79, N'Tell your friends', 9, 76996156, N'https://www.youtube.com/embed/j1ngEIxopUU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (80, N'The Hills', 9, 1885782146, N'https://www.youtube.com/embed/yzTuBuRdAyA', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (81, N'Can''t Feel My Face', 9, 1287880910, N'https://www.youtube.com/embed/KEI4qSrkPAs', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (82, N'Earned It', 9, 723049993, N'https://www.youtube.com/embed/waU75jdUnYw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (83, N'As You Are', 9, 8759365, N'https://www.youtube.com/embed/8CWy_-afIpY', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (84, N'Prisoner', 9, 3469777, N'https://www.youtube.com/embed/x0bRHmTQEsE', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (85, N'Losers', 9, 2248539, N'https://www.youtube.com/embed/xNKOrBA9Sp0', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (86, N'Often', 9, 487347726, N'https://www.youtube.com/embed/JPIhUaONiLU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (87, N'Acquainted', 9, 9475157, N'https://www.youtube.com/embed/-OMptcPcw0Y', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (88, N'Shameless', 9, 8289288, N'https://www.youtube.com/embed/polycpBREYA', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (89, N'In the Night', 9, 87973365, N'https://www.youtube.com/embed/2iFa5We6zqw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (90, N'Dark Times', 9, 2143681, N'https://www.youtube.com/embed/md6K7AJNEGg', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (91, N'Angel', 9, 11353864, N'https://www.youtube.com/embed/QAAOynFujNw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (92, N'Future Nostalgia', 10, 22374355, N'https://www.youtube.com/embed/8EJ-vZyBzOQ', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (93, N'Don''t Start Now', 10, 619615836, N'https://www.youtube.com/embed/oygrmJFKYZY', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (94, N'Cool', 10, 20258142, N'https://www.youtube.com/embed/uY8tAKDVxK8', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (95, N'Physical', 10, 386058158, N'https://www.youtube.com/embed/9HDEHj2yzew', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (96, N'Levitating', 10, 621503194, N'https://www.youtube.com/embed/TUVcZfQe-Kw', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (97, N'Pretty Please', 10, 23459303, N'https://www.youtube.com/embed/ylzhMn6MlVc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (98, N'Hallucinate', 10, 72144965, N'https://www.youtube.com/embed/qcZ7e9EOQTY', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (99, N'Love Again', 10, 212908501, N'https://www.youtube.com/embed/BC19kwABFwc', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (100, N'Break My Heart', 10, 519707426, N'https://www.youtube.com/embed/Nj2U6rhnucI', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (101, N'Good In Bed', 10, 20000269, N'https://www.youtube.com/embed/bJKr_XQIALk', N'Pop')
GO
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (102, N'Boys Will Be Boys', 10, 8257998, N'https://www.youtube.com/embed/k0QWX2M7W7M', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (103, N'Thinking ''Bout You', 11, 39452139, N'https://www.youtube.com/embed/PLDIhqMWH00', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (104, N'New Rules', 11, 2745964952, N'https://www.youtube.com/embed/k2qgadSvNyU', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (105, N'IDGAF', 11, 788038070, N'https://www.youtube.com/embed/Mgfe5tIwOj0', N'Pop')
INSERT [dbo].[Cancion] ([IDCancion], [nombre], [FKAlbum], [visualizaciones], [link], [genero]) VALUES (106, N'My My My!', 11, 82699, N'https://www.youtube.com/embed/QfW_0b6fFsk', N'Pop')
SET IDENTITY_INSERT [dbo].[Cancion] OFF
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artista] FOREIGN KEY([FKArtista])
REFERENCES [dbo].[Artista] ([IDArtista])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artista]
GO
ALTER TABLE [dbo].[Cancion]  WITH CHECK ADD  CONSTRAINT [FK_Cancion_Album] FOREIGN KEY([FKAlbum])
REFERENCES [dbo].[Album] ([IDAlbum])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cancion] CHECK CONSTRAINT [FK_Cancion_Album]
GO
USE [master]
GO
ALTER DATABASE [TPMúsica] SET  READ_WRITE 
GO
