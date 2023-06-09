USE [yemekTarifi]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminId] [tinyint] IDENTITY(1,1) NOT NULL,
	[adminAd] [varchar](50) NULL,
	[adminSifre] [varchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gununYemegi]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gununYemegi](
	[gununYemegiId] [smallint] IDENTITY(1,1) NOT NULL,
	[gununYemegiAd] [varchar](50) NULL,
	[gununYemegiMalzeme] [varchar](500) NULL,
	[gununYemegiTarif] [varchar](max) NULL,
	[gununYemegiPuan] [tinyint] NULL,
	[gununYemegiTarih] [smalldatetime] NULL,
	[gununYemegiResim] [varbinary](100) NULL,
 CONSTRAINT [PK_gununYemegi] PRIMARY KEY CLUSTERED 
(
	[gununYemegiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hakkimizda]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hakkimizda](
	[metin] [varchar](3000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategoriler]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategoriler](
	[kategoriID] [smallint] IDENTITY(1,1) NOT NULL,
	[kategoriAd] [varchar](50) NULL,
	[kategoriAdet] [smallint] NULL,
	[kategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_kategoriler] PRIMARY KEY CLUSTERED 
(
	[kategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mesajlar]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mesajlar](
	[mesajID] [smallint] IDENTITY(1,1) NOT NULL,
	[mesajGonderen] [varchar](50) NULL,
	[mesajMail] [varchar](50) NULL,
	[mesajBaslik] [varchar](50) NULL,
	[mesajIcerik] [varchar](50) NULL,
 CONSTRAINT [PK_mesajlarr] PRIMARY KEY CLUSTERED 
(
	[mesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarifler]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifler](
	[tarifId] [smallint] IDENTITY(1,1) NOT NULL,
	[tarifAd] [varchar](50) NULL,
	[tarifMalzeme] [varchar](500) NULL,
	[tarifYapilis] [varchar](max) NULL,
	[tarifResim] [varchar](50) NULL,
	[tarifSahip] [varchar](50) NULL,
	[tarifSahipMail] [varchar](50) NULL,
	[tarifDurum] [bit] NULL,
 CONSTRAINT [PK_tarifler] PRIMARY KEY CLUSTERED 
(
	[tarifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yemekler]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yemekler](
	[yemekId] [smallint] IDENTITY(1,1) NOT NULL,
	[yemekAd] [varchar](50) NULL,
	[yemekMalzeme] [varchar](500) NULL,
	[yemekTarifi] [varchar](max) NULL,
	[yemekResim] [varchar](100) NULL,
	[yemekTarih] [smalldatetime] NULL,
	[kategoriID] [smallint] NULL,
	[yemekPuan] [float] NULL,
	[yemekDurum] [bit] NULL,
 CONSTRAINT [PK_yemekler] PRIMARY KEY CLUSTERED 
(
	[yemekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yorumlar]    Script Date: 7.01.2022 14:51:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yorumlar](
	[yorumId] [smallint] IDENTITY(1,1) NOT NULL,
	[yorumAdSoyad] [varchar](50) NULL,
	[yorumTarih] [smalldatetime] NULL,
	[yorumOnay] [bit] NULL,
	[yorumIcerik] [varchar](500) NULL,
	[yemekId] [smallint] NULL,
	[yorumMail] [varchar](50) NULL,
 CONSTRAINT [PK_yorumlar] PRIMARY KEY CLUSTERED 
(
	[yorumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[gununYemegi] ON 

INSERT [dbo].[gununYemegi] ([gununYemegiId], [gununYemegiAd], [gununYemegiMalzeme], [gununYemegiTarif], [gununYemegiPuan], [gununYemegiTarih], [gununYemegiResim]) VALUES (1, N'Deneme Yemek', N'un su şeker ', N'karıştır dök çalkala fırıa ver afiyetle ye', 7, CAST(N'2021-11-30T21:10:00' AS SmallDateTime), NULL)
SET IDENTITY_INSERT [dbo].[gununYemegi] OFF
GO
INSERT [dbo].[hakkimizda] ([metin]) VALUES (N'Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği

Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği
Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneğiHakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği Hakkimizda yazı örneği')
GO
SET IDENTITY_INSERT [dbo].[kategoriler] ON 

INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (1, N'Çorba', 2, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (2, N'Sebze Yemekleri', 1, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (3, N'Et Yemekleri', 0, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (4, N'Makarna Yemekleri', 1, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (5, N'Tavuk Yemekleri', 0, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (6, N'Pastalar', 0, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (7, N'İçecekler', 1, NULL)
INSERT [dbo].[kategoriler] ([kategoriID], [kategoriAd], [kategoriAdet], [kategoriResim]) VALUES (8, N'Tatlılar', 0, NULL)
SET IDENTITY_INSERT [dbo].[kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[mesajlar] ON 

INSERT [dbo].[mesajlar] ([mesajID], [mesajGonderen], [mesajMail], [mesajBaslik], [mesajIcerik]) VALUES (1, N'Ali Cengiz', N'cegiz@gmail.com', N'Teşekkür', N'denenne')
INSERT [dbo].[mesajlar] ([mesajID], [mesajGonderen], [mesajMail], [mesajBaslik], [mesajIcerik]) VALUES (2, N'Ali Cengiz', N'kfjdkjf@kfjkdjfk', N'lskldk', N'lkslfkdlfkdlfdklf')
SET IDENTITY_INSERT [dbo].[mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[tarifler] ON 

INSERT [dbo].[tarifler] ([tarifId], [tarifAd], [tarifMalzeme], [tarifYapilis], [tarifResim], [tarifSahip], [tarifSahipMail], [tarifDurum]) VALUES (1, N'snkncjsncsjc', N'dkfjdkfjkdfjkd', N'dkfldkflkflfk', N'', N'Mehmet', N'dkkdfkjgk@dkfjf', 0)
INSERT [dbo].[tarifler] ([tarifId], [tarifAd], [tarifMalzeme], [tarifYapilis], [tarifResim], [tarifSahip], [tarifSahipMail], [tarifDurum]) VALUES (2, N'Çorba', N'dkfldkflk lkdldkfkdlkdfl kl', N'fklkfldk lkflkdlfkl', N'', N'Ali', N'alidkkdkfjkf@hhbhjdf', 0)
INSERT [dbo].[tarifler] ([tarifId], [tarifAd], [tarifMalzeme], [tarifYapilis], [tarifResim], [tarifSahip], [tarifSahipMail], [tarifDurum]) VALUES (3, N'Börek', N'yumurta dfk dkf dk fdjkd', N'dfkdjfkdj kfdjkfjk dkfjdkfjdk jkf jk fjkf', NULL, N'buğra', N'dkjfdk@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[tarifler] OFF
GO
SET IDENTITY_INSERT [dbo].[yemekler] ON 

INSERT [dbo].[yemekler] ([yemekId], [yemekAd], [yemekMalzeme], [yemekTarifi], [yemekResim], [yemekTarih], [kategoriID], [yemekPuan], [yemekDurum]) VALUES (1, N'deneme markarna', N'yumurta su makarna', N'suyu kaynat makarnaları at pişince ye', N'', CAST(N'2021-12-06T12:05:00' AS SmallDateTime), 1, 8.2, 0)
INSERT [dbo].[yemekler] ([yemekId], [yemekAd], [yemekMalzeme], [yemekTarifi], [yemekResim], [yemekTarih], [kategoriID], [yemekPuan], [yemekDurum]) VALUES (3, N'çorba', N'mercimek, su, baharat', N'denenemedenenemedenenemedenenemedenenemedeneneme deneneme denenemevdeneneme deneneme', N'', CAST(N'2021-12-08T18:40:00' AS SmallDateTime), 1, 7, 0)
INSERT [dbo].[yemekler] ([yemekId], [yemekAd], [yemekMalzeme], [yemekTarifi], [yemekResim], [yemekTarih], [kategoriID], [yemekPuan], [yemekDurum]) VALUES (4, N'Sebzeli Tavuk', N'Tavuk eti, 1 bardak un, 4 bardak ılık su, baharat ,karabiber', N'denejd jnedj ndj ndj jdnjendjenjd j ejnjednejndejnejdnj endejne', NULL, CAST(N'2021-12-15T13:44:00' AS SmallDateTime), 2, 9, 0)
INSERT [dbo].[yemekler] ([yemekId], [yemekAd], [yemekMalzeme], [yemekTarifi], [yemekResim], [yemekTarih], [kategoriID], [yemekPuan], [yemekDurum]) VALUES (6, N'Limonata', N'limon, su, buz', N'deneme test', N'', CAST(N'2021-12-22T14:07:00' AS SmallDateTime), 7, NULL, 1)
INSERT [dbo].[yemekler] ([yemekId], [yemekAd], [yemekMalzeme], [yemekTarifi], [yemekResim], [yemekTarih], [kategoriID], [yemekPuan], [yemekDurum]) VALUES (8, N'Börek', N'yumurta dfk dkf dk fdjkd', N'dfkdjfkdj kfdjkfjk dkfjdkfjdk jkf jk fjkf', NULL, CAST(N'2021-12-28T11:25:00' AS SmallDateTime), 6, NULL, 0)
SET IDENTITY_INSERT [dbo].[yemekler] OFF
GO
SET IDENTITY_INSERT [dbo].[yorumlar] ON 

INSERT [dbo].[yorumlar] ([yorumId], [yorumAdSoyad], [yorumTarih], [yorumOnay], [yorumIcerik], [yemekId], [yorumMail]) VALUES (6, N'bugra', CAST(N'2021-12-07T21:15:00' AS SmallDateTime), 1, N'çok şahane olmuş', 1, N'bugra@gmail.com')
INSERT [dbo].[yorumlar] ([yorumId], [yorumAdSoyad], [yorumTarih], [yorumOnay], [yorumIcerik], [yemekId], [yorumMail]) VALUES (9, N'Ali Cengiz', CAST(N'2021-12-13T17:02:00' AS SmallDateTime), 0, N'Makarnanın sosu biraz daha yoğun olursa, ağızda bırakan his daha iyi oluyor.', 1, N'cegiz@gmail.com')
INSERT [dbo].[yorumlar] ([yorumId], [yorumAdSoyad], [yorumTarih], [yorumOnay], [yorumIcerik], [yemekId], [yorumMail]) VALUES (10, N'Cengiz', CAST(N'2021-12-13T17:02:00' AS SmallDateTime), 1, N'Makarnanın sosu biraz daha yoğun olursa, ağızda bırakan his daha iyi oluyor.', 1, N'cegiz@gmail.com')
INSERT [dbo].[yorumlar] ([yorumId], [yorumAdSoyad], [yorumTarih], [yorumOnay], [yorumIcerik], [yemekId], [yorumMail]) VALUES (11, N'Cengiz', CAST(N'2021-12-13T17:02:00' AS SmallDateTime), 0, N'Makarnanın sosu biraz daha yoğun olursa, ağızda bırakan his daha iyi oluyor.', 1, N'cegiz@gmail.com')
SET IDENTITY_INSERT [dbo].[yorumlar] OFF
GO
ALTER TABLE [dbo].[gununYemegi] ADD  CONSTRAINT [DF_gununYemegi_gununYemegiTarih]  DEFAULT (getdate()) FOR [gununYemegiTarih]
GO
ALTER TABLE [dbo].[kategoriler] ADD  CONSTRAINT [DF_kategoriler_kategoriAdet]  DEFAULT ((0)) FOR [kategoriAdet]
GO
ALTER TABLE [dbo].[tarifler] ADD  CONSTRAINT [DF_tarifler_tarifDurum]  DEFAULT ((0)) FOR [tarifDurum]
GO
ALTER TABLE [dbo].[yemekler] ADD  CONSTRAINT [DF_yemekler_yemekTarih]  DEFAULT (getdate()) FOR [yemekTarih]
GO
ALTER TABLE [dbo].[yemekler] ADD  CONSTRAINT [DF_yemekler_yemekDurum]  DEFAULT ((0)) FOR [yemekDurum]
GO
ALTER TABLE [dbo].[yorumlar] ADD  CONSTRAINT [DF_yorumlar_yorumTarih]  DEFAULT (getdate()) FOR [yorumTarih]
GO
ALTER TABLE [dbo].[yorumlar] ADD  CONSTRAINT [DF_yorumlar_yorumOnay]  DEFAULT ((0)) FOR [yorumOnay]
GO
ALTER TABLE [dbo].[yemekler]  WITH CHECK ADD  CONSTRAINT [FK_yemekler_kategoriler] FOREIGN KEY([kategoriID])
REFERENCES [dbo].[kategoriler] ([kategoriID])
GO
ALTER TABLE [dbo].[yemekler] CHECK CONSTRAINT [FK_yemekler_kategoriler]
GO
ALTER TABLE [dbo].[yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_yorumlar_yemekler] FOREIGN KEY([yemekId])
REFERENCES [dbo].[yemekler] ([yemekId])
GO
ALTER TABLE [dbo].[yorumlar] CHECK CONSTRAINT [FK_yorumlar_yemekler]
GO
