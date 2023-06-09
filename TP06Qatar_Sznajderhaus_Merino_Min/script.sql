USE [master]
GO
/****** Object:  Database [Qatar2022]    Script Date: 7/8/2022 18:32:10 ******/
CREATE DATABASE [Qatar2022]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Qatar2022', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Qatar2022.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Qatar2022_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Qatar2022_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Qatar2022] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Qatar2022].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Qatar2022] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Qatar2022] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Qatar2022] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Qatar2022] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Qatar2022] SET ARITHABORT OFF 
GO
ALTER DATABASE [Qatar2022] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Qatar2022] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Qatar2022] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Qatar2022] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Qatar2022] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Qatar2022] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Qatar2022] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Qatar2022] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Qatar2022] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Qatar2022] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Qatar2022] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Qatar2022] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Qatar2022] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Qatar2022] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Qatar2022] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Qatar2022] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Qatar2022] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Qatar2022] SET RECOVERY FULL 
GO
ALTER DATABASE [Qatar2022] SET  MULTI_USER 
GO
ALTER DATABASE [Qatar2022] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Qatar2022] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Qatar2022] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Qatar2022] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Qatar2022] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Qatar2022] SET QUERY_STORE = OFF
GO
USE [Qatar2022]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 7/8/2022 18:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[IdEquipo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Escudo] [varchar](200) NOT NULL,
	[Camiseta] [varchar](200) NOT NULL,
	[Continente] [varchar](50) NOT NULL,
	[CopasGanadas] [int] NOT NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[IdEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 7/8/2022 18:32:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[IdJugador] [int] IDENTITY(1,1) NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Foto] [varchar](200) NOT NULL,
	[EquipoActual] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[IdJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (3, N'Argentina', N'https://logodownload.org/wp-content/uploads/2016/11/afa-seleccion-argentina-futbol-logo-1.png', N'https://d3ugyf2ht6aenh.cloudfront.net/stores/384/008/products/6fs6565-000-11-51355fcbb7c6eb25ba16400442795039-1024-1024.jpg', N'América', 2)
INSERT [dbo].[Equipos] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (4, N'Brasil', N'https://upload.wikimedia.org/wikipedia/commons/1/1b/Logo_Brasil.png', N'https://www.merchandisingplaza.es/411271/2/Camisetas-2020-21-Brasil-Futbol-Camiseta-2020-21-Brasil-Futbol-Home-l.jpg', N'América', 5)
INSERT [dbo].[Equipos] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (8, N'Rusia', N'https://e00-especiales-marca.uecdn.es/eurocopa/images/escudos/rus.png', N'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2019/11/13/15736570767116.jpg', N'Europa', 0)
INSERT [dbo].[Equipos] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (9, N'Francia', N'https://logodownload.org/wp-content/uploads/2022/07/france-national-football-team-logo-1.png', N'https://i.blogs.es/261366/camiseta-francia-2013-1/450_1000.jpg', N'Europa', 2)
INSERT [dbo].[Equipos] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (12, N'Japón', N'http://www.escudosdefutbolyequipaciones.com/images_esc3/AFC/JAP%D3N/escudos_jpg/escudo-selecci%F3n%20de%20jap%F3n.jpg', N'https://www.91futbol.com/images/2021/2021-Japon-zc-0.jpg', N'Asia', 0)
INSERT [dbo].[Equipos] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (13, N'Egipto', N'https://images.vexels.com/media/users/3/152421/isolated/preview/8281001357d2cefc870c6c315e89132a-logotipo-del-equipo-de-ftbol-de-egipto.png', N'https://http2.mlstatic.com/D_NQ_NP_802061-MLA49338424912_032022-W.jpg', N'África', 0)
SET IDENTITY_INSERT [dbo].[Equipos] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (2, 3, N'Messi', CAST(N'1987-06-24T00:00:00.000' AS DateTime), N'https://i.pinimg.com/originals/82/4c/42/824c42789a4b452327e5475a061b6061.jpg', N'Paris Saint Germain')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (4, 3, N'Fideo Di María', CAST(N'1988-02-14T00:00:00.000' AS DateTime), N'https://phantom-marca.unidadeditorial.es/e79cd0f3d752b3ce314d2a792362ca1e/resize/1320/f/jpg/assets/multimedia/imagenes/2022/06/06/16545380213871.jpg', N'Paris Saint Germain')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (6, 4, N'Neymar', CAST(N'1992-02-05T00:00:00.000' AS DateTime), N'https://estaticos-cdn.sport.es/clip/10e9ce43-9d60-4ece-bf2a-c73cf57a6837_media-libre-aspect-ratio_default_0.jpg', N'Paris Saint Germain')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (8, 4, N'Ronaldinho Caralho', CAST(N'1980-03-21T00:00:00.000' AS DateTime), N'https://estaticos-cdn.sport.es/clip/ae1f1131-ae9d-490d-999b-1e702bf4c109_alta-libre-aspect-ratio_default_0.jpg', N'Museo De Las Bellas Artes')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (10, 8, N'Vladimir Putin', CAST(N'1952-10-07T00:00:00.000' AS DateTime), N'https://static1.elcorreo.com/www/multimedia/202203/23/media/cortadas/putin-kcrF-U1601420242802vWF-1248x770@RC.jpg', N'La Otan')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (12, 8, N'Artem Dzyuba', CAST(N'1988-08-22T00:00:00.000' AS DateTime), N'https://img.a.transfermarkt.technology/portrait/big/48067-1602271146.png?lm=1', N'Zenit')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (13, 9, N'Mbappé', CAST(N'1998-12-20T00:00:00.000' AS DateTime), N'https://emtstatic.com/2015/12/donatello1.jpg', N'Paris Saint Germain')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (14, 9, N'Benzemá', CAST(N'1987-12-19T00:00:00.000' AS DateTime), N'https://phantom-marca.unidadeditorial.es/60dc92db90d63ef189764e6a6d436a99/resize/1320/f/jpg/assets/multimedia/imagenes/2022/04/21/16505570751332.jpg', N'Real Madrid')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (25, 12, N'Oliver Atom', CAST(N'1960-05-12T00:00:00.000' AS DateTime), N'https://mui.today/__export/1586796018758/sites/mui/img/2020/04/13/oliver-atom--en-el-nuevo-trailer-de--supercampeones---captaintsubasa_crop1551485749088_png_554688468.jpg_1879290159.jpg', N'Nankatsu')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (33, 12, N'Benji Price', CAST(N'1979-12-07T00:00:00.000' AS DateTime), N'https://i.pinimg.com/originals/3f/7b/71/3f7b714f0dc70afa300419ba1de0315c.jpg', N'Nankatsu')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (34, 13, N'Salah', CAST(N'1992-06-15T00:00:00.000' AS DateTime), N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqB7FDPtVkzSizo8Lcpg6B0WVwjsNV5pkCeA&usqp=CAU', N'Liverpool')
INSERT [dbo].[Jugadores] ([IdJugador], [IdEquipo], [Nombre], [FechaNacimiento], [Foto], [EquipoActual]) VALUES (37, 13, N'Mohamed Sherif', CAST(N'1996-02-04T00:00:00.000' AS DateTime), N'https://cdn.sportmob.com/resource/news/20211129_978797/cover.jpg?cache=1638178597&d=600_338', N'Al-Ahly')
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Equipos] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipos] ([IdEquipo])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Equipos]
GO
USE [master]
GO
ALTER DATABASE [Qatar2022] SET  READ_WRITE 
GO
