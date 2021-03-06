USE [Genius2]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[aid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[artist] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[cid] [nvarchar](50) NOT NULL,
	[single] [bit] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chart]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chart](
	[chartid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Chart] PRIMARY KEY CLUSTERED 
(
	[chartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartDetail]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartDetail](
	[chartid] [nvarchar](50) NOT NULL,
	[sid] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[cmtid] [nvarchar](50) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[cmtid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentDetail]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentDetail](
	[uid] [nvarchar](50) NOT NULL,
	[cmtid] [nvarchar](50) NOT NULL,
	[sid] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewRelease]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewRelease](
	[aid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NewRelease] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[pid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Playlist] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaylistDetail]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistDetail](
	[uid] [nvarchar](50) NOT NULL,
	[sid] [nvarchar](50) NOT NULL,
	[pid] [nvarchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularAlbum]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularAlbum](
	[aid] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PopularAlbum] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Song](
	[sid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[artirst] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[audio] [nvarchar](max) NOT NULL,
	[lyric] [nvarchar](max) NOT NULL,
	[cid] [nvarchar](50) NOT NULL,
	[aid] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/19/2020 3:55:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[uid] [nvarchar](50) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[avatar] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'1', N'Changes', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/116/115655.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'10', N'~how i’m feeling~', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'11', N' Inner Monologue Part 1 (EP)', N'Julia Michaels', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'12', N'Suncity (EP)', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'4', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'13', N'Memories (Single)', N'Maroon 5', N'https://data.chiasenhac.com/data/cover/110/109668.jpg', N'1', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'14', N'Señorita (Single)', N'Camila Cabello', N'https://data.chiasenhac.com/data/cover/107/106207.jpg', N'1', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'15', N'24K Magic', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'4', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'16', N'111 EP', N'Lil Wuyn', N'https://data.chiasenhac.com/data/cover/128/127212.jpg', N'3', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'17', N'Trên Tình Bạn Dưới Tình Yêu (Single)', N'Min', N'https://data.chiasenhac.com/data/cover/131/130327.jpg', N'1', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'18', N'tâm trạng tan hơi chậm một chút', N'Bích Phương', N'https://upload.wikimedia.org/wikipedia/vi/d/d9/Tam_trang_tan_hoi_cham_mot_chut.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'19', N'Gác Lại Âu Lo (Single)', N'Da LAB', N'https://data.chiasenhac.com/data/cover/125/124649.jpg', N'1', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'2', N'1', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'2', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'20', N'Nàng Thơ (Single)', N'Hoàng Dũng', N'https://data.chiasenhac.com/data/cover/126/125060.jpg', N'1', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'21', N'Rap Việt Tập 15', N'Rap Việt', N'https://data.chiasenhac.com/data/cover/131/130475.jpg', N'3', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'3', N'Astroworld', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'3', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'4', N'Hollywood''s Bleeding', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'3', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'5', N'Bigcityboi (Single)', N'Binz', N'https://data.chiasenhac.com/data/cover/124/123404.jpg', N'3', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'6', N'Mascara (Single)', N'Chillies', N'https://data.chiasenhac.com/data/cover/114/113796.jpg', N'1', 1)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'7', N'dreAMEE', N'Amee', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'8', N'Starboy', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'4', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'9', N'Fine Line', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'bdejzosohazgyod', N'Merry Christmas', N'Mariah Carey', N'https://data.chiasenhac.com/data/cover/3/2692.jpg', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'bjndcnmpbvedzbr', N'Don''t Let Me Down', N'The Chainsmokers; Daya', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2001%3A25%3A44%20GMT%2B0700%20(Indochina%20Time)-53532.jpg?alt=media&token=eab11c28-8d5c-4900-a870-994468045cd5', N'5', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'gvuwovvtjtqhkwh', N'Holy', N'Justin Bieber; Chance The Rapper', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A38%3A22%20GMT%2B0700%20(Indochina%20Time)-holy.jpg?alt=media&token=b8897f5b-6358-45d5-afd3-44e41b986ce1', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'ijllvhcuxrcvdbd', N'Doo-Wops & Hooligans', N'Bruno Mars', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A03%3A13%20GMT%2B0700%20(Indochina%20Time)-2005.jpg?alt=media&token=7e2a9349-b5b0-4c05-b1d2-41b227e5f4bc', N'1', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'ithhfjfhcnjkrqd', N'Don''t Let Me Down', N'The Chainsmokers; Daya', N'', N'5', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'mgccdjturtnesdg', N'Don''t Let Me Down', N'The Chainsmokers; Daya', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A31%3A43%20GMT%2B0700%20(Indochina%20Time)-53532.jpg?alt=media&token=58c719eb-1808-47d4-9cea-82be6c22d42f', N'5', 0)
INSERT [dbo].[Album] ([aid], [name], [artist], [image], [cid], [single]) VALUES (N'qdcessbrzpodrfr', N'Merry Christmas', N'Mariah Carey', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A58%3A20%20GMT%2B0700%20(Indochina%20Time)-2692.jpg?alt=media&token=be06e373-f599-4f47-b752-06f5ba17293f', N'1', 0)
GO
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'1', N'Pop', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'2', N'Rock', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'3', N'Hip Hop', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'4', N'R&B', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'5', N'EDM', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'6', N'Country', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'7', N'Punk', NULL)
INSERT [dbo].[Category] ([cid], [name], [image]) VALUES (N'8', N'Funk', NULL)
GO
INSERT [dbo].[Chart] ([chartid], [name]) VALUES (N'1', N'VN')
INSERT [dbo].[Chart] ([chartid], [name]) VALUES (N'2', N'US')
INSERT [dbo].[Chart] ([chartid], [name]) VALUES (N'3', N'K-POP')
GO
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'15')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'16')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'17')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'18')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'19')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'20')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'21')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'22')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'23')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'1', N'24')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'25')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'26')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'27')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'28')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'29')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'30')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'31')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'32')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'33')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'2', N'34')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'35')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'36')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'37')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'38')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'39')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'40')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'41')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'42')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'43')
INSERT [dbo].[ChartDetail] ([chartid], [sid]) VALUES (N'3', N'44')
GO
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'1', N'Bài này hay vãi', CAST(N'2020-11-06' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'2', N'hihihi', CAST(N'2020-09-11' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'3', N'hihihi', CAST(N'2020-10-07' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'4', N'hihihi', CAST(N'2020-10-07' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'easnvnwtmpkfemo', N'good song', CAST(N'2020-11-12' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'efxruuzutduwcxl', N'good song', CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'enbbexdjdbdzhhs', N'good', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'fbzllsjmccdxsmc', N'It''s lit!!!!!', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'icprhhqogescxjp', N'It''s lit <3', CAST(N'2020-11-12' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'iurbnhqgumthohp', N'good', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'joouarmjmqzedaw', N'Náº¯m tay nhau VÃ  va vÃ o giai Äiá»u nÃ y
Äá» báº£n thÃ¢n nÃ y 1 ngÃ y cháº³ng cÃ²n tháº¥y giá»t buá»n cháº­m lÄn á» 2 mi', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'rvvebaypephwmcl', N'good', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'vqfcxplkixcjkep', N'good', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'xpcmcemgijqehvs', N'hay quÌa', CAST(N'2020-11-09' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'yzexhgkcwapqcca', N'gooddddd', CAST(N'2020-11-12' AS Date))
INSERT [dbo].[Comment] ([cmtid], [content], [date]) VALUES (N'zfntkiotzwxqdxg', N'hehe', CAST(N'2020-11-12' AS Date))
GO
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'1', N'1')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'thinhmaxdz', N'2', N'1')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'thinhmaxdz', N'4', N'1')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'vqfcxplkixcjkep', N'2')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'rvvebaypephwmcl', N'120')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'joouarmjmqzedaw', N'176')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'fbzllsjmccdxsmc', N'166')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'enbbexdjdbdzhhs', N'168')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'thinhmaxdz', N'xpcmcemgijqehvs', N'11')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'iurbnhqgumthohp', N'79')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'efxruuzutduwcxl', N'15')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'icprhhqogescxjp', N'165')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'zfntkiotzwxqdxg', N'1')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'yzexhgkcwapqcca', N'1')
INSERT [dbo].[CommentDetail] ([uid], [cmtid], [sid]) VALUES (N'1', N'easnvnwtmpkfemo', N'2')
GO
INSERT [dbo].[NewRelease] ([aid]) VALUES (N'16')
INSERT [dbo].[NewRelease] ([aid]) VALUES (N'17')
INSERT [dbo].[NewRelease] ([aid]) VALUES (N'18')
INSERT [dbo].[NewRelease] ([aid]) VALUES (N'19')
INSERT [dbo].[NewRelease] ([aid]) VALUES (N'20')
GO
INSERT [dbo].[Playlist] ([pid], [name]) VALUES (N'1', N'Recently played')
INSERT [dbo].[Playlist] ([pid], [name]) VALUES (N'2', N'Made for you')
GO
SET IDENTITY_INSERT [dbo].[PlaylistDetail] ON 

INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 1)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'2', N'1', 2)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'3', N'1', 3)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'4', N'1', 4)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'thinhmaxdz', N'1', N'1', 5)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'thinhmaxdz', N'1', N'1', 6)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'thinhmaxdz', N'1', N'1', 7)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'thinhmaxdz', N'1', N'1', 8)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'120', N'1', 9)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'150', N'1', 10)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'55', N'1', 11)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'24', N'2', 12)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'35', N'2', 13)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'107', N'2', 15)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'160', N'2', 16)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'17', N'2', 17)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'107', N'1', 18)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'90', N'1', 19)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'91', N'1', 20)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'173', N'1', 21)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'109', N'1', 22)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'155', N'1', 23)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'108', N'1', 24)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'108', N'1', 25)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'79', N'1', 26)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'165', N'1', 27)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'165', N'1', 28)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'166', N'1', 29)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'120', N'1', 30)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'121', N'1', 31)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'173', N'1', 32)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'147', N'1', 33)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'149', N'1', 34)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'107', N'1', 35)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'35', N'1', 36)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'168', N'1', 37)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'168', N'1', 38)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'173', N'1', 39)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'173', N'1', 40)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 41)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 42)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 43)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 44)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 45)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 46)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 47)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 48)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 49)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 50)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 51)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 52)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 53)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 54)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 55)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 56)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 57)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 58)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 59)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 60)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 61)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'2', N'1', 62)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'2', N'1', 63)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 64)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 65)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 66)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 67)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'173', N'1', 68)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 69)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'18', N'1', 70)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 71)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 72)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 73)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'2', N'1', 74)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'2', N'1', 75)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'67', N'1', 76)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'1', N'1', 77)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'169', N'1', 78)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'17', N'1', 79)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'15', N'1', 80)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'16', N'1', 81)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'17', N'1', 82)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'17', N'1', 83)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'165', N'1', 84)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'120', N'1', 85)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'79', N'1', 86)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'bjukvzaatrlvnxp', N'1', 87)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'bjukvzaatrlvnxp', N'1', 88)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'atyldmlktmpgnpa', N'1', 89)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'qgspikynaghwubk', N'1', 90)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'brwbejyyekfcmim', N'1', 91)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'10', N'1', 92)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'brwbejyyekfcmim', N'1', 93)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'kdowklugrygbuzb', N'1', 94)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'pblaetpsruyzbad', N'1', 95)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'hsmtzjjwuyoyvrm', N'1', 96)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'hsmtzjjwuyoyvrm', N'1', 97)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'zhhpsjulzzzvpwq', N'1', 98)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'zhhpsjulzzzvpwq', N'1', 99)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'hsmtzjjwuyoyvrm', N'1', 100)
GO
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'afiizmwlhktiwcr', N'1', 101)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'108', N'1', 102)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'168', N'1', 103)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'82', N'1', 104)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'82', N'1', 105)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'110', N'1', 106)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'111', N'1', 107)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'112', N'1', 108)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'119', N'1', 109)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'45', N'1', 110)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'xbfyvhgauedavwf', N'1', 111)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'xbfyvhgauedavwf', N'1', 112)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'zhhpsjulzzzvpwq', N'1', 113)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'hsmtzjjwuyoyvrm', N'1', 114)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'xbfyvhgauedavwf', N'1', 115)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'zhhpsjulzzzvpwq', N'1', 116)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'xbfyvhgauedavwf', N'1', 117)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'zhhpsjulzzzvpwq', N'1', 118)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'107', N'1', 119)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'148', N'1', 120)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'152', N'1', 121)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'173', N'1', 122)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'15', N'1', 123)
INSERT [dbo].[PlaylistDetail] ([uid], [sid], [pid], [id]) VALUES (N'1', N'16', N'1', 124)
SET IDENTITY_INSERT [dbo].[PlaylistDetail] OFF
GO
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'10')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'12')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'14')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'15')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'17')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'19')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'3')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'5')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'6')
INSERT [dbo].[PopularAlbum] ([aid]) VALUES (N'7')
GO
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'1', N'All Around Me', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/116/115655.jpg', N'https://audio.jukehost.co.uk/X1peAO2JX6E7cIqdJrrvfFAOfbaOVP5q', N'Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Verse 1: Justin Bieber]
Shout-out to your mom and dad for makin'' you
Standin'' ovation, they did a great job raisin'' you
When I create, you''re my muse
That kind of smile that makes the news
Can''t nobody throw shade on your name in these streets
Triple threat, you''re a boss, you a bae, you a beast
You make it easy to choose
You got a mean touch, I can''t refuse (No, I can''t refuse it)

[Chorus: Justin Bieber]
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Verse 2: Justin Bieber]
Already passed, you don''t need no approval
Good everywhere, don''t worry ''bout no refusal
Second to none, you got the upper hand now
Don''t need a sponsor, nope, you''re the brand now
You''re my rock, my Colorado
Got that ring, just like Toronto
Lovin'' you now, a little more tomorrow
That''s how I feel, act like you know that you are

[Chorus: Justin Bieber & Quavo]
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Verse 3: Quavo]
No cap, no pretendin''
You don''t need mentions (No cap)
Got ''em same goals, they don''t wanna be independent (''Pendent)
Tell them to mind your bidness (Woo), we in our feelings
It''s fifty-fifty percent in (Fifty)
Attention, we need commitment (Oh)
We gotta both admitted (Both)
It''s funny we both listen (Both)
It''s a blessing (Blessing) ''cause we both get it (Both)
You the best thing (Woo) and I don''t need a witness (Best thing)
I''ma find me a ring and pray it''s perfect fitted (Perfect, perfect)

[Chorus: Justin Bieber]
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Outro: Justin Bieber]
That''s all I plan to do', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'10', N'Second Emotion', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/uCjpHyr2f8AsK3TNB5jZq7NKSV904JSF', N'Try to bite my tongue, but I can''t take it
I got whiplash from me turnin'' my head
Have somewhere else to go, no, I can''t make it
I''d rather take my chance with you instead
Do you second that emotion? (Do you?)
Do you second that emotion? (Do you?)
You really got me open (Do you?)
Do you second that emotion? (Do you?)

[Verse 1: Justin Bieber]
High heels on, heard you comin'' ''fore I seent ya
Movies all around, but you look like the feature
Had another meeting, now my plan is to meet you
Got my hands out, all I wanna do is reach ya
All I wanna do is greet ya
Infatuated, sorry if I stare
Where you posted up? I wanna be there
Way you curved up, it just ain''t fair
No, it ain''t

[Chorus: Justin Bieber]
Try to bite my tongue, but I can''t take it
I got whiplash from me turnin'' my head
Have somewhere else to go, no, I can''t make it
I''d rather take my chance with you instead
Do you second that emotion? (Do you?)
Do you second that emotion? (Do you?)
You really got me open (Do you?)
Do you second that emotion? (Do you?)

[Post-Chorus: Justin Bieber & Travis Scott]
Got me feeling giddy (Ah), like, "La, la, la, la" (Yeah)
Struck a match, you got me litty, like, "La, la, la, la" (It''s lit)
You got the keys to my city (Ooh), like, "La, la, la, la" (Straight up)
Do you second that emotion, baby? (Ah, yeah)

[Verse 2: Travis Scott]
Mmm, yeah
Out to big boys (It''s lit)
Spring her off the hitch (Yeah), everything legit
Movin'' like the blitz (Blitz), crib like the Ritz (Like the Ritz)
So you know there''s room (Skrrt)
So, baby, please
(Hold up, nah, nah, nah, that was the first time she did that)
Don''t like to talk to bitch (Yeah), just like to play the wish
I know the problem is they ''bout it, ''bout it, kid (I''m tryna pop another one in)
Oh, you sent the jet out for me?
You tryna ball harder than me?

[Verse 3: Justin Bieber]
Did I come ''cross your radar?
Cross your mind now and later?
Do you feel like you know me?
It''s just a part of nature
Let''s ask each other questions
Can we do each other favors?
Would you mind the labor? Baby

[Chorus: Justin Bieber]
Try to bite my tongue, but I can''t take it
I got whiplash from me turnin'' my head
Have somewhere else to go, no, I can''t make it
I''d rather take my chance with you instead
Do you second that emotion? (Do you?)
Do you second that emotion? (Do you?)
You really got me open (Do you?)
Do you second that emotion? (Do you?)

[Post-Chorus: Justin Bieber]
Got me feeling giddy (Ah), like, "La, la, la, la" (Yeah)
Struck a match, you got me litty, like, "La, la, la, la" (It''s lit)
You got the keys to my city (Ooh), like, "La, la, la, la" (Straight up)
Do you second that emotion, baby? (Ah, yeah)', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'100', N'Love To Lay', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744443-52ab64e3/128/Love%20To%20Lay%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
It has begun again, my friend
In this room, we are nothing but strangers in a bed
You made me fall again, my friend
How can I forget when you said love was just pretend?

[Pre-Chorus:]
Well I told her I''ve been thinkin'' ''bout her lately
But she told me that to love her is so crazy.

[Chorus:]
''Cause she loves to lay
I learned the hard way
She loves to lay, I''m all to blame
I learned the hard way
She loves to lay
Know I learned the hard way
She loves to lay, it''s all a game
I learned the hard way.

[Verse 2:]
It has begun again, my friend
In your heart, we are nothing but strangers in the end.

[Pre-Chorus:]
Then I told her I''ve been thinkin'' ''bout her lately
But she told me that to love her is so crazy.

[Chorus:]
''Cause she loves to lay
I learned the hard way
She loves to lay, I''m all to blame
I learned the hard way
She loves to lay
Know I learned the hard way
She loves to lay, it''s all a game
I learned the hard way.

[Bridge:]
I feel there''s someone else
Worth your time, from the start
He''s just one call away
From your mind, and your heart
It has begun, begun
Again, again, my friend, hey!

[Chorus:]
''Cause she loves to lay
I learned the hard way
She loves to lay, I''m all to blame
I learned the hard way
She loves to lay
Know I learned the hard way
She loves to lay, it''s all a game
I learned the hard way.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'101', N'A Lonely Night', N' The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744444-82d08305/128/A%20Lonely%20Night%20-%20The%20Weeknd.mp3', N'
[Intro:]
Gangster, yeah, yeah
Hey, na-na-na-na-na-na, hey.

[Verse 1:]
Why would you wanna bring somethin'' between us
There''s nothin'' between us, oh, ay
Why would you wanna use a life to keep us
To keep us together, uh, oh-oh.

[Hook:]
Better when we''re both apart, better when we''re both apart
We''re no good for each other, no good for each other
Better when we''re both apart, better when we''re both apart
We''re no good for each other.

[Bridge:]
A lonely night, baby girl I loved you on a lonely night, oh
It was the only time and if I led you on then I apologize, oh.

[Verse 2:]
How can I make you rethink your decision?
Unruly decision, oh
Hey, what''s gonna make you rethink your position?
I know your intentions, oh-oh.

[Hook:]
Better when we''re both apart, better when we''re both apart
We''re no good for each other, no good for each other
Better when we''re both apart, better when we''re both apart
We''re no good for each other.

[Bridge:]
A lonely night, baby girl I loved you on a lonely night, oh
It was the only time and if I led you on then I apologize, oh.

[Interlude:]
Baw-baw-baw-baw-baw-baw-baw.

[Hook:]
Better when we''re both apart, better when we''re both apart
We''re no good for each other, no good for each other
Better when we''re both apart, better when we''re both apart
We''re no good for each other.

[Interlude 2:]
Hey, da-da-da-da
Da-da-da-da, oh-oh.

[Bridge:]
A lonely night, baby girl I loved you on a lonely night, hey
It was the only time and if I led you on then I apologize, oh
A lonely night, baby girl I loved you on a lonely night, oh
It was the only time and if I led you on then I apologize, oh.

[Outro:]
Baby girl I loved you
Know I loved you
Know I loved you
Baby, na-na-na-na-na-na-na-na-na-na, ay.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'102', N'Attention', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744445-679de44d/128/Attention%20-%20The%20Weeknd.mp3', N'
[Verse 1: The Weeknd]
Baby, you are so strong
Baby, you are calm, you are so calm, yeah
Tell me where it went wrong
Tell me how to love, it''s been so long
When a call''s not enough, and you just need to touch
Thinking twice on my one
But you just need to trust.

[Hook: The Weeknd]
You''re only looking for attention
You only notice it cause I''m never around
You''re only looking for attention, oh, oh
You''re only looking for attention
The only problem is you''ll never get enough
You''re only looking for attention, oh, oh.

[Verse 2: The Weeknd]
What do you expect now?
Only thing left is the sex now
Cause baby, too vexed now
Only see me on the TV or the bed now
When a touch not enough
You were more than a fuck
Thinking twice on a one
But you just need to trust.

[Hook: The Weeknd]
You''re only looking for attention
You only notice it cause I''m never around
You''re only looking for attention, oh, oh
You''re only looking for attention
The only problem is you''ll never get enough
You''re only looking for attention, oh, oh.

[Interlude: Cashmere Cat & The Weeknd]
Attention
(Love all the attention, baby)
Attention
(Love all the attention, baby)

[Hook: The Weeknd]
You''re only looking for attention
You only notice it cause I''m never around
You''re only looking for attention, oh, oh
You''re only looking for attention
The only problem is you''ll never get enough
You''re only looking for attention, oh, oh.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'103', N'Ordinary Life', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744446-c0825699/128/Ordinary%20Life%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
Heaven in her mouth, got a hell of a tongue
I can feel her teeth when I drive on a bump
Fingers letting go of the wheel when I cum
Whe-wheel when I cum, whe-wheel when I cum
David Carradine, I''ma die when I cum
She just givin'' head, she don''t know what I''ve done
Like I''m James Dean, I''ma die when I''m young
Die when I''m young, die when I''m young.

[Pre-Chorus:]
Heaven knows that I''ve been told
Paid for the life that I chose
If I could, I''d trade it all
Trade it for a halo
And she said that she''ll pray for me
I said, "It''s too late for me
''Cause I think it''s safe to say.

[Chorus:]
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life
No ordinary life
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life.

[Verse 2:]
Valhalla is where all the righteous are led
Moorhall is where all the damned will be kept
Devil on my lap and a cross on my neck
Cross on my neck, cross on my neck
Over 45, I''ma drift on a bend
Do a buck 20, I''ma fly off the edge
Everybody said it would hurt in the end
Hurt in the end, but I feel nothin''.

[Pre-Chorus:]
She said that she''ll pray for me
I said, "It''s too late for me
''Cause I think it''s safe to say.

[Chorus:]
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life
No ordinary life
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life.

[Bridge:]
Angels all singin'' in monestaries, yeah
My soul is buried in low Ferraris
I''m sorry, I''m sorry
Halos are given to ordinary lives
No, but this ain''t ordinary life.

[Chorus:]
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life
No ordinary life
This ain''t ordinary life
This ain''t ordinary life
This ain''t ordinary life
No ordinary life
Woah-oh-oh, woah-oh-oh.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'104', N'Nothing Without You', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744447-c756c4d1/128/Nothing%20Without%20You%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
I realized, I belong to you
I feel the darkness, I run away from you.

[Pre-Chorus 1:]
Don''t stop your lovin'', walk out on me
Don''t stop for nothin'', you''re what I bleed
I learned to love you, the way you need
''Cause I know what''s pain, this is not the same.

[Chorus:]
I''d be nothing'', nothing'', nothing'', nothing'' without you
(Nothing, nothing, nothing, nothing)
I''d be nothing'', nothing'', nothing'', nothing'' without you
(Nothing, nothing, nothing, nothing)

[Post-Chorus:]
I was too busy tryna find you with someone else
The one I couldn''t stand, to be with was myself
''Cause I''d be nothing'', nothing'', nothing'', nothing'' without you
(Nothing, nothing, nothing, nothing)

[Verse 2:]
Pick up your phone, I got a question, oh
If I die tonight, would you regret it?

[Pre-Chorus 2:]
Don''t stop your lovin'', it''s all I have
''Cause I can''t function, no I won''t last
I swear I''ll love you just like the past
''Cause I know what''s pain, this is not the same.

[Chorus:]
I''d be nothing'', nothing'', nothing'', nothing'' without you
(Nothing, nothing, nothing, nothing)
Oh, I''d be nothing'', nothing'', nothing'', nothing'' without you
(Nothing, nothing, nothing, nothing)

[Post-Chorus:]
I was too busy tryna find you with someone else
The one I couldn''t stand, to be with was myself
''Cause I''d be nothing'', nothing'', nothing'', nothing'' without you
(Nothing, nothing, nothing, nothing)

[Outro:]
When I feel the love, girl I hesitate
It''s what I''m guilty of, oh yeah
(Oh yeah, oh yeah)
I can''t get enough, I''m insane
Without your touch
Touch, touch, touch
(I''d be nothing'', nothing'', nothing'', nothing'')
(Nothing'', nothing'', nothing'', nothing'')
(Nothing'', nothing'', nothing'', nothing'' without you)
(Without you, without you, without you)
', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'105', N'All I Know', N'The Weeknd; Future', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744448-72660c06/128/All%20I%20Know%20-%20The%20Weeknd_%20Future.mp3', N'
[Intro: The Weeknd]
Oh, oh, oh, oh
Ooh-ooh-ooh-ooh-oh
Oh, oh, oh, oh
Ooh-ooh-ooh-ooh-oh.

[Verse 1: The Weeknd]
The reasons I can''t have you, are so easy to fix
I didn''t really plan to, but I''ma do it for this-this
The reasons I can''t have you, isn''t so complicated
Baby if you let me I won''t hesitate-ate.

[Hook: The Weeknd]
All I know, all I know is this
All I know, all I know is this
All I know, all I know, all I know, all I know is this
All I know, all I know, all I know, all I know is this
(Yeah, yeah, yeah, yeah, yeah...)

[Verse 2: The Weeknd]
I know there''s been stigma ''round me
I know you heard things about me
You sleep one eye closed
Too scared to get heartbroke
Heard too many lies told
Don''t make this shit unfold
I could tell why you would doubt me
I hit one time, you can''t live without me
Girl I''m just peakin'', I''m just tryna be on top of you
On top of you.

[Hook: The Weeknd + Future]
All I know
All I know, all I know, all I know
All I know is this
All I know, all I know, all I know
All I know
All I know, all I know, all I know
All I know is this
All I know, all I know, all I know, all I know...
All I know, all I know, all I know, all I know is this
All I know, all I know, all I know, all I know is this
Is this, is this.

[Interlude: The Weeknd]
*harmonizing*

[Verse 3: Future]
She, she, sleep with one eye open (yeah)
I''m terrified to get my heart broke (wha up)
Blood talkin'' like a Piru (ay)
Fuck with me, nigga, gon'' die slow (gang)
Lamborghini make you Crip walk (skrt)
I''m splashin'' off with my side hoe (ay)
Full of these medicals, bitches, got several (yeah)
She eat the dick up, like it''s an edible
Then I get back to my capital (pour)
I got the Glock on the passenger (pour up)
I got these tropical fantasies (woo)
They gon'' remember my legacy (pour up)
Hang out the roof of the Ghost (yeah)
The cash in my pocket spill right on the floor (yeah-yeah)
The cash in my pocket spill out in the floor (hold up)
When the cash overflow, let the cash overflow
I done fucked a bitch that boogie (yeah)
Have you ever, ever fucked a bitch that boogie? Woah-oh (yeah yeah)
I done fucked a bitch that boogie
I done, I done, I done fucked a bitch that boogie, woah oh
I done fucked a bitch conceited
I done fucked a few, few bitches conceited
We just wanna say we did it
We just wanna say we did it (XO)
I know like you know
I keep that trigger beside me (keep that trigger)
I know like you know
You just another body
(You just another body)
I know like you know
I keep that trigger beside me
I know like you know
You just another body
Have you fucked a bitch this pretty? (yeah)
Hit her on the first night and went and bought titties (yeah, yeah)
Have you fucked a bitch this pretty? (yeah)
Hit her on the first night and went and bought titties
Niggas always sneak dissin'' (yeah)
We gon'' continue, fuckin'' they bitches (oh yeah)
I ain''t just fucking that bitch (yeah)
I been all the way up, makin'' love to that bitch.

[Hook: Future]
All I know
All I know, all I know, all I know
All I know is this
All I know, all I know, all I know
All I know
All I know, all I know, all I know
All I know is this
All I know, all I know, All I know, all I know...
All I know, all I know, All I know, all I know is this
All I know, all I know, All I know, all I know
All I know, all I know, All I know, all I know is this
Is this, is this.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'106', N'Die For You', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744449-009af430/128/Die%20For%20You%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
I''m findin'' ways to articulate
The feeling I''m goin'' through
I just can''t say I don''t love you
''Cause I love you, yeah
It''s hard for me to communicate the thoughts that I hold
But tonight I''m gon'' let you know
Let me tell the truth
Baby, let me tell the truth, yeah.

[Pre-Chorus:]
You know what I''m thinkin''
See it in your eyes
You hate that you want me
Hate it when you cry
You''re scared to be lonely
''Specially in the night
I''m scared that I''ll miss you
Happens every time
I don''t want this feelin''
I can''t afford love
I try to find reason to pull us apart
It ain''t workin'' ''cause you''re perfect
And I know that you''re worth it
I can''t walk away, oh!

[Chorus:]
Even though we''re going through it
And it makes you feel alone
Just know that I would die for you
Baby I would die for you, yeah
The distance and the time between us
It''ll never change my mind, ''cause baby
I would die for you
Baby I would die for you, yeah.

[Verse 2:]
I''m finding ways to manipulate the feelin'' you''re goin'' through
But baby girl, I''m not blamin'' you
Just don''t blame me too, yeah
''Cause I can''t take this pain forever
And you won''t find no one that''s better
''Cause I''m right for you, babe
I think I''m right for you, babe.

[Pre-Chorus:]
You know what I''m thinkin''
See it in your eyes
You hate that you want me
Hate it when you cry
You''re scared to be lonely
''Specially in the night
I''m scared that I''ll miss you
Happens every time
I don''t want this feelin''
I can''t afford love
I try to find reason to pull us apart
It ain''t workin'' ''cause you''re perfect
And I know that you''re worth it
I can''t walk away, oh!

[Chorus:]
Even though we''re going through it
And it makes you feel alone
Just know that I would die for you
Baby I would die for you, yeah
The distance and the time between us
It''ll never change my mind, ''cause baby
I would die for you
Baby I would die for you, yeah.

[Bridge:]
I would die for you
I would lie for you
Keep it real with you
I would kill for you, my baby
I''m just sayin'', yeah
I would die for you
I would lie for you
Keep it real with you
I would kill for you, my baby
Na-na-na, na-na-na, na-na-na.

[Chorus:]
Even though we''re going through it
And it makes you feel alone
Just know that I would die for you
Baby I would die for you, yeah
The distance and the time between us
It''ll never change my mind, ''cause baby
I would die for you
Baby I would die for you, yeah babe
(Die for you)', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'107', N'I Feel It Coming', N'The Weeknd; Daft Punk', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744450-b9fdc956/128/I%20Feel%20It%20Coming%20-%20The%20Weeknd_%20Daft%20Punk.mp3', N'
1. Tell me what you really like
Baby I can take my time
We don''t ever have to fight
Just take it step-by-step
I can see it in your eyes
Cause they never tell me lies
I can feel that body shake
And the heat between your legs.

You''ve been scared of love and what it did to you
You don''t have to run, I know what you''ve been through
Just a simple touch and it can set you free
We don''t have to rush when you''re alone with me.

[Chorus:]
I feel it coming, I feel it coming, babe
I feel it coming, I feel it coming, babe
I feel it coming, I feel it coming, babe
I feel it coming, I feel it coming, babe
I feel it coming, I feel it coming, babe.

2. You are not the single type
So baby, this the perfect time
I''m just trying to get you high
And faded off this touch
You don''t need a lonely night
So baby, I can make it right
You just got to let me try
To give you what you want.

You''ve been scared of love
And what it did to you
You don''t have to run
I know what you''ve been through
Just a simple touch
And it can set you free
We don''t have to rush
When you''re alone with me.

[Outro:]
I feel it coming, babe
I feel it coming, babe
I feel it coming, babe
I feel it coming, babe.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'108', N'Golden', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/YbUz6gokAgCTPHSB6ldZzOH9GqDGSejB', N'
[Intro:]
Hey!

[Verse 1:]
Golden, golden, golden as I open my eyes
Holding focus, hoping, take me back to the light
I know you were way too bright for me
I''m hopeless, broken, so you wait for me in the sky
Brown my skin just right
You''re so golden.

[Chorus:]
You''re so golden
I''m out of my head, and I know that you''re scared
Because hearts get broken.

[Verse 2:]
I don''t want to be alone
I don''t want to be alone when it ends
Don''t wanna let you know
I don''t want to be alone
But I can feel it take a hold (I can feel it take a hold)
I can feel you take control (I can feel you take control)
Of who I am, and all I''ve ever known
Lovin'' you''s the antidote
Golden.

[Chorus:]
You''re so golden
I don''t want to be alone
You''re so golden
You''re so golden
I''m out of my head, and I know that you''re scared
Because hearts get broken.

[Bridge:]
I know that you''re scared because I''m so open.

[Chorus:]
You''re so golden
I don''t want to be alone
You''re so golden
You''re so golden
You''re so golden
I''m out of my head, and I know that you''re scared
Because hearts get broken.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'109', N'Watermelon Sugar', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/58eUwawFG9lX80ahiG3tLWsKdXfj2mHp', N'
Tastes like strawberries
On a summer evening
And it sounds just like a song
I want more berries
And that summer feeling
It’s so wonderful and warm
Breathe me in
Breathe me out
I don’t know if I could ever go without
I’m just thinking out loud
I don’t know if I could ever go without.

Watermelon sugar high
Watermelon sugar high
Watermelon sugar high
Watermelon sugar high
Watermelon sugar.

Strawberries
On a summer evening
Baby, you’re the end of June
I want your belly
And that summer feeling
Getting washed away in you
Breathe me in
Breathe me out
I don’t know if I could ever go without.

Watermelon sugar high.

I just wanna taste it
I just wanna taste it
Watermelon sugar high.

Tastes like strawberries
On a summer evening
And it sounds just like a song
I want more berries
And that summer feeling
I don’t know if I could ever go without.

Watermelon sugar high.

I just wanna taste it
I just wanna taste it
Watermelon sugar high
I just wanna taste it
I just wanna taste it
Watermelon sugar high.

Watermelon Sugar.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'11', N'Get Me', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'Oh, you don''t compare, don''t fit in with ''em, do you get me?
Judgin'' by the way you open up, you get me
Ooh, out of this world, hands on, baby, now you send me
Lookin'' at the way we''re blendin'' in, you get me.

[Chorus: Justin Bieber]
Ha-ha-ha, you get me
Ha-ha-ha, you get me.

[Verse 1: Justin Bieber]
See, you lookin'' beyond the surface
Can tell by the questions you''re asking
You got me low-key nervous
It feels like we''re on the same wave, yeah
Never intended to relate, I mean, what are the chances?
Never thought I''d connect with you, not in these circumstances.

[Pre-Chorus: Justin Bieber]
Oh, you don''t compare, don''t fit in with ''em, do you get me?
Judgin'' by the way you open up, you get me
Ooh, out of this world, hands on, baby, now you send me
Lookin'' at the way we''re blendin'' in, you get me.

[Chorus: Justin Bieber]
Ha-ha-ha, you gettin'' me
Ha-ha-ha, you gettin'' me.

[Verse 2: Kehlani]
Ooh, there''s so much chemistry
Like a chemist how you finishin'' my sentences
In the center, no, we can''t deny the synergy
How ''bout reapin'' all the benefits? Yeah
Never intended to relate, I mean, what are the chances?
Never thought I''d connect with you, not in these circumstances, no.

[Pre-Chorus: Both, Kehlani & Justin Bieber]
Oh, you don''t compare, don''t fit in with ''em, do you get me?
Judgin'' by the way you open up, you get me (Yeah, you really get me, ooh, ooh)
Ooh, out of this world, hands on, baby, now you send me (Ooh, that''s why you send me)
Lookin'' at the way we''re blendin'' in, you get me (Ooh, you really get me)

[Chorus: Both & Justin Bieber]
Ha-ha-ha, you gettin'' me (Oo-oo-oo-oo-oo-ooh)
Ha-ha-ha, you gettin'' me (Ye-e-e-e-e-e-ah)

[Outro: Kehlani & Justin Bieber]
Oh, you get me, yeah
You get me, yeah
You get me, yeah
You get me, yeah''', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'110', N'Adore You', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/KaiiQwwZ2Vwmu2v5NszEns1ZZQOYoXVn', N'
[Verse 1: Harry Styles]
Walk in your rainbow paradise (Paradise)
Strawberry lipstick state of mind (State of mind)
I get so lost inside your eyes
Would you believe it?

[Pre-Chorus: Harry Styles]
You don''t have to say you love me
You don''t have to say nothing
You don''t have to say you''re mine.

[Chorus: Harry Styles]
Honey (Ah-ah-ah)
I''d walk through fire for you
Just let me adore you
Oh, honey (Ah-ah-ah)
I''d walk through fire for you
Just let me adore you
Like it''s the only thing I''ll ever do
Like it''s the only thing I''ll ever do.

[Verse 2: Harry Styles]
Your wonder under summer sky (Summer sky)
Brown skin and lemon over ice
Would you believe it?

[Pre-Chorus: Harry Styles]
You don''t have to say you love me
I just wanna tell you somethin''
Lately, you''ve been on my mind.

[Chorus: Harry Styles]
Honey (Ah-ah-ah)
I''d walk through fire for you
Just let me adore you
Oh, honey (Ah-ah-ah)
I''d walk through fire for you
Just let me adore you
Like it''s the only thing I''ll ever do
Like it''s the only thing I''ll ever do.

[Bridge: Amy Allen]
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do
It''s the only thing I''ll ever do.

[Chorus: Harry Styles & Amy Allen]
I''d walk through fire for you
Just let me adore you
Oh, honey (Ah-ah-ah)
I''d walk through fire for you
Just let me adore you
Like it''s the only thing I''ll ever do (Ah-ah-ah)
(It''s the only thing I''ll ever do, it''s the only thing I''ll ever do)
I''d walk through fire for you (It''s the only thing I''ll ever do)
Just let me adore you
Oh, honey (Ah-ah-ah), oh, honey
(It''s the only thing I''ll ever do, it''s the only thing I''ll ever do)
I''d walk through fire for you (It''s the only thing I''ll ever do)
Just let me adore you (It''s the only thing I''ll ever do)

[Outro: Harry Styles]
Ooh, ooh
Oh, honey
Ooh, ooh
Just let me adore you
Like it''s the only thing I''ll ever do.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'111', N'Lights Up', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/0lRDgXd2kPY9mGhtfhEviIH9MdvhQg4T', N'
[Verse 1:]
What do you mean?
I''m sorry by the way
Never coming back down
Can''t you see?
I could, but wouldn''t stay
Wouldn''t put it like that
What do you mean?
I''m sorry by the way
I''m never coming around
It''d be so sweet if things just stayed the same
La-da-da-da-da.

[Chorus:]
All the lights couldn''t put out the dark
Runnin'' through my heart
Lights up and they know who you are
Know who you are
Do you know who you are?

[Bridge:]
Shine, step into the light
Shine, so bright sometimes
Shine, I''m not ever going back
Shine, step into the light
Shine, so bright sometimes
Shine, I''m not ever going back
Shine, step into the light
Shine, so bright sometimes
Shine, I''m not ever (Oh)

[Verse 2:]
What do you mean?
I''m sorry by the way
Never going back now
It''d be so sweet if things just stayed the same
La-da-da-da-da
La-da-da-da-da
La-da-da-da-da (Oh)
La-da-da-da-da (Oh)
La-da-da-da-da (Oh)

[Chorus:]
All the lights couldn''t put out the dark
Runnin'' through my heart
Lights up and they know who you are
Know who you are
Do you know who you are?', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'112', N'Cherry', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/5cYCdVmnt4knvrTtA0rJQWpBgLoZKuBJ', N'
[Chorus:]
Don''t you call him "baby"
When I''m talking lately
Don''t you call him what you used to call me.

[Verse 1:]
I, I confess I can tell that you are at your best
I''m selfish so I''m hating it
I noticed that there''s a piece of you in how I dress
Take it as a compliment.

[Chorus:]
Don''t you call him "baby"
When I''m talking lately
Don''t you call him what you used to call me.

[Verse 2:]
I, I just miss
I just miss your accent and your friends
Did you know I still talk to them?

[Bridge:]
Does he take you walking round his parents'' gallery?

[Chorus:]
Don''t you call him "baby"
When I''m talking lately
Don''t you call him what you used to call me
Don''t you call him "baby"
When I''m talking lately
Don''t you call him what you used to call me.

[Outro: Camille Rowe]
Coucou! Tu dors? Oh, j''suis désolé...
Bah non... Nan c''est pas marrant.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'113', N'Falling', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/QshqjnYOndbMKdPTQV3n6emMSlLMAV7p', N'
[Verse 1:]
I''m in my bed
And you''re not here
And there''s no one to blame but the drink in my wandering hands
Forget what I said
It''s not what I meant
And I can''t take it back, I can''t unpack the baggage you left.

[Chorus:]
What am I now? What am I now?
What if I''m someone I don''t want around?
I''m falling again, I''m falling again, I''m fallin''
What if I''m down? What if I''m out?
What if I''m someone you won''t talk about?
I''m falling again, I''m falling again, I''m fallin''.

[Verse 2:]
You said you care, and you missed me too
And I''m well aware I write too many songs about you
And the coffee''s out at the Beachwood Cafe
And it kills me ''cause I know we''ve run out of things we can say.

[Chorus:]
What am I now? What am I now?
What if I''m someone I don''t want around?
I''m falling again, I''m falling again, I''m fallin''
What if I''m down? What if I''m out?
What if I''m someone you won''t talk about?
I''m falling again, I''m falling again, I''m fallin''.

[Bridge:]
And I get the feeling that you''ll never need me again.

[Chorus:]
What am I now? What am I now?
What if I''m someone I don''t want around?
I''m falling again, I''m falling again, I''m fallin''
What if I''m down? What if I''m out?
What if I''m someone you won''t talk about?
I''m falling again, I''m falling again, I''m fallin''.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'114', N'To Be So Lonely', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/YJS5s5itBp88owKe2Ka97pSLnTQRTsCc', N'
[Verse 1:]
Don''t blame me for falling
I was just a little boy
Don’t blame the drunk calling
Wasn''t ready for it all.

[Pre-Chorus:]
You can''t blame me, darling
Not even a little bit, I was away
I’m just an arrogant son of a bitch
Who can''t admit when he''s sorry.

[Chorus:]
Don''t call me "baby" again, you''ve got your reasons
Know that you''re trying to be friends, know you mean it
Don''t call me "baby" again, it''s hard for me to go home
Be so lonely.

[Verse 2:]
I just hope you see me in a little better light
Do you think it’s easy being of the jealous kind?
’Cause I miss the shape of your lips
Your wit, it''s just a trick
This is it, so I’m sorry.

[Chorus:]
Don''t call me "baby" again, you''ve got your reasons
Know that you''re trying to be friends, know you mean it
Don''t call me "baby" again, it''s hard for me to go home
Be so lonely.

[Post-Chorus:]
To be so lonely, to be so
To be so lonely
To be so lonely, to be so
To be so lonely.

[Bridge:]
I’m just an arrogant son of a bitch
Who can''t admit when he''s sorry.

[Chorus:]
Don''t call me "baby" again, you''ve got your reasons
Know that you''re trying to be friends, know you mean it
Don''t call me "baby" again, it''s hard for me to go home
Be so lonely.

[Post-Chorus:]
To be so lonely, to be so
To be so lonely
To be so lonely, to be so
To be so lonely.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'115', N'She', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/nSIeMXIUY8sDa8mWecww0eZ5nfU272SG', N'
[Verse 1:]
Nine in the morning, a man drops his kids off at school
And he''s thinking of you, like all of us do
Sends his assistant for coffee in the afternoon
Around 1:32, like he knows what to do.

[Chorus:]
She (She), she lives in daydreams with me (She)
She''s the first one that I see, and I don''t know why
I don''t know who she is (She, she)

[Verse 2:]
He takes a boat out, imagines just sailing away (Away, away)
Not telling his mates (Not telling his mates)
Wouldn''t know what to say (Wouldn''t know what to say, what to say)

[Chorus:]
She (She), she lives in daydreams with me (She)
She''s the first one that I see, and I don''t know why
I don''t know who she is (She, she)
She (She), she lives in daydreams with me (She)
She''s the first one that I see, and I don''t know why
I don''t know who she is (She, she)

[Bridge:]
Here''s for the memories, a woman who''s destined as her (Destined as her)
And she sleeps in his bed (His bed)
While he plays pretend (Pretend)
So pretend (Pretend)

[Chorus:]
She (She), she lives in daydreams with me (She)
She''s the first one that I see, and I don''t know why
I don''t know who she is (She, she)
She (She), she lives in daydreams with me (She)
She''s the first one that I see, and I don''t know why
I don''t know who she is (She, she)', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'116', N'Sunflower, Vol. 6', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/b54vpXPZZ7cwvS5zQXjc4uXWwRObS6qa', N'
[Chorus:]
Sunflower
Sunflower, my eyes want you more than a melody
Let me inside
Wish I could get to know you
Sunflowers sometimes keep it sweet in your memory
I was just tongue-tied.

[Pre-Chorus:]
I don''t want to make you feel bad
But I''ve been trying hard not to talk to you
Sunflower (Sunflower, sunflower)

[Refrain:]
I couldn’t want you any more
Kiss in the kitchen like it''s a dance floor
I couldn’t want you any more
Tonight (Tonight, tonight, tonight)

[Verse 2:]
Wondering, head straight
Tired eyes are the death of me, mouth full of toothpaste
Before I got to know you
I''ve got your face hung up high in the gallery
I love to say
Sunflower, sunflower
Your flowers just die, plant new seeds in the melody
Let me inside, I wanna get to know you

[Pre-Chorus:]
I don''t want to make you feel bad
But I''ve been trying hard not to talk to you
Sunflower (Sunflower, sunflower)

[Refrain:]
I couldn’t want you any more
Kiss in the kitchen like it''s a dance floor
I couldn’t want you any more
Tonight (Tonight, tonight, tonight)
I couldn’t want you any more
Kiss in the kitchen like it''s a dance floor
I couldn’t want you any more
Tonight (Tonight, tonight, tonight)

[Chorus:]
Sunflower, my eyes want you more than a melody
Let me inside
Wish I could get to know you
Sunflowers sometimes keep it sweet in your memory
I was just tongue-tied.

[Outro:]
Sunflower, sunflower
Sunflower, sunflower
Sunflower, sunflower
Ayy, woo, ow
Woo-woo, woo-woo
Woo-woo, woo-woo
Woo-woo, woo-woo
Yeah!
Ooh, woo, oh, doo, doo, doo, doo, doo, doo.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'117', N'Canyon Moon', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/ltbWc5DM8vsaLb83tbB7qz52OG3smFtm', N'
[Verse 1:]
Gotta see it to believe it, sky never looked so blue
So hard to leave it, that''s what I always do
So I keep thinking back to a time under the canyon moon.

[Verse 2:]
The world''s happy waitin'', door''s yellow, broken blue
I heard Jenny saying, "Go get the kids from school"
And I keep thinking back to the time under the canyon moon.


[Refrain:]
I''ve been gone too long from you.

[Verse 3:]
Staring at the ceiling, two weeks and I''ll be home
Carry the feeling, through Paris all through Rome
And I''m still thinking back to the time under the canyon moon.

[Chorus:]
I''m going, oh, I''m going
I''m going, oh, I''m going
I''m going, oh, I''m going home
I''m going, oh, I''m going
I''m going, oh, I''m going
I''m going, oh, I''m going home.

[Verse 4:]
Quick pause in conversation, she plays songs I''ve never heard
An old lover''s hippie music, pretends not to know the words
And I keep thinking back to the time under the canyon moon.

[Refrain:]
I''ve been gone too long from you.

[Chorus:]
I''m going, oh, I''m going
I''m going, oh, I''m going
I''m going, oh, I''m going home
I''m going, oh, I''m going
I''m going, oh, I''m going
I''m going, oh, I''m going home
I''m going, oh, I''m going
I''m going, oh, I''m going
I''m going, oh, I''m going home.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'118', N'Treat People With Kindness', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/o3Be6QKClCb6qO1XBPORBBGJ479C1Bkl', N'
[Intro:]
Maybe, we can
Find a place to feel good
And we can treat people with kindness
Find a place to feel good.

[Verse 1:]
I''ve got a good feeling
I''m just takin'' it all in
Floating up and dreamin''
Droppin'' into the deep end.

[Pre-Chorus:]
And if we''re here long enough
They''ll sing a song for us (Ah-ah-ah-ah)
And we''ll belong.

[Chorus:]
Maybe, we can
Find a place to feel good
And we can treat people with kindness
Find a place to feel good.

[Verse 2:]
Giving second chances
I don''t need all the answers
Feeling good in my skin
I just keep on dancin''.

[Pre-Chorus:]
And if we''re here long enough
They''ll sing a song for us
And we''ll belong.

[Chorus:]
Maybe, we can
Find a place to feel good
And we can treat people with kindness
Find a place to feel good.

[Bridge:]
And it''s just another day (And it''s just another day)
If our friends all pass away (Oh-oh, oh-oh)
It''s okay (It''s okay, it''s okay)
It''s okay (It''s okay!) Yeah
Hey!
Here we go now.

[Chorus:]
Maybe, we can
Find a place to feel good
And we can treat people with kindness
Find a place to feel good.

[Outro:]
All we ever want is automatic all the time
All we ever want is auto all of the time
All we ever want is automatic all the time
All we ever want is auto all of the time
All together now
Maybe, we can (One more time)
Find a place to feel good (Oh yeah)
And we can treat people with kindness (Just a little more kindness)
Find a place to feel good.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'119', N'Fine Line', N'Harry Styles', N'https://data.chiasenhac.com/data/cover/114/113247.jpg', N'https://audio.jukehost.co.uk/tY17nQwrfl2b1AHllikzXOzyUBXqrqp6', N'
[Verse 1:]
Put a price on emotion
I''m looking for something to buy
You''ve got my devotion
And man, I can hate you sometimes
I don''t want to fight you
And I don''t want to sleep in the dark
We''ll get the drinks and I''ll get to thinking I''m fine.

[Chorus:]
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line.

[Verse 2:]
Test of my patience
There''s things that we''ll never know
You sunshine, you temptress
My hand''s at risk, I fold
Crisp trepidation
I''ll try to shake this soon
Spreading you open, is the only way of knowing you.

[Chorus:]
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be a fine line
We''ll be alright
We''ll be alright
We''ll be a fine line
We''ll be a fine line
We''ll be alright (Alright, alright, alright)

[Outro:]
(We''ll be alright)
(We''ll be alright)
We''ll be alright
We''ll be alright
Oh.', N'1', N'9')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'12', N'E.T.A', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/8yRZA3rRMeupdOIbZ96vTScNUTdH3blz', N'Feels like time''s moving in slow motion
Just trying to occupy my mind
So that I don''t go looney over you (Ooh-ooh)
Just trying to amplify the sound
To drown out all of this need for you (You, ooh)
Biting my nails, got me nervous, so anxious
See it''s one o''clock now
Noon felt like three hours ago

[Chorus]
I just wanna know your E.T.A., E.T.A
Out the window, got me looking out the street
What''s your E.T.A.?
Distance only made us grow fonder
Of one another
Be honest, what''s your E.T.A.?
What''s your E.T.A.?

[Verse 2]
Say you almost right here now
Just say you pulling up to my gate
Don''t say the signal faded driving through the canyon
Just hurry up for my sake
I was born ready for you
Skin sweeter than cinnamon
Eyes deeper than the ocean
Love me hard like, "Where you been?"
Love me like you don''t want it to end

[Chorus]
I just wanna know your E.T.A., E.T.A
Out the window, got me looking out the street
What''s your E.T.A.?
Distance only made us grow fonder
Of one another
Be honest, what''s your E.T.A.?
What''s your E.T.A.?

[Outro]
Before you gotta go
Oh-oh-oh-oh
Before you gotta go
Drop a pin for me now
So I can learn your location
Thank you, yes, you''re less than five minutes away from me
In your arms, rubbing on your face
Only place I wanna be
In the bed, where we lay our head
Only place I wanna be
', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'120', N'Drugs And The Internet', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/7JGHPf81LthZhpTGSfhFmamDzwOZakS1', N'
[Verse 1:]
Another life, another story
She walked out, said I was boring
About 3 AM, tha''s when I called my friends
We hit the bar, sent myself flying
Shit, I said I’m never trying
''Til the bitter end, but every now and then
I wonder what it feels like to be more than I am.

[Chorus:]
I traded all my friends for drugs and the internet
Ah shit, am I a winner yet?
Look quick, is he a winner yet?
Mom''s back home with a drink and a cigarette
I traded all my friends for drugs and the internet
Ah shit, am I a winner yet?
Look quick, is he a winner yet?
Mom''s back home with a drink and a cigarette.

[Post Chorus:]
Ooh, ooh
Still hasn’t hit him yet.

[Verse 2:]
And I don’t wanna base my actions
On reactions or the things they say
And I don’t wanna hit delete
On all the parts of me that they might hate
So now I’m laying in my bed
And I can’t get out my head
It’s all because, all because.

[Chorus:]
I traded all my friends for drugs and the internet
Ah shit, am I a winner yet?
Look quick, is he a winner yet?
Mom''s back home with a drink and a cigarette
I traded all my friends for drugs and the internet
Ah shit, am I a winner yet?
Look quick, is he a winner yet?
Mom''s back home with a drink and a cigarette.

[Post Chorus:]
Ooh, ooh
Still hasn’t hit him yet
Ooh, ooh
Still hasn’t hit him yet.

[Outro:]
(Ooh)
I sold my soul (Ooh, still hasn’t hit him yet)
And all I got (Ooh)
Likes from strangers, love on the internet (Ooh)
Drugs and the internet
I wonder what it feels like
To be more than I am, I am.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'121', N'Fuck, I''m Lonely', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/mnEC80cRt0by2G9eLzFxZCJiK2eJrT4v', N'
[Verse 1: Lauv]
I call you one time, two time, three time
I can’t wait no more
Your fingers through my hair that’s on my mind
I know it’s been a minute since you walked right through that door
But I still think about you all the time

[Pre-Chorus: Lauv]
I don’t know
I don’t know
How I’m gonna make it out
I don’t know
I don’t know
Now you got me saying

[Chorus: Lauv]
Fuck I’m lonely
I’m lonely I’m lonely I’m lonely
As fuck
Come hold me come hold me come hold me
It’s been me myself and why
Did you go did you go
Oh fuck I’m lonely I’m lonely I’m lonely lonely I

[Verse 2: Anne-Marie]
Yeah I still watch the shows you showed me
I still drink that wine
But these days it tastes more bitter than sweet
And all my friends are way too drunk to save me from my phone
So sorry if I say some things I mean

[Pre-Chorus: Anne-Marie & Lauv]
I don’t know
I don’t know
How I’m gonna make it out
I don’t know
I don’t know
Now you got me saying

[Chorus: Anne Marie & Lauv, Anne-Marie]
I’m lonely I’m lonely I’m lonely
As fuck
Come hold me come hold me come hold me
It’s been me myself and why
Did you go did you go
Oh fuck I’m lonely I’m lonely I’m lonely lonely I

[Bridge: Lauv with Anne-Marie, Anne-Marie]
I miss those nights when you would come over
Spent all night just tryna get closer
That was June and now it’s October
I don’t want don’t want to get over
miss those nights when you would come over
Spent all night just tryna get closer
That was June and now it’s October
I don’t want don’t want to get over you
Get over you

[Chorus: Lauv & Anne-Marie, Lauv]
Fuck I’m lonely
I’m lonely I’m lonely I’m lonely
As fuck
Come hold me come hold me come hold me
It’s been me myself and why
Did you go did you go
Oh fuck I’m lonely I’m lonely I’m lonely lonely I

[Outro: Lauv & Anne-Marie, Lauv]
I miss those nights when you would come over
Spent all night just tryna get closer
That was June and now it’s October
I don’t want don’t want to get over
miss those nights when you would come over
Spent all night just tryna get closer
That was June and now it’s October
I don’t want don’t want to get over you
(Hmm, hmm)', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'122', N'Lonely Eyes', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/aewFGmRS1vcbJqaVPUTVmL0Hi62WNib8', N'
[Verse 1:]
She was sixteen the first time
She had her heart broken
Truth is, I''ve never had mine
Now she goes on vacation
In expensive places
To get away from her mind.

[Pre-Chorus:]
I don''t mean to be rude
There''s things in myself that I see in you.

[Chorus:]
Lonely eyes
She had those lonely eyes
I only know ‘cause I have them too
Lonely eyes
No, you don''t have to hide
The things you feel inside, I feel too.

[Post-Chorus:]
''Cause I''m lonely just like you
''Cause I''m lonely just like you.

[Verse 2:]
Bask in all of the silence
In between our eyelids
Where you are, I''m right there too
We might speak different languages
And we might have differences
But where you are, I''m right there too.

[Pre-Chorus:]
I don''t mean to be rude
There''s things in myself that I see in you.

[Chorus:]
Lonely eyes
She had those lonely eyes
I only know ‘cause I have them too
Lonely eyes
No, you don''t have to hide
The things you feel inside, I feel too.

[Post-Chorus:]
''Cause I''m lonely just like you
''Cause I''m lonely just like you
''Cause I''m lonely just like you.
(Oh, oh)

[Bridge:]
Stay the night, stay the week
When you''re gone, I don''t sleep
When you''re gone, I feel weak, oh
Stay the night, stay the week
When you''re gone, I don''t sleep
When you''re gone, I feel weak, oh.

[Chorus:]
Lonely eyes
She had those lonely eyes
I only know ‘cause I have them too
Lonely eyes
No, you don''t have to hide
The things you feel inside, I feel too.

[Outro:]
''Cause I''m lonely just like you (Oh)
(Da-da-da-da, da-da-da-da)
I''m lonely just like you (Oh)
(Da-da-da-da, da-da-da-da)
I''m lonely just like you (Oh)
Stay the night, stay the week (Da-da-da-da, da-da-da-da)
When you''re gone, I don''t sleep (I''m lonely just like you; oh)
When you''re gone, I feel weak, oh (Da-da-da-da)', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'123', N'Sims', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/UrXC8aeCTSaXQgq7GgRIcivxe7yvU0Oi', N'
[Verse 1:]
I wish that you and I lived in the Sims
We could build a house and plant some flowers and have kids
But we''re both at some trashy Halloween party downtown
And I''ll probably never see you again
I wish that we lived on a VHS
I''d erase the things I said and that I''ll probably say again
Hit rewind on all the times I got lost in my head
But I guess I''ll never see you again
I''ll probably never see you again.

[Chorus:]
Oh, goddamn
I wish we would''ve met on another night, baby
Maybe, then
I wouldn''t let you leave me
Yeah, oh, goddamn
I wish we would''ve met on another night, baby
In another life, baby
In another life.

[Post-Chorus:]
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let.

[Verse 2:]
I wish that we met walkin'' round the moon
And I''d say nice to meet you, ''stead of saying nice to know you
I try to impress you with some bullshit ''bout my name
At least I wouldn''t be too drunk to stay
And I wouldn''t have let you slip away.

[Chorus:]
Oh, goddamn
I wish we would''ve met on another night, baby
Maybe, then
I wouldn''t let you leave me
Yeah, oh, goddamn
I wish we would''ve met on another night, baby
In another life, baby
In another life.

[Bridge:]
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let.

[Outro:]
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let you
I wouldn''t have let you leave me.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'124', N'Believed', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/lfP0yxXVZDeLIM7j19U1wWvtRAM0WjYc', N'
[Verse 1:]
Midtown, almost got a place out of midtown
Instead I took a plane out of this town
And missed out on us, mmm
Wasted, and all of my regret, I can taste it
If I had a time-machine I would take it
And make it back to us.

[Pre-Chorus:]
Now I''m reminiscing ''round the clock
Wish that I could make it stop
Didn''t know it then, but now I know all this time, I, I.

[Chorus:]
Should''ve believed in us
While we existed
''Cause now the whole thing''s fucked
And just a figment of my imagination
If I could bring you back, I would
But it''s just way too late for that
Should''ve believed in us
Should''ve believed in us, ah, oh, oh.

[Verse 2:]
And I wish I would''ve been patient
Instead of lettin'' all the emotions
Turn to motions with you, mmm.

[Pre-Chorus:]
Now I''m reminiscing ''round the clock
Wish that I could make it stop
Didn''t know it then, but now I know all this time, I, I.

[Chorus:]
Should''ve believed in us
While we existed
''Cause now the whole thing''s fucked
And just a figment of my imagination
If I could bring you back, I would
But it''s just way too late for that
Should''ve believed in us
Should''ve believed in us, ah, oh, oh.

[Bridge:]
Should''ve believed in us
Should''ve believed in us, ah, oh, oh woah
If I could bring you back I would
But it''s just way too late for that
Should''ve believed in
If I could bring you back I would
But it''s just way too late for that.

[Chorus:]
Should''ve believed in us
While we existed
''Cause now the whole thing''s fucked
And just a figment of my imagination
If I could bring you back, I would
But it''s just way too late for that
Should''ve believed in us
Should''ve believed in us, ah, oh, oh.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'125', N'Billy', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/YdgNJm46XTXJHemEbM0yEKJHS3XRl50O', N'
[Verse 1]
Billy had dreams of a sailor or an astronaut
Nobody told ''em the world was mean
Billy grew up in a trailer and nobody thought
He could amount to anything
But I knew he would because he has a heart of gold
Woah, oh, oh

[Chorus]
Ayy, woah, well look who''s laughing now
''Cause Billy bought a brand new house
To all the people that were mean
He just channeled your energy
And ayy, woah, well look who''s laughing now
Yeah, he said, "Thank you for your doubts"
To all the people that believed
He just channeled your energy

[Verse 2]
Billy woke up in a Tesla at twenty-three
He didn''t think he earned the ride
Then Billy got down under pressure at twenty-four
He couldn''t go to bed at night
''Cause he saw the world come crashin'' down the way it does
Woah, oh, oh

[Chorus]
Ayy, woah, well look who''s laughing now
''Cause Billy bought a brand new house
To all the people that were mean
He just channeled your energy
And ayy, woah, well look who''s laughing now
Yeah, he said, "Thank you for your doubts"
To all the people that believed
He just channeled your energy

[Outro]
Now Billy is free
It''s Billy, oh, oh, oh
It''s Billy, it''s Billy, it''s Billy
Oh, oh, alright, woo', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'126', N'Feelings', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/IYmTGx3s2M0W3C56c66gQat64bnBruMc', N'
[Verse 1:]
Is my love too much?
Is it just enough for you, for you?
''Cause it''s getting late, would you like to stay
''Cause I''m bad at reading signs.

[Pre-Chorus:]
But I, I wanna do whatever you wanna do
If you wanted to, girl, we could cross that line
Know we''ve been friends
And love only knows broken ends
That''s what you said but girl let me change your mind.

[Chorus:]
Mmm, mmm, mmm
Mmm, mmm, mmm
Mmm, mmm
''Cause feelings are hard to find
Mmm, mmm, mmm
Mmm, mmm, mmm
Mmm, mmm
''Cause feelings are hard.

[Verse 2:]
But I feel ''em in my chest
A tiny war within
But when I pull you closer
Girl, I can''t explain.

[Pre-Chorus:]
But I, I wanna do whatever you wanna do
If you wanted to, girl, we could cross that line
Know we''ve been friends
And love only knows broken ends
That''s what you said but girl let me change your mind.

[Chorus:]
Mmm, mmm, mmm
''Cause feelings are hard to find
Mmm, mmm, mmm
Feelings are hard, yeah.

[Bridge:]
And I know, and I know that it hurts sometimes
That it hurts sometimes when I''m with you
And I know, and I know that it hurts sometimes
That it hurts sometimes when I miss you
And I know, and I know that it''s on your mind
That it''s on your mind when I kiss you
But I wanna do whatever you wanna do.

[Pre-Chorus:]
But I, I wanna do whatever you wanna do
If you wanted to, girl, we could cross that line
Know we''ve been friends
And love only knows broken ends
That''s what you said but girl let me change your mind.

[Chorus:]
Mmm, mmm, mmm
Mmm, mmm, mmm
Mmm, mmm
''Cause feelings are hard to find
Mmm, mmm, mmm
Mmm, mmm, mmm
Mmm, mmm
''Cause feelings are hard.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'127', N'Canada', N'Lauv; Alessia Cara', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/aVE0QVrafrQv2RRi8qebkCiB0ZANK7xw', N'
[Verse 1: Lauv]
Waking up in your bed
It''s almost like I''ve been here forever
I''m obsessed with your brain
And I''d unfold it if you let me

[Chorus: Lauv]
What if we move to Canada
And buy some things we don''t need?
Bring your mother''s dog
Your paintbrush and some candy
And when they talk about those
People who up and leave
That could be us
That could be you and me

[Verse 2: Alessia Cara]
How you talk with your hands
And how you sigh like a movie
And we got luck so bad we have to laugh
I guess we''re lucky that we don''t need much outside of us, do we?

[Chorus: Lauv & Alessia Cara]
What if we move to Canada
And buy some things we don''t need?
Bring your mother''s dog
Your paintbrush and some candy
And when they talk about those
People who up and leave
That could be us
That could be you and me

[Bridge: Lauv & Alessia Cara]
Ah, that could be you and me
Ah, that could be you and me
Ah, that could be you and me
Ah

[Chorus: Lauv & Alessia Cara, Alessia Cara & Lauv]
So, why don''t we move to Canada
And buy some things we don''t need?
Bring your mother''s dog
Your paintbrush and some candy
And when they talk about those
People who up and leave
That could be us
That could be you and me
Move to Canada
And buy some things we don''t need
Bring your mother''s dog
Your paintbrush and some candy
And when they talk about those
People who up and leave
That could be us
That could be you and me

[Outro: Lauv]
That could be you and me', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'128', N'For Now', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/4VqVLzt28XT6TAyS9499KCvcVf3tUvvQ', N'
[Intro]
Okay, here we go

[Verse 1]
I''ll send you pictures all the time
Of our friends when they''re too drunk and telling stories
I''ll keep you right here in my brain
Even when we''re waking up in different cities

[Pre-Chorus]
I know it''s hard to feel so
Close to someone
That''s so far away

[Chorus]
But for now, I''ll love you through the phone
And for now, our friends will fill this home
I''m really gonna miss you, but I''ll kiss you through the screen
For now, ''til you come home to me

[Verse 2]
In the shadow of the moon
Found a memory of that night we were in Portland, mmm
Of the moment I told you
That no matter where we are, you''re still my best friend

[Pre-Chorus]
I know it''s hard to feel so
Close to someone
That''s so far away

[Chorus]
But for now, I''ll love you through the phone
And for now, our friends will fill this home
I''m really gonna miss you, but I''ll kiss you through the screen
For now, ''til you come home to me

[Bridge]
(Da, da, da, da, da, da
Da, da, da, da, da, da, da
Da, da, da, da, da, da
Da, da, da, da, da, da, da)

[Outro]
I''m really gonna miss you, but I''ll kiss you through the screen
And if I had a candle, I would wish you back to me
And next time that I see you, I''ll make sure you never leave
But for now, just come home to me', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'129', N'Mean It', N'Lauv; LANY', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/zB4Cb1eKTf03ezUeP4zzy2dAsnUcuTnG', N'
[Verse 1: Lauv]
Small talk, no conversation
That look makes me impatient
I can''t tell what you''re thinking
Please, tell me what you''re thinking
Last night, we were more than fine
Just tell me if you changed your mind
If you changed your mind (Mind)

[Pre-Chorus: Lauv]
''Cause I''m all, I''m all in
I''m calling, no answer
Would you text me when you feel like?
When it feels right to you
But I''m all, I''m all in
I''m falling faster
But if you''re looking at me with a heart of doubt

[Chorus: Lauv]
Don''t kiss me right now
Don''t tell me that you need me
Don''t show up at my house
All caught up in your feelings
Don''t run me ''round and ''round
Don''t build me up just to let me down
Just to let me down, down, down (Hey)
Don''t mess with my head
Don''t tell me you''re falling
With your feet still on the ledge
I''m all out of breath
Baby, don''t run me ''round and ''round
Don''t kiss me, no, don''t kiss me right now
On your lips, just leave it
If you don''t mean it

[Verse 2: Paul Klein]
Oh, yeah
You know you got me in the palm of your hand
But I love those hands
Oh, yeah
But you only let me hold you when he can''t
Yeah, I don''t understand

[Pre-Chorus: Paul Klein]
''Cause I''m all, I''m all in
I''m calling, no answer
Would you text me when you feel like?
When it feels right to you
But I''m all, I''m all in
I''m falling faster
But if you''re looking at me with a heart of doubt

[Chorus: Paul Klein]
Don''t kiss me right now
Don''t tell me that you need me
Don''t show up at my house
All caught up in your feelings
Don''t run me ''round and ''round
Don''t build me up just to let me down
Just to let me down, down, down (Hey)
Don''t mess with my head
Don''t tell me you''re falling
With your feet still on the ledge
I'';m all out of breath
Baby, don''t run me ''round and ''round
Don''t kiss me, no, don''t kiss me right now
On your lips, just leave it
If you don''t mean it

[Bridge: Paul Klein & Lauv]
Hurry home, let''s never leave the house (But you don''t mean it)
Let''s stay in bed while all our friends go out (But you don''t mean it)
Why you let those words come out of your mouth? (If you don''t mean it)
You''ve been staring at me with a heart of doubt (Ah)

[Chorus: Lauv & Paul Klein]
Don''t kiss me right now
Don''t tell me that you need me
Don''t show up at my house
All caught up in your feelings
Don''t run me ''round and ''round
Don''t build me up just to let me down
Just to let me down, down, down (Hey)
Don''t mess with my head
Don''t tell me you''re falling
With your feet still on the ledge
I''m all out of breath
Baby, don''t run me ''round and ''round
Don''t kiss me, no, don''t kiss me right now
On your lips, just leave it
If you don''t mean it', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'13', N'Changes', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/k8wRIjRA2sP7i4gu4lGBSi98aDnhpd1B', N'Oh, woah, ooh-ooh
Oh-oh-oh, oh
Yeah, yeah-yeah, yeah-yeah
Ooh-ooh, ooh-woah, oh
Yeah, yeah, yeah, yeah
Oh-oh-oh, oh

[Verse 1]
Some days I move like water
Some days I burn like fire
Some days I wanna push further
Some days I wanna do nothing

[Pre-Chorus]
And I just wanna be the best of me
Even though sometimes, I forget to breathe
So that I can be the best for you, ooh
That''s all I wanna do

[Chorus]
I''m going through changes
I''m going through changes
Though I''m going through changes
Don''t mean that I''ve changed
Yeah, I''m going through changes
I''m going through changes
Though I''m going through changes
Don''t mean that I''ve changed

[Post-Chorus]
La-la-la, la-la
La-la-la, la-la
La-la-la, la-la
La-la-la, la-la, la
La-la-la, la-la
La-la-la, la-la, yeah

[Verse 2]
Some days I''ll go to sleep early
Sometimes I can''t close my eyes
Sometimes I smile like it''s all good
Even though there''s pain underneath it

[Pre-Chorus]
I just wanna be the best of me
Even though sometimes, I forget to breathe
So that I can be the best for you, ooh
That''s all I wanna do

[Chorus]
I''m going through changes
I''m going through changes
Though I''m going through changes
Don''t mean that I''ve changed
Yeah, I''m going through changes
I''m going through changes
Though I''m going through changes
Don''t mean that I''ve changed

[Outro]
La-da-da-da-dum, la-da-da-da-dum
La-da-da-da-dum, la-da-da-da-dum, no
La-da-da-da-dum, la-da-da-da-dum
I''m going through changes
No, I ain''t changed, yeah
Uh, people change, circumstances change
But God always remains the same', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'130', N'Tell My Mama', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/KphNucUkYMth6sTIxKOEiTYJ0WbyrAvZ', N'
[Verse 1]
I''ve been thinkin'' that life''s too short
So many friends got their life cut short
Now I''m standing here doing lines in the bathroom
I hate myself, but I felt like I had to

[Pre-Chorus]
(Ooh) I''ve been hiding pain that''s underneath
And I''ve been up so long, I''m scared to sleep
And if something were to happen to me
Can someone please

[Chorus]
Tell my mama that I love her
And I''m sorry for the pain, sorry for the pain
That I caused her when I was younger
All the stress I put her under
Tell my mama that I love her
And I''m sorry for the pain, sorry for the pain
That I caused her when I was younger
All the stress I put her under

[Verse 2]
And everybody says that I''ve been manic
I think they might be right, but I still manage
Lately, I''ve been so annoyed
''Cause they think that I''m just paranoid

[Pre-Chorus]
(Ooh) I''ve been hiding pain that''s underneath
And I''ve been up so long, I''m scared to sleep
And if something were to happen to me
Can someone please

[Chorus]
Tell my mama that I love her
And I''m sorry for the pain, sorry for the pain
That I caused her when I was younger
All the stress I put her under
Tell my mama that I love her
And I''m sorry for the pain, sorry for the pain
That I caused her when I was younger
All the stress I put her under

[Bridge]
I''ve been thinkin'' that life''s too short
So many friends got their life cut short
And I remember when I said I''d never be like this
Be like this

[Chorus]
Tell my mama that I love her
And I''m sorry for the pain, sorry for the pain
That I caused her when I was younger
All the stress I put her under
Tell my mama that I love her
And I''m sorry for the pain, sorry for the pain
That I caused her when I was younger
All the stress I put her under', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'131', N'Sweatpants', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/ugR4ubrGtMo1TfCS6i3RewTEH23QgGg0', N'
[Intro:]
Oh
Oh
Oh, oh.

[Chorus:]
Sweatpants and songs about her
Coffee with a little bit of alcohol
Oh no, no, don''t judge me
Just ''cause I do anything to get by
Oh, without her
Xanax and a little bit of Adderall
Oh no, no, don''t judge me
Just ''cause I do anything to get by.

[Verse 1:]
Since you don''t wanna know
Who I am anymore, you don''t care anymore
And I can''t really blame you
No, I can''t really blame you
And I don''t wanna know
Who you''re with when you leave, it''s so hard to believe
That it''s been so long
Swear I still feel you.

[Pre-Chorus:]
On my skin
Your scent in my sheets
Feels like just last week we were together
These days, it''s all.

[Chorus:]
Sweatpants and songs about her
Coffee with a little bit of alcohol
Oh no, no, don''t judge me
Just ''cause I do anything to get by
Oh, without her
Xanax and a little bit of Adderall
Oh no, no, don''t judge me
Just ''cause I do anything to get by.

[Verse 2:]
No motivations, I
Just wanna tell you I
I really miss you, but baby, that''s not the issue
The issue is comin'' back, expectin'' this time''ll last when
We''ve been through this, we both know
We''ll fight, fuck, and let it go
Again, again and again, again, again
''Cause deep down, I still want to feel you.

[Pre-Chorus:]
On my skin
Your scent in my sheets
Feels like just last week we were together
These days, it''s all.

[Chorus:]
Sweatpants and songs about her
Coffee with a little bit of alcohol
Oh no, no, don''t judge me
Just ''cause I do anything to get by
Oh, without her
Xanax and a little bit of Adderall
Oh no, no, don''t judge me
Just ''cause I do anything to get by
To get by.
Để quên đi em.

[Outro:]
Sweatpants and songs about her
Coffee with a little bit of alcohol
Oh no, no, don''t judge me
Just ''cause I do anything to get by.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'132', N'Who', N'Lauv; BTS', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/rG6kCnvsTgy14EIvK8PcBKZfRjRStQ5f', N'
[Verse 1: Lauv]
Our minds have new eyes and visions of you
Girl, I think I need a minute
To figure out what is, what isn''t
These choices and voices, they''re all in my head
Sometimes, you make me feel crazy
Sometimes, I swear I think you hate me like, yeah
I need a walk, I need a walk
I need to get outta here
''Cause I need to know

[Chorus: Lauv]
Who are you?
''Cause you''re not the girl I fell in love with, baby
Who are you?
''Cause something has changed, you''re not the same, I hate it
Oh, I''m sick of waiting for love, love
Oh, I know that you''re not the one, one

[Verse 2: Jungkook & Jimin]
Feelin'' hypnotized by the words that you said
Don''t lie to me, I just get in my head
When the morning comes you''re still in my bed
But it''s so, so cold
Who are you?
''Cause you''re not the girl I fell in love with

[Chorus: Lauv & Jungkook, Jimin]
Who are you?
''Cause you''re not the girl I fell in love with, baby
Who are you?
''Cause something has changed, you''re not the same, I hate it
Oh, I''m sick of waiting for love, love', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'133', N'I''m So Tired', N'Lauv; Troye Sivan
', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/Mmbsu5HtxHGi1XRqwlaf0fAOgi6EgQvJ', N'
[Chorus: Lauv]
I''m so tired of love songs, tired of love songs
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah
I''m so tired of love songs, tired of love songs
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah.

[Verse 1: Lauv]
Party, trying my best to meet somebody
But everybody around me is falling in love to our song
I, I, oh I, I, yeah
Hate it, taking a shot ''cause I can''t take it
But I don''t think that they make anything that strong, so I hold on
I, I, oh I, I, yeah.

[Chorus: Lauv]
I''m so tired of love songs, tired of love songs
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah
I''m so tired of love songs, tired of love songs
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah.

[Verse 2: Troye Sivan]
Strangers, killing my lonely nights with strangers
And when they leave, I go back to our song, I hold on
I, I, oh I
Hurts like heaven, lost in the sound
Buzzcut season like you''re still around
Can''t unmiss you and I need you now
Yeah, I, I, oh I, yeah.

[Chorus: Lauv & Troye Sivan]
I''m so tired of love songs, tired of love songs
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah
I''m so tired of love songs, tired of love songs
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah
I''m so tired of love songs
Tired of love songs, tired of love songs (Someone take me home)
Tired of love songs, tired of love
Just wanna go home, wanna go home (''Cause I can''t be alone)
Wanna go home, woah
So tired of love songs, tired of love songs (I''m so tired)
Tired of love songs, tired of love
Just wanna go home, wanna go home
Wanna go home, woah.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'134', N'El Tejano', N'Lauv; Sofia Reyes', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/TLo7pkriF5WjLz1vfOnB48loQOW1YaPM', N'
[Intro: Sofía Reyes & Lauv]
Y primero dije "no," pero sí quería (Woo)
Pa'' que te fueras me inventé cualquier tontería (Hmm-hmm)
Pero después del trago cinco te di la mano, y (Woo)
Me gustó tanto lo malo que eras bailando (Okay)

[Chorus: Lauv with Sofía Reyes]
I met a girl at El Tejano, we danced
To Spanish covers of Nirvana, we danced
And got another margarita, she''s from [?]
I said, "I''m from wherever you''re goin'' tonight," yeah.

[Verse 1: Lauv]
Drinkin'' after dark, that''s when she stole my heart (Mmm)
She knew my friends, that''s where the story begins
Standin'' at the salsa bar, asked if it was mild
I was speechless, but still, I smiled
Took me by the hand and asked me if I had plans
I said, "Gettin'' drunk and pretendin'' that I can dance"
She laughed, I fell in love and now it''s no goin'' back
Once you know it, yeah, you know it, that''s that.

[Chorus: Lauv with Sofía Reyes]
I met a girl at El Tejano, we danced
To Spanish covers of Nirvana, we danced
And got another margarita, she''s from [?]
I said, "I''m from wherever you''re goin'' tonight," yeah
It''s happy hour up in NoHo, we danced
She said, "I never come here solo," we danced
She''s got a round of straight tequila, she''s from [?]
I said, "I''m from wherever you''re goin'' tonight," yeah.

[Verse 2: Lauv & Sofía Reyes]
She asked if I like Friends, I guess that that was the test
I said, "Hell yeah, and Phoebe''s the fuckin'' best"
We were standin'' at the salsa bar, feelin'' the vibration (I know)
I always find myself in random situations
Ooh, do you wanna have a little bit of fun tonight?
She said, "Ooh, I do"
Ooh, do you wanna have a little bit of fun?
Once you know it, yeah, you know it, that''s that.

[Chorus: Lauv with Sofía Reyes]
I met a girl at El Tejano, we danced
To Spanish covers of Nirvana, we danced
And got another margarita, she''s from [?]
I said, "I''m from wherever you''re goin'' tonight"
It''s happy hour up in NoHo, we danced
She said, "I never come here solo," we danced
She''s got a round of straight tequila, she''s from [?]
I said, "I''m from wherever you''re goin'' tonight".

[Verse 3: Sofía Reyes]
Y primero dije "no," pero sí quería
Pa'' que te fueras me inventé cualquier tontería
Pero después del trago cinco te di la mano, y
Me gustó tanto lo malo que eras bailando
Déjame, te enseño yo, que la combi es mía
Cuando se acabe esta canción, nos vamos, ¿quién diría no?
Mira que no salgo sola, pero llego sola
Que estoy mejor sola, pero
We''re going to my place tonight.

[Outro: Lauv]
I met a girl at El Tejano, we danced (I''m from wherever you''re goin'')
To Spanish covers of Nirvana, we danced (I''m from wherever you''re goin'')
And got another margarita, she''s from [?] (I''m from wherever you''re goin'')
I said, "I''m from wherever you''re goin'' tonight".', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'135', N'Tattoos Together', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/1F7KSEFLZg0Fq4FuiYC47gNXmNhvxcvw', N'
[Verse 1:]
Said I''d never fall, I''d never fall
I''d never fall but then I fell for you, mm
Back against the wall, against the wall
Against the wall, that''s how it felt with you, mhm, mm
One weekend in Portland
You weren''t even my girlfriend
We were walkin'' and talkin''
Then somebody said, Let''s get

[Chorus:]
Tattoos together, something to remember
If it''s way too soon, fuck it, whatever
Give me shapes and letters
If it''s not forever, then at least we''ll have tattoos together

[Post-Chorus:]
Mhm, ''cause I love you
Mhm, ''cause I love you
Mhm, ''cause I love you
Mhm

[Verse 2:]
Knew it from the moment, from the moment
From the moment that I saw you naked, mm, yeah
I could never love nobody else, nobody else
The way I loved you, baby, mm, mm
One weekend (Weekend), no sleepin'' (Sleepin'')
You weren''t even my girlfriend, yeah
We were kissin'', like, real kissin''
Then somebody said, Let''s get

[Chorus]
Tattoos together, something to remember
If it''s way too soon, fuck it, whatever
Give me shapes and letters
If it''s not forever, then at least we''ll have tattoos together

[Post-Chorus:]
Mhm, ''cause I love you
Mhm, ''cause I love you
Mhm, ''cause I love you
Mhm, tattoos together

[Verse 3]
Yeah, your cherry earrings are my favorite (Favorite)
It looks so good, I had to save it (Save it)
I''ve been hopin'', prayin'' we last forever
''Cause there''s nothing better than you and I

[Chorus:]
Tattoos together, something to remember
If it''s way too soon, fuck it, whatever
Give me shapes and letters
If it''s not forever, then at least we''ll have tattoos together

[Post-Chorus:]
Mhm, ''cause I love you
Mhm, ''cause I love you
Mhm, ''cause I love you
Mhm, oh.

[Outro:]
Oh yeah
Mhm, oh yeah
Mhm, huh.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'136', N'Changes', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/r1fOFZRZb6kVYlCCP8URr6TPlkV01w34', N'
[Verse 1:]
I''m getting rid of my clothes I don’t wear
I think I''m gonna cut my hair
''Cause these days I don’t feel like me, mm
I think I''m gonna take a break from alcohol
Probably won''t last that long
But Lord knows I could use some sleep, mm

[Chorus:]
Changes, they might drive you half-insane
But it''s killing you to stay the same
But it''s all gonna work out, it''s all gonna work out someday
Moments, livin'' with your eyes half-open
You''ve been thinking ’bout these changes
It’s all gonna work out, it''s all gonna work out someday

[Verse 2:]
I think I’m gonna take some pills to fix my brain
''Cause I tried every other way
But some things you can''t fix yourself
But he said that he''s doing the same thing over and over
And life ain’t easy these days, no, life ain''t easy these days

[Chorus]
Changes, they might drive you half-insane
But it''s killing you to stay the same
But it''s all gonna work out, it''s all gonna work out someday
Moments, livin'' with your eyes half-open
You''ve been thinking ’bout these changes
It’s all gonna work out, it''s all gonna work out someday

[Bridge:]
Na-na-na-na-na-na-na
Na-na-na-na-na-na
Na-na-na-na-na-na-na
Na-na-na-na-na-na
Na-na-na-na-na-na-na
Na-na-na-na-na-na
Na-na-na-na-na-na-na
Na-na-na-na-na-na

[Chorus:]
Changes, they might drive you half-insane
But it''s killing you to stay the same
But it''s all gonna work out, it''s all gonna work out someday
Moments, livin'' with your eyes half-open
You''ve been thinking ’bout these changes
It’s all gonna work out, it''s all gonna work out someday', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'137', N'Sad Forever', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/eNbraalMlXYNKuyKTSu6LGPcqMF0zyev', N'
[Verse 1:]
Daydream
Life feels like a daydream
And I just wish that I could wake up
I just wish that I could wake up
My mind
Whispers in the nighttime
Voices always keeping me up
Telling me that I should give up.

[Pre-Chorus:]
''Cause lately I''ve been in the backseat to my own life
Trying to take control, but I don''t know how to.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'138', N'Invisible Things', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/z9mMjpBbXDnYJ9XsiSfC2y676VuVe2Fq', N'
[Verse 1:]
Do you still remember
The way that we felt when we were kids?
Wonder if that place still exists, mmm
We lived for the moment
And fear was a stranger to our lips
I wonder if that place still exists.

[Pre-Chorus:]
Yeah, we built castles out of couches
Felt fire without matches
Made promises without fear of gettin'' burned
Now we''re always second-guessing
We think happy is expensive
But every time I''m with you, I relearn.

[Chorus:]
It''s the invisible things that I, that I love the most
It''s the way that I feel when I, when I hold you close
''Cause everything I lose, oh, it comes and goes
It''s the invisible things that I, that I love the most
So, let me hold you close
So, let me hold you close
(Oh, yeah)

[Verse 2:]
Do you remember
The last time you felt something like this?
The way that it felt when we were kids.

[Pre-Chorus:]
And we built castles out of couches
Felt fire without matches
Made promises without fear of gettin'' burned
Now we''re always second-guessing
We think happy is expensive
But every time I''m with you, I relearn.

[Chorus:]
It''s the invisible things that I, that I love the most
(I love the most, I love the most)
It''s the way that I feel when I, when I hold you close
(I hold you close, I hold you close)
''Cause everything I lose, oh, it comes and goes
It''s the invisible things that I, that I love the most
So, let me hold you close
So, let me hold you close
So, let me hold you close.

[Bridge:]
The way I feel and the way we kiss
Swear that nothing else in the world exists
Shh.

[Chorus:]
It''s the invisible things that I, that I love the most
(I love the most, I love the most)
It''s the way that I feel when I, when I hold you close
(I hold you close, I hold you close)
''Cause everything I lose, oh, it comes and goes
It''s the invisible things that I, that I love the most
So, let me hold you close.

[Outro:]
The way I feel from the way we kiss
Swear that nothing else in the world exists (All you need is someone, all you need is someone)
Cross my heart if we don''t forget
Someday, we''ll both look back and remember this (All you need is someone, all you need is someone)', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'139', N'Julia', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/rd5KOzmmUxheTW6suWVTH8zk8kAvWbxm', N'
[Intro:]
Can we call it kinda? Yeah
When we met
That seems right, yeah;

[Verse 1:]
When we met, I wasn''t me
I was so numb, yeah, I was so lonely
Out on the run, I wasn''t free
And you came along, but you couldn''t save me.

[Pre-Chorus:]
My hesitation and holdin'' my breath
I let you into the garden of my loneliness
Wished that you left before it all burned down.

[Chorus:]
Oh, Julia
I''m sorry what I do to ya
I push and pull and mess with your head
Then get in your bed ''cause I''m weak deep down
Oh, Julia
I wish I never lied to ya
I never meant to hurt you like that
And if I could go back, I''d leave you alone.

[Verse 2:]
When I left, I wasn''t sure
That I could love, love anymore.

[Pre-Chorus:]
My hesitation and holdin'' my breath
I let you into the garden of my loneliness
Wished that you left before it all burned down.

[Chorus:]
Oh, Julia
I''m sorry what I do to ya
I push and pull and mess with your head
Then get in your bed ''cause I''m weak deep down
Oh, Julia
I wish I never lied to ya
I never meant to hurt you like that
And if I could go back, I''d leave you alone.

[Outro:]
I won''t lie to you no more
I won''t lie to you no more
''Cause I know I did before
Hope you find what you''re looking for.', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'14', N'Confirmation', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/9SiXNHh9QTq2jbB1R2OjZnOu9WxKqfp4', N'Ain''t nobody got no patience
Want what they want right now (One more time)

[Verse 1]
Ain''t nobody got no patience
Want what they want right now
Ain''t no need in being so anxious
I can hear your heart beating out loud

[Pre-Chorus]
Quit acting like we''re in a race
Beggin'' me, you know I''m on the way over
Take a moment to cherish this space
So quick to move forward, no pressure

[Chorus]
And we got the rest
Got the rest, got the rest of our lives
We got the rest
Got the rest, got the rest of our lives
All you ever really want
All you ever really need is at home
We got the rest
Got the rest, got the rest of our lives

[Post-Chorus]
Oh-oh-oh-oh-oh-oh
Oh-oh-oh, oh-oh-oh, oh
Oh-oh-oh-oh-oh-oh
Oh-oh-oh, oh-oh-oh, oh

[Verse 2]
Look at how it''s all unfolding
Yeah, persistence at its finest
Like you wanted in before the door was open
Instead of lettin'' what''s scripted play out

[Pre-Chorus]
Quit acting like we''re in a race
Beggin'' me, you know I''m on the way over
Take a moment to cherish this space
So quick to move forward, no pressure

[Chorus]
And we got the rest
Got the rest, got the rest of our lives
We got the rest
Got the rest, got the rest of our lives
All you ever really want
All you ever really need is at home
We got the rest
Got the rest, got the rest of our lives

[Outro]
Oh-oh-oh-oh-oh-oh
Oh-oh-oh, oh-oh-oh, oh
Oh-oh-oh-oh-oh-oh
Oh-oh-oh, oh-oh-oh, oh', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'140', N'Modern Loneliness', N'Lauv', N'https://data.chiasenhac.com/data/cover/118/117074.jpg', N'https://audio.jukehost.co.uk/cpZR1gi5lQCEEfZCxqmsPODz50YXKm6K', N'
[Verse 1:
I''ve been thinkin'' ''bout my father lately
The person that he made me
The person I''ve become
And I''ve been tryna fill all of this empty
But, fuck, I''m still so empty
Yeah, I could use some love

[Pre-Chorus:]
And I''ve been trying to find a reason to get up
Been trying to find a reason for this stuff
In my bedroom and my closet
The baggage in my heart is still so dark

[Chorus:]
Modern loneliness
We''re never alone, but always depressed, yeah
Love my friends to death
But I never call and I never text ''em
La-di-da-di-da
Yeah, you get what you give and you give what you get, so
Modern loneliness
We love to get high, but we don''t know how to come down

[Verse 2:]
If I could break my DNA to pieces
Rid of all my demons
If I could cleanse my soul
Then I could fill the world with all my problems
But, shit, that wouldn''t solve them
So, I''m left here alone

[Pre-Chorus:]
And I''ve been trying to find a reason to get up
Been trying to find a reason for this stuff
In my bedroom and my closet
The baggage in my heart is still so dark

[Chorus:]
Modern loneliness
We''re never alone, but always depressed, yeah
Love my friends to death
But I never call and I never text ''em
La-di-da-di-da
Yeah, you get what you give and you give what you get, so
Modern loneliness
We love to get high, but we don''t know how to come down

[Post-Chorus:]
Down, down, down, down, down
We don''t know how to come down
Down, down, down, down, down
We don''t know how to come down
Down, down, down, down, down
We don''t know how to come down
Down, down, down, down, down
We don''t know how to come down

[Chorus:]
Modern loneliness
We''re never alone, but always depressed, yeah
Love my friends to death
But I never call and I never text ''em
La-di-da-di-da
Yeah, you get what you give and you give what you get, so
Modern loneliness
We love to get high, but we don''t know how to come down

[Post-Chorus:]
Down, down, down, down, down
We don''t know how to come down
Down, down, down, down, down
We don''t know how to come down
Down, down, down, down, down (I''m prayin'', I''m prayin'', I''m prayin'')
We don''t know how to come down
Down, down, down, down, down (I''m prayin'', I''m prayin'', I''m prayin'')
We don''t know how to come down

[Outro:]
Modern loneliness', N'1', N'10')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'141', N'Anxiety', N'Julia Michaels; Selena Gomez', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'https://audio.jukehost.co.uk/gwFFUHMVMyBfTHSeTMuQPKbrmSmnIc1w', N'
[Verse 1: Julia Michaels]
My friends, they wanna take me to the movies
I tell ''em to fuck off, I''m holding hands with my
And right when I think I''ve overcome it
Anxiety starts kicking in to teach that shit a lesson
Oh, I try my best just to be social
I make all these plans with friends and hope they call and cancel
Then I overthink about the things I''m missing
Now I''m wishing I was with ''em.

[Pre-Chorus: Julia Michaels]
Feel like I''m always apologizing for feeling
Like I''m out of my mind when I''m doing just fine
And my exes all say that I''m hard to deal with
And I admit it, yeah.

[Chorus: Julia Michaels]
But all my friends, they don''t know what it''s like, what it''s like
They don''t understand why I can''t sleep through the night
I''ve been told that I could take something to fix it
Damn, I wish it, I wish it was that simple, ah
All my friends they don''t know what it''s like, what it''s like.

[Verse 2: Selena Gomez]
Always wanted to be one of those people in the room
That says something and everyone puts their hand up
Like, "If you''re sad put your hand up
If you hate someone, put your hand up
If you''re scared, put your hand up".

[Pre-Chorus: Selena Gomez]
Feel like I''m always apologizing for feeling
Like I''m out of my mind when I''m doing just fine
And my exes all say that I''m hard to deal with
And I admit it, yeah.

[Chorus: Julia Michaels]
But all my friends, they don''t know what it''s like, what it''s like
They don''t understand why I can''t sleep through the night
I''ve been told that I could take something to fix it
Damn, I wish it, I wish it was that simple, ah
All my friends they don''t know what it''s like, what it''s like.

[Bridge: Julia Michaels, Both, Selena Gomez]
I got all these thoughts, running through my mind
All the damn time and I can''t seem to shut it off
I think I''m doing fine most of the time
I think that I''m alright, but I can''t seem to shut it off
I got all these thoughts, running through my mind
All the damn time and I can''t seem to shut it off
I think I''m doing fine most of the time
I say that I''m alright, but I can''t seem to shut it off
Shut it, shut it, yeah.

[Chorus: Julia Michaels, Both]
But all my friends, they don''t know what it''s like, what it''s like
They don''t understand why I can''t sleep through the night
I''ve been told that I could take something to fix it
Damn, I wish it, I wish it was that simple, ah
All my friends they don''t know what it''s like, what it''s like.

[Outro: Selena Gomez]
Li-i-i-i-ike
What it''s like, what it''s like
Hmm-mm-mm, mmm
What it''s like
I love this song.', N'1', N'11')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'142', N'Into You', N'Julia Michaels', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'https://audio.jukehost.co.uk/iGaTpT2RWikbpQbviEyteLavZP2KSmG8', N'
[Verse 1:]
Haven''t been to my favorite restaurant in months
I can''t drive down Santa Monica without thinkin'' ''bout ya
And what you''re doin'' now
I thought about movin'' to a different state
A different country, yeah, maybe that''d be better
So I''m not around you.

[Pre-Chorus:]
I wish we didn''t have so many friends in common
I wish we didn''t have to walk around our problems
I wish we didn''t have to take all these precautions
So many birthdays that I missed, that I missed, that I missed.

[Chorus:]
So I don''t run right into you
So I don''t run right into you
So I don''t run right into you
Even though that''s what I wanna do (What I wanna do)
Ooh-ooh-ooh, ooh, ooh
Even though that''s what I wanna do (What I wanna do)
Ooh-ooh-ooh, ooh, ooh.

[Verse 2:]
I don''t wanna give you all this power
I''m so defenseless when it comes to you
And everybody knows when we''re in the same vicinity, I dodge you.

[Pre-Chorus:]
I wish we didn''t have so many friends in common
I wish we didn''t have to walk around our problems
I wish we didn''t have to take all these precautions
So many birthdays that I missed, that I missed, that I missed.

[Chorus:]
So I don''t run right into you
So I don''t run right into you
So I don''t run right into you
Even though that''s what I wanna do (What I wanna do)
Ooh-ooh-ooh, ooh, ooh
Even though that''s what I wanna do (What I wanna do)
Ooh-ooh-ooh, ooh, ooh.

[Bridge:]
And every time that a friend gets a text
Sayin'' you''re gonna be there, I just don''t go
Yeah, every time that a friend gets a text
Sayin'' you''re gonna be there, I just don''t go, oh.

[Chorus:]
So I don''t run right into you (Run right into you)
So I don''t run right into you
So I don''t run right into you
Even though that''s what I wanna do (What I wanna do)
Ooh-ooh-ooh, ooh, ooh (What I wanna do)
Even though that''s what I wanna do (What I wanna do)
Ooh-ooh-ooh, ooh, ooh
Even though that''s what I want.', N'1', N'11')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'143', N'Happy', N'Julia Michaels', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'https://audio.jukehost.co.uk/TDt5e9omWqOZleC1GRt1EK90SbD4C8v4', N'
[Intro:]
Ayy.

[Verse 1]
Don''t kiss in front of me, it makes me sick
I''m not bitter, well, maybe a little bit
I''d sniff glitter if it''d help me feel something real
And if it was my birthday, I''d make a wish
To not be bitter ''cause I''m getting sick of this
I''d skip dinner if it''d help me feel something real.

[Pre-Chorus:]
And sometimes I think I kill relationships for art
I start up all this shit to watch ''em fall apart
I pay my bills with it, I watch ''em fall apart
Then pay the price for it, I watch ''em fall apart, but...

[Chorus:]
Oh, I just wanna be fucking happy, oh, oh, oh
Oh, I just wanna be fucking happy, yeah.

[Verse 2:]
I''m sending out texts at 4 a.m
I''m not desperate, I just want somebody''s skin
In my denim, ''cause it helps me feel something (Oh, oh)

[Pre-Chorus:]
And sometimes I think I kill relationships for art
I start up all this shit to watch ''em fall apart
I pay my bills with it, I watch ''em fall apart
Then pay the price for it, I watch ''em fall apart, but...

[Chorus:]
Oh, I just wanna be fucking happy, oh, oh, oh
Oh, I just wanna be fucking happy, yeah
Oh, oh, oh, oh
Oh, I just wanna be fucking happy.

[Bridge:]
And sometimes I think I kill relationships for art
I start up all this shit to watch ''em fall apart
I pay my bills with it, I watch ''em fall apart
Then pay the price for it, I watch ''em fall apart...

[Chorus:]
Oh, I just wanna be fucking happy, oh, oh, oh
Oh, I just wanna be fucking happy, yeah, yeah
Oh, oh, oh, oh (I just wanna be ha—)
Oh, oh, oh, oh.

[Outro:]
I just wanna be happy
I just wanna be happy
I just wanna be happy (Uh)
I just wanna be happy (Uh)
I just wanna be...', N'1', N'11')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'144', N'Deep', N'Julia Michaels', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'https://audio.jukehost.co.uk/HHtm6LqAA4C2f4V53J4CVc1DqbctBrlS', N'
[Verse 1:]
I''m tryna come up with a systematic approach
To love you and let you go
But you''re cloudin'' up my judgement every time
You give me chills when you look at me like that
I don''t know how I feel
Nobody, nobody''s deep, deep, deep, deep
Deep, deep, deep.

[Chorus:]
Somebody left me feeling empty
And somebody ripped me at the seams
But you''re bringing back all my feelings
You''re bringing back all of my feelings
I''m deep divin'' into your emotions
And sometimes, I think I might be broke
But you''re bringing back all my feelings
You''re bringing back all of my feelings
And I fuckin'' love, I fuckin'' love it.

[Verse 2:]
It''s becoming less
Less about what I know and more about what I think
I think that I go crazy every time your lips on mine
Oh my fucking God, I wanna change my mind
But oh, you''ve got it in so deep, deep, deep, deep
Deep, deep, deep.

[Chorus:]
Somebody left me feeling empty
And somebody ripped me at the seams
But you''re bringing back all my feelings
You''re bringing back all of my feelings
I''m deep divin'' into your emotions
And sometimes, I think I might be broke
But you''re bringing back all my feelings
You''re bringing back all of my feelings
And I fuckin'' love, I fuckin'' love it.

[Post-Chorus:]
Uh
Yeah, yeah.

[Bridge:]
Shy away from ya, I can''t
Put your love down, I can''t and I won''t
Can''t you see it from where you stand?
That you know I love you, know I love you
Shy away from ya, I can''t (Shy away)
Put your love down, I can''t and I won''t
Can''t you see it from where you stand? (Shy away)
That you know I love you, know I love you.

[Outro:]
Ah, ah, ah ah ah
Ah, ooh, ah ah ah.', N'1', N'11')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'145', N'Apple', N'Julia Michaels', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'https://audio.jukehost.co.uk/7sJUXRdBnFoHsETbrkwbKfzk490U7OPm', N'
[Chorus:]
Oh, I''d rather be kissing in Summer, somewhere in the sand
In your apartment on the weekends
Lift up my dress to see where you''ve been
That''s what I want and that''s where I am
Bite off an apple right from your fridge
Come here and taste it right off my lips
Spill your emotions into my hands
That''s what I want.

[Verse 1:]
I smell like a rose, can I have you in doses?
No, I don''t wanna fight, but I will if you like
I don''t swim, I just dive right into those blue-green eyes
No, I don''t wanna fight, I just, I just wanna be.

[Chorus:]
Kissing in Summer, somewhere in the sand
In your apartment on the weekends
Lift up my dress to see where you''ve been
That''s what I want and that''s where I am
Bite off an apple right from your fridge
Come here and taste it right off my lips
Spill your emotions into my hands
That''s what I want.

[Verse 2:]
And da da da da da da
The sun in our eyes, this love is blind
Let''s not decide whether we''re too far gone
''Cause I''d rather be.

[Chorus:]
Kissing in Summer, somewhere in the sand
In your apartment on the weekends
Lift up my dress to see where you''ve been
That''s what I want and that''s where I am
Bite off an apple right from your fridge
Come here and taste it right off my lips
Spill your emotions into my hands
That''s what I want (That''s what I want)

[Outro:]
Oh oh, oh, oh da-da-dumn
That''s what I
Dum da-da-dum, oh
That''s what I.', N'1', N'11')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'146', N'What A Time', N'Julia Michaels; Niall Horan', N'https://data.chiasenhac.com/data/cover/100/99762.jpg', N'https://audio.jukehost.co.uk/t6CYlX4wkfuRYcwWbCickb3vKzs8FlxQ', N'
[Verse 1: Julia Michaels]
I feel a little nauseous and my hands are shaking
I guess that means you''re close by
My throat is getting dry and my heart is racing
I haven''t been by your side
In a minute, but I think about it sometimes
Even though I know it''s not so distant
Oh, no, I still wanna reminisce it

[Chorus: Julia Michaels]
I think of that night in the park, it was getting dark
And we stayed up for hours
What a time, what a time, what a time
You clinged to my body like you wanted it forever
What a time, what a time, what a time
For you and I
What a time, what a time
For you and I

[Verse 2: Niall Horan]
I know we didn''t end it like we''re supposed to
And now we get a bit tense
I wonder if my mind just leaves out all the bad parts
I know we didn''t make sense
I admit it that I think about it sometimes
Even though I know it''s not so distant
Oh, no, I still wanna reminisce it

[Chorus: Julia Michaels & Niall Horan]
I think of that night in the park, it was getting dark
And we stayed up for hours
What a time, what a time, what a time
You clinged to my body like you wanted it forever
What a time, what a time, what a time
For you and I
What a time, what a time
For you and I

[Bridge: Julia Michaels & Niall Horan]
For you and I
For you and I
For you and I
What a time, what a time for you and I
What a time for you and I, yeah
What a time, what a time for you and I

[Chorus: Julia Michaels & Niall Horan]
I think of that night in the park, it was getting dark
And we stayed up for hours
What a lie, what a lie, what a lie
You clinged to my body like you wanted it forever
What a lie, what a lie, what a lie
For you and I
What a lie, what a lie
For you and I

[Outro: Julia Michaels & Niall Horan]
For you and I (For you)
For you and I (For you)
For you and I (For you and I)
For you and I, yeah', N'1', N'11')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'147', N'9.13', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/oTFHDa9n2ZS7Oc7HxjGxxZ8RdvJNVV8Q', N'
[Dialogue]
The people of El Paso Texas proudly present
The key to the city, to Khalid Donnel Robinson
Forever, from the city of the 915
*Cheers and applause*', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'148', N'Vertigo', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/xjelmDxz0VSjhpIHJ40886t4ujl0jZet', N'
[Verse 1:]
Are we better off believing
What the ignorance suggests?
I wish living life was easy (Mhm)
But mine has been a mess
They say it comes with the seasons (Mhm)
But the seasons come and go (They go)
I go blurry when I''m thinking
Is it me or vertigo?

[Pre-Chorus:]
Criticized, who am I to give up?
And breathing was the reason to live
Sympathize, who am I to give up
Putting on my favorite record?

[Chorus:]
Are we alive?
Or are we dreaming?
After the ride
Are you living?
Are we alive? (Riding this, riding in this)
Or are we dreaming? (Riding this, riding in this)
After the ride
Are you living? (Riding this, riding in this)

[Verse 2:]
I''ve been better, often broken
I''ve been battered up and beat
I wish I was more outspoken
But the words are out of reach
Hmm, thought I loved you in the moment
I was happy, I was not
I''ve been learning, I''ve been growing
But the worst is yet to come.

[Pre-Chorus:]
Criticized, who am I to give up?
And breathing was the reason to live
Sympathize, who am I to give up?
Putting on my favorite record

[Chorus:]
Are we alive?
Or are we dreaming?
After the ride
Are you living?
Are we alive? (Riding this, riding in this)
Or are we dreaming? (Riding this, riding in this)
After the ride
Are you living? (Riding this, riding in this)

[Outro:]
Eyes closed, eyes closed
I''ve been falling with my
Eyes low, eyes low
I''ve been falling with my
Eyes closed, eyes closed
I''ve been falling with my
Eyes low, eyes low
I''ve been falling with my
Eyes closed, eyes closed
I''ve been falling with my
Eyes low, eyes low
I''ve been falling with my (Forgot)
Eyes closed, eyes closed (Forgot)
I''ve been falling with my (Forgot)
Eyes low, eyes low
I''ve been, I''ve been, I''ve been
Eyes closed, eyes closed
I''ve been falling with my
Eyes low, eyes low
I''ve been falling with my
Eyes closed, eyes closed
I''ve been falling with my
Eyes low, eyes low
I''ve been falling with my.', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'149', N'Saturday Nights', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/vvGBB7lfZa5JbX2Av0Iu1jBYiLhUUyhT', N'
[Verse 1:]
Saturday nights
New berry cigarillos
Swishers make my throat hurt
Rolling OCDs on the side for me
Got ''em up and let ''em both burn
Family feuds saying Mom''s confused
I''m for sure she doesn''t wanna learn
But Daddy''s gone, say he''s never home
And wishing only makes it worse.

[Pre-Chorus:]
I guess there''s certain dreams that you gotta keep
''Cause they''ll only know, what you let ''em see.

[Chorus:]
All the things that I know
That your parents don''t
They don''t care like I do
Know well like I do
And all the things that I know
That your parents don''t
They don''t care like I do
Nowhere like I do
Nowhere like I do
Nowhere like I do.

[Verse 2:]
Saturday nights
That gray Silverado
You drive it ''cause you have to
Stay up working late at a job you hate
Fix your makeup in a dirty bathroom
All my love in the dark clouds
I know what you gotta do
You got plans, wrapped in rubber bands
And that''s the only thing you''ll never lose.

[Pre-Chorus:]
I guess there''s certain dreams that you gotta keep
''Cause they''ll only know what you let ''em see.

[Chorus:]
All the things that I know
That your parents don''t
They don''t care like I do
Nowhere like I do
And all the things that I know
That your parents don''t
They don''t care like I do
Nowhere well like I do
Nowhere like I do
Nowhere like I do.

[Bridge:]
''Cause I care
I care about you
There''s nowhere I''d rather be
Than right here right now
I care, care about you
There''s nowhere I''d rather be.

[Chorus:]
All the things that I know
That your parents don''t
They don''t care about you
Nowhere that I do
And all the things that I know
That your parents don''t
Don''t care about you
Nowhere that I
Nowhere that I do
Nowhere that I do (do, do, do)
Nowhere that I do (do, do, do)
Nowhere that I do (do, do, do).', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'15', N'That’s What Love Is', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/rlwC5FzyYBR3rB3W5zVyaJnuUOURES78', N'Ooh, and I can feel you
Even though I haven''t touched you
Yeah, that''s what love is
That''s what true love is
Wouldn''t want nobody else by my side
Ooh, and you can trust me
After all the lies I told you
Yeah, that''s what love is
That''s what true love is
Don''t nobody else deserve my time

[Verse 1]
I reach out to you, but my hands can''t hold enough
Enough of your greatness
You teach me patience
Like the best of our worlds collide
Never understood what it meant
It meant to submit to love
So beyond what lust is
Hey, it''s a blessing that you''re in my life
Make me look even better
When we shine, we shine together

[Chorus]
Yeah, that''s what love is
Now, that''s what love is
Don''t nobody else deserve my eyes

[Verse 2]
When you demand my presence, it''s hard to read the message
I stay on the defense to take away your leverage
''Til you put it in perspective
Can''t help but to respect it
Oh, now I know what love is
I know what true love is
Yeah, down in my soul
Far more than you know
My self-esteem gets low
You lift it right up through the ceiling, woah

[Chorus]
Ooh, and I can feel you
Even though I haven''t touched you
Yeah, that''s what love is
Now, that''s what love is
Don''t nobody else deserve my eyes

[Outro]
(Oh-oh-oh, oh)
(Oh-oh-oh-oh-oh, oh)
(Ooh-ooh-ooh, ooh)
That''s what love is (Ooh-ooh-ooh, ooh)
That''s what love is (La-la-la, la, la, la)
I appreciate you (Oh-oh-oh, oh, oh-oh-oh-oh-oh, oh)
God bless your maker, hey-hey (Ooh-ooh-ooh, ooh)
That''s what love is (Ooh-ooh-ooh, ooh)
That''s what love is (La-la-la, la, la, la)
Look at this love', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'150', N'Salem''s (Interlude)', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/1DapIuRIHGxitBcarCL3TujxErQPipkk', N'
[Dialogue]
I think I''m fearful of things like traveling
I''m fearful of failure
I''m fearful of being embarrassed, things like that I think hinder me from doing the best that I can sometimes
But I think that if I learn to be less fearful
I would get further
I feel like I''m not always
In the correct direction, even though I know I''m on the right path
I''m like "I''m on the right path"
But am I walking the right way or should I be turning around?
Like little things like that that I go back and forth about in my head
And I think it''s always nice to have reassurance
I think it''s really nice to see how far being a genuine person can get you
For me at least, like I think that''s the reason that I am where I am
I think that I am a big mix of all the people around me
And I''m just happy
I can''t complain about anything
Oh yeah
That I''m trying to get so motherfucking high, nigga
I don''t wanna feel nothing (Wait, what?).', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'151', N'Motion', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/wltJo3VMh5kaIOgBGN3tYyDlLB81L54b', N'
[Verse 1:]
You''d rather speak more than listen
And that''s based off our first impression
I''m gonna hide this affection
But I''m going in the right direction
Floating through different dimensions
The ladders and stairs haven''t changed
Honey, I forgot to mention
I''m so entranced by you, it hurts.

[Chorus:]
I''m in love with the moment
To me fallin'', to me goin''
I''m in love with the moment
To me fallin'', to me goin''.

[Verse 2:]
Can''t let me go if I''m fallin''
I''ve been on the path of importance
Nothing left, pull you in slowly
The river is running, we''re flowing
I''m coming down, you''ve been rollin''
And we''ll light a flame, now we''re open
Pour me a, pour me a potion
I''m rocking, I''m rocking the motions.

[Chorus:]
I''m in love with the moment
To me fallin'', to me goin''
I''m in love with the moment
To me fallin'', to me goin''.

[Outro:]
Nothing feels better than this
Now, left, right, left, right
Take you back, lean you side to side
Like that, like that, ayy
Ooh, now, left, right, left, right
Take you back, lean you side to side
Like
Nothing feels better than this
Now, left, right, left, right
Take you back, lean you side to side
Like that, like that, ayy
Ooh, now, left, right, left, right
Take you back, lean you side to side
Like
Nothing feels better than this.

That made me feel like I''m just speeding, doing 60 in a 35. We''re sitting in a car and just holding hands.', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'152', N'Better', N'Khalid', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/uZYVrrhD569XZF7bdEDLv05RkpaepBWm', N'
[Intro:]
Better
Nothing, baby
Nothing feels better
I''m not really drunk, I never get that fucked up
I''m not, I''m so sober.

[Verse 1:]
Love to see you shine in the night like the diamond you are
(Love to see you shine in the night like the diamond you are)
I''m good on the side, it''s alright, just hold me in the dark
(I''m good on the side, it''s alright, just hold me in the dark)
No one''s gotta know what we do, hit me up when you''re bored
(No one''s gotta know what we do, hit me up when you''re bored)
''Cause I live down the street
So hit me when you need and it''s yours
All I hear is...

[Chorus:]
Nothing feels better than this
Nothing feels better
Nothing feels better than this
Nothing feels better, oh no
We don''t gotta hide, this is what you like
I admit
Nothing feels better than this.

[Verse 2:]
You say we''re just friends but I swear when nobody''s around
(You say we''re just friends but I swear when nobody''s around)
You keep my hand around your neck, we connect, are you feeling it now?
(You keep my hand around your neck, we connect, are you feeling it now?)
''Cause I am
I got so high the other night, I swear to God, felt my feet lift the ground
(I got so high the other night, I swear to God I felt my feet lift the ground)
Ooh, yeah
Your back against the wall, this is all you''ve been talking about
In my ears.

[Chorus:]
Nothing feels better than this
Nothing feels better
Nothing feels better than this
Nothing feels better, oh no
We don''t gotta hide, this is what you like
I admit
Nothing feels better than this.

[Bridge:]
Now, left, right, left, right
Take you back, lean you side to side
Like that, like that, ayy
Ooh, now, left, right, left, right
Take you back, lean you side to side
Like.

[Chorus:]
Nothing feels better than this
Nothing feels better
Nothing feels better than this
Nothing feels better, oh no
We don''t gotta hide, this is what you like
I admit
Nothing feels better than this (Better than this)

[Outro:]
Nothing feels better than this.', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'153', N'Suncity', N' Khalid; Empress Of', N'https://data.chiasenhac.com/data/cover/97/96033.jpg', N'https://audio.jukehost.co.uk/wHbJzCLGVbmnjhHhOj8rlWrQXeKhRVaP', N'
[Chorus: Khalid & Empress Of]
Llévame a ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo
Solo la ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo.

[Verse 1: Khalid]
Two days ''til I''m back on the road
And I''m onto you
I hear you calling me, so come onto me tonight
No time to be worried about what we wanna do
Just take care of me, I''ll let you take the lead.

[Pre-Chorus: Khalid & Empress Of]
Come overnight
Solo así junto a ti
Don''t let the city break your heart
Conmigo no tienes que llorar.

[Chorus: Khalid & Empress Of]
Llévame a ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo
Solo la ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo.

[Verse 2: Khalid]
No room to be falling for you without honesty
Don''t be scared of me
So where you wanna be, tonight?
It''s alright, alright for the meantime
If I have to wait, I''ll be patient babe
Coming on tonight.

[Pre-Chorus: Khalid & Empress Of]
Come overnight
Solo así junto a ti
Don''t let the city break your heart (your heart)
Conmigo no tienes que llorar.

[Chorus: Khalid & Empress Of]
Llévame a ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo
Solo la ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo.

[Bridge: Khalid]
Why you are so for me? Pick it up, pick it up
Why you are so for me? Pick it up, pick it up
Why you are so for me? Pick it up, pick it up
Why you are so for me? Pick it up, pick it up.

[Chorus: Khalid & Empress Of]
Llévame a ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo
Solo la ciudad de sol
Llévame, llévame
Donde deje mi corazón
Llévame, llévame
Llévamelo.

[Outro:]
I-I send you a lot of hugs
And, hope to see you very soon.', N'4', N'12')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'154', N'Memories', N'Maroon 5', N'https://data.chiasenhac.com/data/cover/110/109668.jpg', N'https://audio.jukehost.co.uk/JaPAfYk1SOwBNOo0ZElz0063EKib7TRM', N'
[Chorus:]
Here''s to the ones that we got
Cheers to the wish you were here, but you''re not
''Cause the drinks bring back all the memories
Of everything we''ve been through
Toast to the ones here today
Toast to the ones that we lost on the way
''Cause the drinks bring back all the memories
And the memories bring back, memories bring back you.

[Verse 1:]
There''s a time that I remember, when I did not know no pain
When I believed in forever, and everything would stay the same
Now my heart feel like December when somebody say your name
''Cause I can''t reach out to call you, but I know I will one day, yeah.

[Pre-Chorus:]
Everybody hurts sometimes
Everybody hurts someday, ayy-ayy
But everything gon'' be alright
Go and raise a glass and say, ayy.

[Chorus:]
Here''s to the ones that we got
Cheers to the wish you were here, but you''re not
''Cause the drinks bring back all the memories
Of everything we''ve been through
Toast to the ones here today
Toast to the ones that we lost on the way
''Cause the drinks bring back all the memories
And the memories bring back, memories bring back you.

[Post-Chorus:]
Doo-doo, doo-doo-doo-doo
Doo-doo-doo-doo, doo-doo-doo-doo
Doo-doo-doo-doo, doo-doo-doo
And the memories bring back, memories bring back you.

[Verse 2:]
There''s a time that I remember when I never felt so lost
When I felt all of the hatred was too powerful to stop (Ooh, yeah)
Now my heart feel like an ember and it''s lighting up the dark
I''ll carry these torches for ya that you know I''ll never drop, yeah.

[Pre-Chorus:]
Everybody hurts sometimes
Everybody hurts someday, ayy-ayy
But everything gon'' be alright
Go and raise a glass and say, ayy.

[Chorus:]
Here''s to the ones that we got
Cheers to the wish you were here, but you''re not
''Cause the drinks bring back all the memories
Of everything we''ve been through
Toast to the ones here today
Toast to the ones that we lost on the way
''Cause the drinks bring back all the memories
And the memories bring back, memories bring back you.

[Post-Chorus:]
Doo-doo, doo-doo-doo-doo
Doo-doo-doo-doo, doo-doo-doo-doo
Doo-doo-doo-doo, doo-doo-doo
Memories bring back, memories bring back you
Doo-doo, doo-doo-doo-doo
Doo-doo-doo-doo, doo-doo-doo-doo
Doo-doo-doo-doo, doo-doo-doo (Ooh, yeah)
Memories bring back, memories bring back you.

[Outro:]
Yeah, yeah, yeah
Yeah, yeah, yeah, yeah, yeah, no, no
Memories bring back, memories bring back you.', N'1', N'13')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'155', N'Señorita', N'Shawn Mendes; Camila Cabello', N'https://data.chiasenhac.com/data/cover/107/106207.jpg', N'https://audio.jukehost.co.uk/cXMlLNbr2oXrPBxmz1A2VBEOvava7Uv8', N'
[Chorus: Camila Cabello]
I love it when you call me señorita
I wish I could pretend I didn''t need ya
But every touch is ooh-la-la-la
It''s true, la-la-la
Ooh, I should be runnin''
Ooh, you keep me coming for ya.

[Verse 1: Shawn Mendes]
Land in Miami
The air was hot from summer rain
Sweat drippin'' off me
Before I even knew her name, la-la-la
It felt like ooh-la-la-la, yeah no
Sapphire moonlight
We danced for hours in the sand
Tequila sunrise
Her body fit right in my hands, la-la-la
It felt like ooh-la-la-la, yeah.

[Chorus: Camila Cabello & Shawn Mendes]
I love it when you call me señorita
I wish I could pretend I didn''t need ya
But every touch is ooh-la-la-la
It''s true, la-la-la
Ooh, I should be runnin''
Ooh, you know I love it when you call me señorita
I wish it wasn''t so damn hard to leave ya
But every touch is ooh-la-la-la
It''s true, la-la-la
Ooh, I should be runnin''
Ooh, you keep me coming for ya.

[Verse 2: Camila Cabello & Shawn Mendes]
Locked in the hotel,
There''s just some things that never change
You say we''re just friends
But friends don''t know the way you taste, la-la-la
''Cause you know it''s been a long time coming
Don''t ya let me fall, ooh
Ooh, when your lips undress me
Hooked on your tongue
Ooh, love your kiss is deadly, don''t stop.

[Chorus: Camila Cabello & Shawn Mendes]
I love it when you call me señorita
I wish I could pretend I didn''t need ya
But every touch is ooh-la-la-la
It''s true, la-la-la
Ooh, I should be runnin''
Ooh, you know I love it when you call me señorita
I wish it wasn''t so damn hard to leave ya
But every touch is ooh-la-la-la
It''s true, la-la-la
Ooh, I should be runnin''
Ooh, you keep me coming for ya.

[Outro: Camila Cabello & Shawn Mendes, Shawn Mendes]
All along I''ve been coming for ya (For you)
And I hope it means something to you
Call my name, I''ll be coming for ya
Coming for ya
For ya
For ya (Oh, she loves it when I come)
For ya
Ooh, I should be runnin''
Ooh, you keep me coming for ya.', N'1', N'14')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'156', N'24K Magic', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://audio.jukehost.co.uk/0Cb2dvW0e4lsI9W3wzU2rHVJJH23lST6', N'
[Intro:]
Tonight
I just want to take you higher
Throw your hands up in the sky
Let''s set this party off right.

[Chorus:]
Players, put yo'' pinky rings up to the moon
Girls, what y''all trying to do?
24 karat magic in the air
Head to toe so player
Uh, look out!

[Verse 1:]
Pop pop, it''s show time (Show time)
Show time (Show time)
Guess who''s back again?
Oh they don''t know? (Go on tell ''em)
Oh they don''t know? (Go on tell ''em)
I bet they know soon as we walk in (Showin'' up)
Wearing Cuban links (ya)
Designer minks (ya)
Inglewood''s finest shoes (Whoop, whoop)
Don''t look too hard
Might hurt ya''self
Known to give the color red the blues.

[Pre-Chorus:]
Ooh shit, I''m a dangerous man with some money in my pocket
(Keep up)
So many pretty girls around me and they waking up the rocket
(Keep up)
Why you mad? Fix ya face
Ain''t my fault y''all be jocking
(Keep up)

[Chorus:]
Players only, come on
Put your pinky rings up to the moon
Girls, what y''all trying to do?
24 karat magic in the air
Head to toe so player
Uh, look out!

[Verse 2:]
Second verse for the hustlas (hustlas)
Gangstas (gangstas)
Bad bitches and ya ugly ass friends (Haha)
Can I preach? (Uh oh) Can I preach? (Uh oh)
I gotta show ''em how a pimp get it in
First, take your sip (sip), do your dip (dip)
Spend your money like money ain''t shit (Whoop, whoop)
We too fresh
Got to blame it on Jesus
Hashtag blessed
They ain''t ready for me.

[Pre-Chorus:]
I''m a dangerous man with some money in my pocket
(Keep up)
So many pretty girls around me and they waking up the rocket
(Keep up)
Why you mad? Fix ya face
Ain''t my fault y''all be jocking
(Keep up)

[Chorus:]
Players only, come on
Put your pinky rings up to the moon
Hey girls
What y''all trying to do?
24 karat magic in the air
Head to toe so player
Uh, look out!

[Bridge:]
(Wooh)
Everywhere I go they be like
Ooh, so player ooh
Everywhere I go they be like
Ooh, so player ooh
Everywhere I go they be like
Ooh, so player ooh
Now, now, now
Watch me break it down like (Uh)
24 karat, 24 karat magic
What''s that sound?
24 karat, 24 karat magic
Come on now
24 karat, 24 karat magic
Don''t fight the feeling
Invite the feeling.

[Chorus:]
Just put your pinky rings up to the moon
Girls, what y''all trying to do?
24 karat magic in the air
Head to toe so player
Put your pinky rings up to the moon
Girls, what y''all trying to do? (Do)
24 karat magic in the air
Head to toe so player
(24 karat)
Uh, look out.

[Outro:]
(24 karat magic, magic, magic)', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'157', N'Chunky', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741628-19ddb61a/128/Chunky%20-%20Bruno%20Mars.mp3', N'
1. She got to shake her little something
(Shake her little something)
Throwing that thing from left, right, side to side
She got to have her own money
(She got her own money)
Shout out to the girls that pay they rent on time.

If you ain''t here to party, take your ass back home
If you getting naughty, baby, here''s my phone
Slide with your boy to the bar
Slide with your boy to the car
I''ve been searching everywhere and now here you are.

[Chorus:]
Chunky
Looking for them girls with the big old hoops
That drop it down in daisy dukes
(I wanna get down)
Yeah, I am the one, so I''m trying to recruit
I''m looking at you
Yeah, you baby.

2. Now let me hear you say you ready (I''m ready)
Girl, you better have your hair weave strapped on tight
''Cause once we can go, where we rolling
We''ll cha-cha ''til the morning
So just say alright (alright).

[Bridge:]
You got what I want (I got what you want)
You got what I need (I got what you need)
37-27-42
Squeeze all of that into my coupe
Girl, I choose you.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'158', N'Perm', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741629-a06642cc/128/Perm%20-%20Bruno%20Mars.mp3', N'
[Intro: Unnamed Man & Bruno Mars]
Now look at you, been walking in here looking all pretty and angry and mean and good
Now I know you didn''t get your hair done so you could just sit down and just sit still
Aye, we tryna have a good time tonight, let''s go over here!

[Verse 1:]
It''s my birthday
No it''s not
But I still look good though
High comb hot
I bet you want an autograph
For you and your friends
Gotta do it in the penthouse
That''s where I keep my pen.

[Pre-Hook:]
What you can''t dance? Ain''t got rhythm?
What you got a man? I don''t see you with him
Put your phone down, let''s get it
Forget your Instagram and your Twitter
Got me like woah, wait a minute
You need to take a minute
Loosen them shoulders up
Pour it up, let''s work.

[Hook:]
Throw some perm on your attitude
Girl you gotta relax, ooh
Let me show you what you got to do
You gotta lay it back
Matter of fact? Band, show her how to lay it back!
Show her how to lay it back
Show her how to lay it back
Show her how to lay it back
Alright!

[Verse 2:]
Come on baby I love you
No you don''t
You never know, I might though
Can''t say I won''t, ah
There''s that smile I''m looking for
Was that so hard?
If you ever need to smile again girl, take my card.

[Pre-Hook:]
Razzle-dazzle, never gon'' stop
What you want is what I got
You wanna get down? You gotta get up
Don''t be stingy with your big ol'' butt
You got a booty like
Woah, wait a minute
I''m just playing with you
Loosen them shoulders up
Pour it up, let''s work.

[Hook:]
Throw some perm on your attitude
Girl you gotta relax, ooh
Let me show you what you got to do
You gotta lay it back
Matter of fact? Band, show her how to lay it back!
Show her how to lay it back
Show her how to lay it back
Show her how to lay it back
Alright!

[Interlude:]
Aye, now you got it baby. You tryna have some fun tonight, you just try to follow these simple instructions, you ready?

[Bridge:]
You need activate your sexy (activate your sexy)
Silky, smooth and snap (silky, smooth and snap)
Now lean with it (lean), throw a lil sheen in it (sheen)
Then pat, pat, pat ''til it''s flat
One more time, you need activate your sexy (activate your sexy)
Silky, smooth and snap (silky, smooth and snap)
Now lean with it (lean), throw a lil sheen in it (sheen)
Then pat, pat, pat ''til it''s flat.

[Hook:]
I say it again
Throw some perm on your attitude
Girl you gotta relax, ooh
Let me show you what you got to do
You gotta lay it back
Matter of fact? Band, show her how to lay it back!
Show her how to lay it back
Show her how to lay it back
Show her how to lay it back
Alright!', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'159', N'That''s What I Like', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741630-56fcba8d/128/That_s%20What%20I%20Like%20-%20Bruno%20Mars.mp3', N'
1. I got a condo in Manhattan
Baby girl, what''s hatnin''?
You and your ass invited
So gon'' and get to clappin''
So pop it for a pimp
Pop, pop it for me
Turn around and drop it for a pimp
Drop, drop it for me
I''ll rent a beach house in Miami
Wake up with no jammies
Lobster tail for dinner
Julio serve that scampi
You got it if you want it
Got, got it if you want it
Said you got it if you want it
Take my wallet if you want it now.

Jump in the Cadillac, girl, let''s put some miles on it
Anything you want, just to put a smile on it
You deserve it baby, you deserve it all
And I''m gonna give it to you.

[Chorus:]
Gold jewelry shining so bright
Strawberry champagne on ice
Lucky for you, that''s what I like, that''s what I like
Lucky for you, that''s what I like, that''s what I like
Sex by the fire at night
Silk sheets and diamonds all white
Lucky for you, that''s what I like, that''s what I like
Lucky for you, that''s what I like, that''s what I like.

2. I''m talkin'' trips to Puerto Rico
Say the word and we go
You can be my freaka
Girl, I''ll be on fleek, ah, mamacita
I will never make a promise that I can''t keep
I promise that you''ll smile and gon'' never leave
Shopping sprees in Paris
Everything 24 carats
Take a look in that mirror
Now tell me who''s the fairest
Is it you? (is it you?) Is it me? (is it me?)
Say it''s us (say it''s us) and I''ll agree, baby.

[Bridge:]
If you say you want a good time
Well here I am baby, here I am baby
Talk to me, talk to me, talk to me
Tell me what''s on your mind
If you want it, girl come and get it
All this is here for you
Tell me baby, tell me, tell me baby
What you tryna do.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'16', N'At Least For Now', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/IYOFgc4YGkoL9XyGqblswvFRJjHc1AM8', N'I''m concerned when you look at my face
You''re excited for no reason
I look lost with a drink in my hand
What you think is fair ain''t even even
It''s cold outside from my expression
Take the scarf and wrap it around my neck
Loosen up my tie

[Chorus]
At least for now
Trying to avoid disappointment
At least for now
One finger at a time, I turn the pages, yeah

[Verse 2]
Right leg crossed while you''re smokin'' a cigarette
Camera''s on the couch, ain''t nobody takin'' pictures
Throw my arms around you, bear witness
The stripes on my shirt, can you read between the lines?
You sip champagne while I sip on red wine
Never mind me watchin'' you, never mind the tension
Please excuse me while I dance, I forgot to mention
I''m going on strike

[Chorus]
At least for now
Trying to avoid disappointment
At least for now

[Outro]
Yeah-yeah, yeah-yeah, yeah-yeah
Yeah-yeah, yeah-yeah, yeah
Yeah-yeah, yeah-yeah, yeah-yeah
At least for now, at least for now, oh', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'160', N'Versace On The Floor', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://audio.jukehost.co.uk/CgsCzdv4Ry4vgG9bsHGHDby8dmCYNs3L', N'
1. Let''s take our time tonight, girl
Above us all the stars are watchin''
There''s no place I''d rather be in this world
Your eyes are where I''m lost in
Underneath the chandelier
We''re dancin'' all alone
There''s no reason to hide
What we''re feelin'' inside
Right now.

So, baby, let''s just turn down the lights
And close the door
Oooh I love that dress
But you won''t need it anymore
No, you won''t need it no more
Let''s just kiss ''til we''re naked, baby.

[Chorus:]
Versace on the floor
Oooh take it off for me, for me, for me, for me now, girl
Versace on the floor
Oooh take it off for me, for me, for me, for me now, girl.

2. Now I unzip the back to watch it fall
While I kiss your neck and shoulders
No, don''t be afraid to show it all
I''ll be right here ready to hold you
Girl, you know you''re perfect from
Your head down to your heels
Don''t be confused by my smile
''Cause I ain''t ever been more for real, for real.

[Bridge:]
It''s warmin'' up
Can you feel it?
It''s warmin'' up
Can you feel it?
It''s warmin'' up
Can you feel it, baby?
It''s warmin'' up
Oh, seems like you''re ready for more, more, more
Let''s just kiss ''til we''re naked.

[Outro:]
Versace on the floor
Floor
Floor.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'161', N'Straight Up And Down', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741632-244c0bb6/128/Straight%20Up%20And%20Down%20-%20Bruno%20Mars.mp3', N'
[Verse 1:]
Girl I bet your momma named you good lookin''
''Cause you sure look good to me
My attention, oh, yes, you just took it
You''re probably the finest thing that I ever seen
And nobody at the party droppin'' it low like the way that you do
You got me sayin'', "Damn girl, break it down for me".

[Pre-Chorus:]
Take it nice and slow, let me watch while you turn around
Just back it up on me girl, right now, right now.

[Chorus:]
I got your body rockin'' side to side (Straight up!)
I put you on and now you''re feelin'' right (Straight up!)
I know exactly what is on your mind (Straight up!)
Oh baby we gon'' have some fun tonight
Straight up and down
(Straight up, straight up, straight up)
Straight up and down
(Straight up, straight up, straight up)
Oh I know exactly what is on your mind
Oh baby we gon'' have some fun tonight
Straight up and down.

[Verse 2:]
This liquor got both of us faded, so gone, so gone, so gone
But your booty deserve a celebration
And I''m gonna celebrate it all night long
Come on here and show me why you got the whole club starin'' at you
You got me sayin'', "Damn girl, break it down for me".

[Pre-Chorus:]
Take it nice and slow, let me watch while you turn around
Just back it up on me girl, right now, right now.

[Chorus:]
I got your body rockin'' side to side (Straight up!)
I put you on and now you''re feelin'' right (Straight up!)
I know exactly what is on your mind (Straight up!)
Oh baby we gon'' have some fun tonight
Straight up and down
(Straight up, straight up, straight up)
Straight up and down
(Straight up, straight up, straight up)
Oh I know exactly what is on your mind
Oh baby we gon'' have some fun tonight
Straight up and down.

[Bridge:]
Girl tell me when you''re ready
Ready to go
Just say the word
And then we''ll take this home
Don''t you fight the feelin''
''Cause I feel it too
Freakin'' me baby, while I''m freakin'' you.

[Chorus:]
I got your body rockin'' side to side (Straight up!)
I put you on and now you''re feelin'' right (Straight up!)
I know exactly what is on your mind (Straight up!)
Oh baby we gon'' have some fun tonight
Straight up and down
(Straight up, straight up, straight up)
Straight up and down
(Straight up, straight up, straight up)
Oh I know exactly what is on your mind
Oh baby we gon'' have some fun tonight
Straight up and down.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'162', N'Calling All My Lovelies', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741633-d88c78ac/128/Calling%20All%20My%20Lovelies%20-%20Bruno%20Mars.mp3', N'
[Verse 1:]
I got too many girls on hold for you to be so bold
Too many on my team for you to act so mean
You say you wanna go and have fun, well you ain''t the only one
If I ring, don''t let it ring too long or I''m gone.

[Pre-Chorus:]
I got Alicia waitin'', Aisha waitin''
All the eesha''s waitin'' on me
So why you contemplatin''? Playa hatin''?
If this is how it''s gonna be.

[Chorus:]
I''m calling all my lovelies (calling all my lovelies)
''Cause I can''t get a hold of you
Since you ain''t thinking of me (since you ain''t thinking of me)
Oh, look what you making me do.

[Verse 2:]
Honey pie, I''m far too fly to be on standby
Sendin'' me straight to voicemail, suga, what the hell?
Oh, you ought to be ashamed, playin'' these childish games
I don''t get down like that, tell me where you at, hit me back.

[Pre-Chorus:]
I got Alicia waitin'', Aisha waitin''
All the eesha''s waitin'' on me
So why you contemplatin''? Playa hatin''?
If this is how it''s gonna be.

[Chorus:]
I''m calling all my lovelies (calling all my lovelies)
''Cause I can''t get a hold of you
Since you ain''t thinking of me (since you ain''t thinking of me)
Oh, look what you making me do.

[Bridge:]
Pick up the phone, pick up the phone
''Cause all this loving needs a home
Oh no, look at what you started, baby
Now I''m left here broken hearted, baby
There''s a pain in my chest I cannot explain
I told myself I wasn''t gon'' cry
But somebody''s gotta come dry these eyes ''cause.

Hi you''ve reached Halle Berry. Sorry you can''t get to the phone right now but if you leave your name and number, I''ll get right back to you *mwah*.

[Chorus:]
I''m calling calling calling calling all my lovelies
''Cause I can''t get a hold of you
Oh, since you ain''t thinking of me (since you ain''t thinking of me, baby)
Look what you making me do.

[Outro:]
Pick up the phone, pick up the phone
''Cause all this loving needs a home, oh.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'163', N'Finesse', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741634-e055304c/128/Finesse%20-%20Bruno%20Mars.mp3', N'
[Verse 1:]
Ooh, don''t we look good together?
There''s a reason why they watch all night long
Yeah, know we''ll turn heads forever
So tonight I''m gonna show you off.

[Pre-Hook:]
When I''m walkin'' with you
I watch the whole room change
Baby, that''s what you do
No my baby don''t play
Blame it on my confidence
Oh, blame it on your measurements
Shut that shit down on sight
That''s right.

[Hook:]
We out here drippin'' in finesse
It don''t make no sense
Out here drippin'' in finesse
You know it, you know it
We out here drippin'' in finesse
It don''t make no sense
Out here drippin'' in finesse
You know it, you know it.

[Verse 2:]
Now slow it down for me baby
''Cause I love the way it feels when we grind
Yeah, our connection''s so magnetic on the floor
Nothing can stop us tonight.

[Pre-Hook:]
When I''m walkin'' with you
I watch the whole room change
Baby, that''s what you do
No my baby don''t play
Blame it on my confidence
Oh, blame it on your measurements
Shut that shit down on sight
That''s right.

[Hook:]
We out here drippin'' in finesse
It don''t make no sense
Out here drippin'' in finesse
You know it, you know it
We out here drippin'' in finesse
It don''t make no sense
Out here drippin'' in finesse
You know it, you know it.

[Bridge:]
Fellas grab your ladies if your ladies fine
Tell her she the one, she the one for life
Ladies grab your fellas and let''s do this right
If you''re on one like me in mind
Yeah we got it goin'' on, got it goin'' on
Don''t it feel so good to be us, ay?
Yeah we got it goin'' on, got it goin'' on
Girl we got it goin'' on
Yeah we got it goin'' on, got it goin'' on
Don''t it feel so good to be us, ay?
Yeah we got it goin'' on, got it goin'' on.

[Hook:]
We out here drippin'' in finesse
It don''t make no sense
Out here drippin'' in finesse
You know it, you know it
We out here drippin'' in finesse
It don''t make no sense
Out here drippin'' in finesse
You know it, you know it.

[Outro:]
Yeah we got it goin'' on, got it goin'' on
Don''t it feel so good to be us, ay?
Yeah we got it goin'' on, got it goin'' on
You know it, you know it
Yeah we got it goin'' on, got it goin'' on
Don''t it feel so good to be us, ay?
Yeah we got it goin'' on, got it goin'' on
You know it, you know it.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'164', N'Too Good To Say Goodbye', N'Bruno Mars', N'https://data.chiasenhac.com/data/cover/66/65447.jpg', N'https://data3.chiasenhac.com/downloads/1742/4/1741635-aa781c04/128/Too%20Good%20To%20Say%20Goodbye%20-%20Bruno%20Mars.mp3', N'
[Verse 1:]
I''ve made mistakes
I could have treated you better
I let you get away
There goes my happily ever after.

[Pre-Chorus:]
Tell me why, why can''t we try and start again?
This can''t be how our story ends
You''re more than my girl, you''re my best friend
Tell me you remember when
Oooh, I was your man and you were my girl
It was you and me against the world.

[Chorus:]
Baby, ain''t nobody gonna love me like the way you do
And you ain''t never gonna find a love like mine
Tell me what can I do to make it up to you?
''Cause what we got''s too good to say goodbye, goodbye.

[Verse 2:]
Yeah, I''m still in love with you darlin''
I know you feel the same
Oh, what''s the point of both of us being broken hearted?
I pray it''s never too late.

[Pre-Chorus:]
So tell me, why, why can''t we try and start again?
This can''t be how our story ends
You''re more than my girl, you''re my best friend
Tell me you remember when
I was your man and you were my girl
It was you and me against the world.

[Chorus:]
Baby, ain''t nobody gonna love me like the way you do
And you ain''t never gonna find a love like mine
Tell me what can I do to make it up to you?
''Cause what we got''s too good to say goodbye, goodbye.

[Bridge:]
(Oh, don''t you give up)
Girl won''t you listen?
(Oh, don''t you give up)
It''s you that I''m missin''
(Oh, don''t you give up)
Take my hand, I wanna go, I wanna go
(All the way)
If we''re gonna fight this fight for better days
I know we''re gonna make it
This is the chance, let''s take it.

[Chorus:]
Baby, ain''t nobody gonna love me like the way you do
(No, no, no, no)
And you ain''t never gonna find a love like mine
(Oh, tell me)
Tell me what can I do to make it up to you?
''Cause what we got''s too good to say goodbye
(Come on, come on) goodbye (Oh baby, baby)
Baby, ain''t nobody gonna love me like the way you do
And you ain''t never gonna find a love like mine
(Oh, tell me)
Tell me what can I do to make it up to you?
''Cause what we got''s too good to say goodbye, goodbye.', N'4', N'15')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'165', N'Don''t Waste My Time', N'Lil Wuyn; 16 Typh', N'https://data.chiasenhac.com/data/cover/128/127212.jpg', N'https://audio.jukehost.co.uk/Znvc9wF52T5VnmnjxzX0MsD7XFlqdc0s', N'
Wake up, wake up
Pick it up ,and go
Spend time for working
Không nhiều lời nói, no
Thời gian đang cháy như là paper
Rolling the weed cooling down
Kẻ thù xung quanh tao là mây mờ
Hello hater see you later
Mặc mày mạt sát,fuck
Vì vẫn còn bơi trong đống công việc
Từ vạch xuất phát
Lao thẳng về đích như là rocket
Nếu có dự án thì đem tới (work)
Lãng phí thời gian thì không ham (no)
Tiếp thu giao lưu và đổi mới (yes)
Liên kết từ bắc vào trong nam and we bang
Vẫn còn khao khát với cái thứ mà tao đang
Nhiều lần ngao ngán vì lan man làm gian nan
Damn ,fuck cho nó sang trang
Gạt đi hết mấy chuyện không đáng
Lo cho việc chi, và thu
Keep calm and follow the rules
Working hard trong phòng thu
24/7 for 24K yah
Jagermeister đang trên tay yah
All the gang bay trên mây yah
Feeling right on my way ah
Feeling high on my stage
Có ,16 từ northside đến đây
95 từ southside we bang
Từng, phút giây là vàng
If you don''t know
So, don''t waste my time
Don''t waste my time(×3)
You don''t waste my time
Don''t waste my time(×3)
You don''t waste my time

Hustle,hustle, all day long
Flexing, making money ,more
Hustle, hustle, all day long
Flexing, making..

I got my dream on the V-12
Fixing my flow on the details
Airplane take off close the seatbelt
No phone no text no email
Mấy em gái xinh thì đòi đi theo
Kiếm thêm mối hàng xong rồi resell
Từng câu tao nói đều có uy tín
Fake ass fake G đừng có kì kèo
My verse still lit
Và tụi mày biết đó là 16
Your talk so cheap
Mấy thằng bợ đít để được nhích lên
Don''t waste mah time
Chỉ một đường đi thẳng tới đích đến
Don''t need no drama
Tao ghi tên mình vào trong big game

Nhạc tao chỉ có freaking dope
And start from the fucking low
Các em ở dưới twerking butt
I steal mother fucking show
95 cùng với cả 16 (north)
Hustle từ bắc cho tới nam (south)
Gia đình homies và công việc
Cộng một tình yêu cùng với rap
Quá nhiều thời gian ở sân bay
Điện thoại không cần dùng vân tay
Chẳng cần chiêu trò để nổi tiếng
Lời nhạc của tao nó vẫn bay
Thời gian của tao nó là vàng
Lời nói của tao nó là vàng
Ngày càng có thêm nhiều dự án
Bắt tay rồi cứ thế mà làm
Yah, don''t waste my time
Don''t waste my time(×2)
You don''t waste my time
Don''t waste my time(×3)', N'3', N'16')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'166', N'Self Love', N'Lil Wuyn; 16 Typh', N'https://data.chiasenhac.com/data/cover/128/127212.jpg', N'https://audio.jukehost.co.uk/22qtM2iWgNwyXmeOXiaAIdwuKSGEyPr0', N'
$elf Love
I Dont Need No Love
$elf Love
Just Want To Roll Up
The Paper
Everyday Grow Up
Jager
Pour it in my cup

Đêm dài
Rót rót thêm nữa vào
Chẳng nghĩ suy nửa vời
Nghe hoài
Những thứ không đáng tin
Chỉ Khiến Tao chán thêm
Bên ngoài
Vẫn cứ soi mói và
kiếm cách để lấm lem
But Yeah Right
They Can’t kill my vibe
Pull up with 95

Marijuana like legal (mary)
Trippin all day on my ego (trip)
Trapping so hard like Migos (brrr)
Chảy trong máu tao là hiphop (real)
Marijuana like legal (smoke)
Spread all the love for my people (love)
Bước trong cuộc đời nhiều cạm bẫy (trap)Tao đã nhìn thấy Lòng tham trỗi dậy như là devil


Do it for my fam more than *do it for the fame * Family
Cố gắng tránh để tham vọng này khiến phía trước rối ren
Có những khi trắng đêm cùng giọt đắng vẫn cứ đắng thêm
But nothing gonna stop me im running in this game

And I
Going Hard
Everyday
On My Way
* Pray *
Marijane
Heavy Chains
All I Want
* Pay *
Why Wait ?
Why Not ?
Find The Ways
Today
Never mind what haters say all my life


$elf Love
I Dont Need No Love
$elf Love
Just Want To Roll Up
The Paper
Everyday Grow Up
Jager
Pour it in my cup


16 da hood is callin’ gang
Im on my way to the ballin’ game
Forget her name after morning (uhm)
Người Việt chất như là Johnny Dang
16 da hood is callin’ gang (gang)
Im on my way to the ballin’ game
Làm m phật ý? vậy thì sorry man
Tao chỉ đang kiếm thêm nhiều polyme
Sống đời của t, làm việc của t, 1 đời ngẩng cao man
Xuất thân của tao, 1 niềm tự hào gửi đến H-Town manTrải qua biết bao phen
có thêm biết bao fan
Thành công đằng trước, bắt đầu từng bước, lets do it now man! (do it)', N'3', N'16')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'167', N'Pray', N'Lil Wuyn; 16 Typh; Sol Goku', N'https://data.chiasenhac.com/data/cover/128/127212.jpg', N'https://audio.jukehost.co.uk/Oxj2iyVmk9eb6iklRjjqBZVnBSYEfZZ4', N'
Intro:
Nắng lên một ngày mới buông đi bao nghĩ ngợi
Màn đêm kia sẽ tới để cho người về nghỉ ngơi,
Người đang thay áo mới để kịp giờ đi chơi

16Typh
Mỗi ngày 1 câu chuyện yah
Luôn mỉm cười và đối diện yah
Chăm chỉ và cầu tiến
Nhưng k quên cầu nguyện (pray)
Mong cho mọi việc tốt hơn (bless)
Mong tụi nhỏ đc chốt đơn (lên đơn)
Mong 16 luôn giữ chất (dope)
Còn cái tên thì mỗi ngày 1 lớn (16)
Nên t vẫn cho đi mà k cần nhận lại
Vẫn cứ nhẫn nại và sẵn sàng nhận sai
Vẫn còn nghiện rap mà cũng chẳng cần cai
Vẫn 1 chữ real từ trong cái thần thái
Thắp 1 nén ban thần tài
Cuốn thêm điếu * dài (smoke)
Nhắc bản thân sống chậm lại
bình an cho những ng cầm tài
Cầu cho gia đình luôn khoẻ mạnh (an toàn)
Cầu cho dịch bệnh mau qua đi (đi)
May mắn vì có em bên cạnh (love)
Sống những ngày tháng không lãng phí (waste)
Cầu cho gia đình luôn khoẻ mạnh (bình
Cầu cho thien tai mau qua đi (đi)
Vẫn luôn có anh em bên cạnh (gang)
Sống cùng tuổi trẻ không lãng phí

Hook
I Say
Pray for the people
Pray for my life
Pray for my fam
Yeah im Praying all the night (x2)

Ta cầu
Cầu xin đấng bề trên
Xin người soi
Sáng suốt những con đường
Và ta cầu
Bình an chốn lầm than
Còn bao người đang
Hoang mang với gian nan

Sol

Cơn giông tố đó nổi lên hoài
Còn ai lang thang đâu đó đang đội mưa gió ở bên ngoài
Bề trên, ngài sẽ tới trao tình yêu đến muôn loài
Và trong đêm tối ánh sáng ấy luôn soi
Anh mong cầu hạnh phúc cho gia đình
Những tờ giấy nhiều con số và hình
Mong cho AE luôn thân tình
Như mình yêu chính bản thân mình
Cuộc đời ae mình đang sống
Có người đang lạnh người đang nóng
Có người bao lâu vẫn trông ngóng
4 mùa xuân hạ rồi đông qua
Đốt nhang cho Ông Bà
Cầu cho tất cả đều được mùa
Để ae mang lúa này về nhà
Có người đang chăn ấm,
Còn ai đang mong giờ tan tầm,
Con hướng về Đức Mẹ Quan Âm
Ở Trong mọi tình huống luôn an tâm

Hook
I Say
Pray for the people
Pray for my life
Pray for my fam
Yeah im Praying all the night (x2)

Ta cầu
Cầu xin đấng bề trên
Xin người soi
Sáng suốt những con đường
Và ta cầu
Bình an chốn lầm than
Còn bao người đang
Hoang mang với gian nan', N'3', N'16')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'168', N'Trên Tình Bạn Dưới Tình Yêu', N'Min', N'https://data.chiasenhac.com/data/cover/131/130327.jpg', N'https://audio.jukehost.co.uk/G8gro6atAAkmytk7LjJC70d15buGZR1H', N'
Ta biết nhau từ lâu rồi
Ta hiểu từng thói quen của nhau
Tuy không phải người yêu với nhau
Ta vẫn hơn là bạn

Ta biết nhau luôn nghĩ gì
Không cần phải nói ra làm chi
Câu chuyện này cứ như vậy đi
Vẫn tiếc thêm làm gì

Mình bên nhau giống như người yêu
Nhìn nhau giống như người yêu
Dù không phải là tình yêu
Nhưng chắc chắn không phải tình bạn

Dù có lẽ sẽ không dài lâu
Nhưng ta sẽ thật đậm sâu
Mối tình này không cần định nghĩa gì đâu

[ĐK:]
Đôi ta ở trên tình bạn, ở dưới tình yêu
Được vui biết bao nhiêu khi có người nuông chiều
Đôi ta ở trên tình bạn, ở dưới tình yêu
Được vui biết bao nhiêu khi có người thấu hiểu

Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Rất nhiều Rất nhiều Rất nhiều

Không biết mai dù thế nào
Câu chuyện này diễn ra làm sao
Nhưng mà một khi đã đâm lao
Ta cứ theo làm nào

Không thiết tha về sau này
(sau này sau này)
Khi cuộc đời bước sang một trang
Nếu một ngày chúng ta dở dang
Ta cũng không cần rõ ràng
(Đúng rồi)

Mình bên nhau giống như người yêu
Nhìn nhau giống như người yêu
Dù không phải là tình yêu
Nhưng chắc chắn không phải tình bạn

Dù có lẽ sẽ không dài lâu
Nhưng ta sẽ thật đậm sâu
Mối tình này không cần định nghĩa gì đâu

Đôi ta ở trên tình bạn, ở dưới tình yêu
Được vui biết bao nhiêu khi có người nuông chiều
Đôi ta ở trên tình bạn, ở dưới tình yêu
Được vui biết bao nhiêu khi có người thấu hiểu

Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Rất nhiều Rất nhiều Rất nhiều

Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Rất nhiều Rất nhiều Rất nhiều
Okey okey

Có lẽ sẽ rất buồn khi một ai trong hai chúng ta
Gặp một ai rồi yêu thiết tha, vậy là đôi ta cách xa
Nhưng sẽ không bao giờ ta quên đi khoảnh khắc có nhau
Và ta thầm cảm ơn vì ta đã từng có trong đời nhau

Đôi ta ở trên tình bạn, ở dưới tình yêu
Ye ye
Được vui biết bao nhiêu khi có người nuông chiều
Ye ye
Đôi ta ở trên tình bạn, ở dưới tình yêu
Ye ye
Được vui biết bao nhiêu khi có người thấu hiểu

Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Rất nhiều Rất nhiều Rất nhiều

Không phải người yêu mà vui hơn rất nhiều
Yah
Không phải người yêu mà vui hơn rất nhiều
Yah
Rất nhiều Rất nhiều Rất nhiều', N'1', N'17')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'169', N'em bỏ hút thuốc chưa?', N'Bích Phương, traitimtrongvang', N'https://upload.wikimedia.org/wikipedia/vi/d/d9/Tam_trang_tan_hoi_cham_mot_chut.jpg', N'https://audio.jukehost.co.uk/ZfEmouqKvPer6E3bMFyQVpx3IY8d3Ezm', N'
Em lâu nay ra sao?
Đang yêu ai quen ai?
Anh nhìn em trông gầy hơn trước đấy
Anh cứ thắc mắc mãi
Sao nghe câu chia tay
Em bình tâm như người đi trên dây
Bởi vì anh luôn nghĩ em ở đó, luôn ở đó
Mà trong khi em biết anh thì muốn được tự do
Đến khi nào anh mới bớt suy nghĩ nhở?
Đến khi nào em mới biết bỏ thuốc nhở?
Người mà em yêu em còn chia tay được theo anh thuốc lá đã là gì?
Thì chẳng qua em đang chưa muốn thôi anh, anh đâu cần quan tâm làm gì
Đừng bận lòng rồi thức khuya
Chỉ là vài dòng nhắn tin
Cần gì lạnh lùng như thế?
Vài dòng vu vơ hay thật ra anh đang cô đơn nên nhắn tin giờ này?
Đúng anh đang cô đơn
Biết bao đêm anh mơ, mơ về em nghĩa là gì hả em?
Giấc mơ hay lặp lại
Tối đen con đường về, anh và em đang cười đùa trên xe
Thực ra anh đang nhớ em hay chỉ nhớ một cảm giác?
Tại sao anh yêu biết bao người mà vẫn không hiểu tình yêu?
Đến khi nào anh mới bớt suy nghĩ nhở?
Đến khi nào em mới biết bỏ thuốc nhở?
Người mà em yêu em còn chia tay được theo anh thuốc lá đã là gì?
Thì chẳng qua em đang chưa muốn thôi anh, anh đâu cần quan tâm làm gì
Điều mình cần phải nói ra
Một sự thật là chúng ta
Chẳng còn gì ngoài quá khứ
Ngày còn yêu sao không lo lắng cho nhau, chia tay rồi quan tâm làm gì?', N'1', N'18')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'17', N'Yummy (Summer Walker Remix)', N'Justin Bieber; Summer Walker', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/Zwdg3pgvnl968li7EmHSvRaB34akQxUj', N'Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
Any night, any day
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
In the mornin'' or the late
Say the word, on my way.

[Verse 1: Justin Bieber]
Bona fide stallion
Ain''t in no stable, no, you stay on the run
Ain''t on the side, you''re number one
Yeah, every time I come around, you get it done.

[Pre-Chorus: Justin Bieber]
Fifty-fifty, love the way you split it
Hundred racks, help me spend it, babe
Light a match, get litty, babe
That jet set, watch the sunset kinda, yeah, yeah
Rollin'' eyes back in my head, make my toes curl, yeah, yeah.

[Chorus: Justin Bieber & Summer Walker]
Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum (Yummy), that yummy-yum (Yummy), that yummy-yummy (Yummy)
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
Any night, any day (Any day)
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe
In the mornin'' or the late
Say the word, on my way.

[Verse 2: Summer Walker]
You already know I got it
Can''t keep flexin'' on you when you can''t stop this
You already know you want this
If you talkin'', then you ain''t doin'' nothin''
Oh, and your hands on my body
In the a.m. or p.m., you get what needed from me
Sugar, honey, so sweet
I got that yum-yum, I got that yum-yum.

[Chorus: Justin Bieber & Summer Walker]
Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy (You stay flexin'' on me)
Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
Any night, any day (Any day)
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
In the mornin'' or the late
Say the word, on my way.

[Bridge: Justin Bieber]
Hop in the Lambo'', I''m on my way
Drew House slippers on with a smile on my face
I''m elated that you are my lady
You got that yum, yum, yum, yum
You got that yum, yum-yum, woah
Woah-ooh.

[Chorus: Justin Bieber & Summer Walker]
Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum, that yummy-yum, that yummy-yummy
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
Any night, any day (Any day)
Say the word, on my way
Yeah, babe, yeah, babe, yeah, babe (Yeah, babe)
In the mornin'' or the late
Say the word, on my way.', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'170', N'Một Cú Lừa', N'Bích Phương', N'https://upload.wikimedia.org/wikipedia/vi/d/d9/Tam_trang_tan_hoi_cham_mot_chut.jpg', N'https://audio.jukehost.co.uk/Nb1DDlayscye5hvMquDqdC5PkYeYQQfm', N'
Vậy là tròn một năm bên nhau
Ngọt ngào rực rỡ như đang được sống lại tình đầu
Người ta cứ khen anh đa tình đến thế
Mà sao lúc yêu em si tình đến thế?
Bọn mình thật hợp mà phải không anh ơi?
Một người ưa nói như em lại thích người kiệm lời
Người mà lúc bên em hay ở bên ai
Thì cũng tắt chuông điện thoại
Lúc anh chạm môi cô ta anh có ngần ngại?
Có ngần ngại không hay miên man nhớ mãi?
Trả lời đi hương nước hoa thơm mùi gì len giữa chúng ta?
Em trao anh con tim sao anh trao cho em...
Một cú lừa
La la la la là lừa
La la la la là lừa
La la la la là lừa
Nào là mình đừng buông tay ra
Nào là anh ước hai ta rồi sẽ về một nhà
Người ta cứ khen anh đa tình đến thế
Mà sao lúc yêu em si tình...
Một người phải vờ như ngây thơ
Một người nói dối quá tồi
Tình yêu với em như ngôi đền thiêng liêng
Giờ em chẳng muốn cầu nguyện
Biết đâu được hai ta sớm có kết cục buồn?
Nỗi đau này em đưa cho cơn gió cuốn
Điều gì xảy ra với em mong rằng đừng xảy ra với anh
Thôi ta chia tay đi nhưng riêng em sẽ không...
Phải tiếc gì
La la la la là lừa
La la la la là lừa
La la la la là lừa
Lúc anh chạm môi cô ta anh có ngần ngại?
Có ngần ngại không hay miên man nhớ mãi?
Điều gì đã quyến rũ anh? Ôi điều gì đã đánh cắp anh?
Em trao anh con tim sao anh trao cho em...
Biết đâu được hai ta sớm có kết cục buồn? (Kết thúc hai ta đã không còn nhau)
Nỗi đau này em đưa cho cơn gió cuốn (Kết thúc hai ta đã quá buồn)
Điều gì xảy ra với em mong rằng đừng xảy ra với anh
Em trao anh con tim sao anh trao cho em...
Một cú lừa
La la la la là lừa
La la la la là lừa
La la la la là lừa', N'1', N'18')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'171', N'từ chối nhẹ nhàng thôi', N'Bích Phương, Phúc Du', N'https://upload.wikimedia.org/wikipedia/vi/d/d9/Tam_trang_tan_hoi_cham_mot_chut.jpg', N'https://audio.jukehost.co.uk/a3LKeU7UFlvppPiKd6lKXByog4D1sqcI', N'
Tình cảm này khó nói
Nếu thật sự chẳng thể giấu nữa
Thôi đừng lo em hứa
Rằng sẽ từ chối anh nhẹ nhàng
Tình cảm này khó nói
Nếu thật sự chẳng thể né tránh
Nói thật nhanh đi anh
Để em từ chối anh nhẹ nhàng thôi
Ta thường mơ về một thoáng chốc được bên nàng
Tâm hồn say lạc giữa thành phố một đêm vàng
Dưới ánh đèn đường hiu hắt, tương tư văng vẳng không im
Nàng chỉ gửi một ánh mắt, ta đã trao cả con tim
Giữa biển người nhưng anh chỉ có em trong mắt
Giữa một rừng thanh âm chỉ nghe thấy tiếng em trong vắt
Đêm xuống, tâm tư anh là nhà giam
Với nỗi nhớ về em là song sắt
Nhưng tình cảm đâu phải nhành cây, nên nó đâu có dễ?
Ta như vai áo em buông, bởi vì ta quá trễ
Giờ đến và cướp em đi, là điều ta không được làm
Vì sợi tơ hồng đang buộc ta, nó lại không buộc nàng
Nên nếu em không thể đưa ra lựa chọn
Thì xin em hãy sớm đẩy anh đi xa
Nếu bờ môi ấy không thể cho anh vị ngọt
Thì em hãy để nó buông cho anh lời vị tha
Ở bên anh em thấy trái tim thổn thức cứ không thể dứt, babe
Nhưng ta không nên xem chương tiếp theo
Vì chuyện tình này có kết cục buồn
Mà em không mong muốn thấy anh buồn bã thế đâu dừng bước đi anh
Đôi khi em bâng khuâng khi nghĩ rằng
Sự thật là mình không thể bên nhau
Tình cảm thật khó nói
Em nhìn anh mà lòng bối rối
Muộn màng rồi anh ơi
Bởi vì người đến sau mất rồi
Vào một ngày nắng tắt
Lỡ nhận trao nhầm một ánh mắt
Cô là người đáng trách
Kẻ tình si đáng quên lại là anh
Anh vẫn cần em nhiều lắm
Như một rừng cây ở giữa trời đông đang cần một chiều nắng
Nàng lạnh lùng như tảng băng trôi, khi ở xa mà ta nhìn ngắm
Anh đâu phải Titanic sao cứ gặp em là anh chìm đắm?
Ta đã cố tìm cách khác nhưng nó không nằm trong sách vở
Cách duy nhất mà ta có dường như chỉ là cách trở
Em như là một cơn nghiện vẫn dày vò anh nhiều quá
Nàng đã cho ta có cửa nhưng sao lại tiếc cái chìa khóa?
Vì thương nàng nên giấc không yên, ta vẫn chẳng thể nào ngủ
Lí trí là đứa nhân viên vì nó thật khó để làm chủ
Đếm từng ngày xa lòng ta nặng nề như đá đổ
Anh mang tình cảm lớn người ta bảo là quá khổ
Không có nơi nào có thể là vườn địa đàng
Nếu như nơi đó em không thể ở gần anh
Anh chẳng muốn nghe một lời từ chối nhẹ nhàng
Hãy cho hi vọng của anh một cái chết thật nhanh
Tình cảm thật khó nói
Em nhìn anh mà lòng bối rối
Muộn màng rồi anh ơi
Bởi vì người đến sau mất rồi
Vào một ngày nắng tắt
Lỡ nhận trao nhầm một ánh mắt
Cô là người đáng trách
Kẻ tình si đáng quên lại là anh
Người có thể hờn trách em khi mà em luôn thức đêm bỏ mặc anh trong giấc mơ
Ngày hay đêm vẫn mơ
Hoặc có thể quên lãng em khi mà em không dắt tay anh vào trong nơi trái tim
Bỏ mặc anh đứng im
Tình cảm này khó nói
Nếu thật sự chẳng thể giấu nữa
Thôi đừng lo em hứa
Rằng sẽ từ chối anh nhẹ nhàng
Tình cảm này khó nói
Nếu thật sự chẳng thể né tránh
Nói thật nhanh đi anh
Để em từ chối anh nhẹ nhàng thôi
Để em từ chối anh nhẹ nhàng thôi', N'1', N'18')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'172', N'Một Cú Lừa (Đu Đưa Version)', N'Bích Phương', N'https://upload.wikimedia.org/wikipedia/vi/d/d9/Tam_trang_tan_hoi_cham_mot_chut.jpg', N'https://audio.jukehost.co.uk/lFPeW7EhwRsoHG6eOzHl27byxpC0IS6e', N'
Vậy là tròn một năm bên nhau
Ngọt ngào rực rỡ như đang được sống lại tình đầu
Người ta cứ khen anh đa tình đến thế
Mà sao lúc yêu em si tình đến thế?
Bọn mình thật hợp mà phải không anh ơi?
Một người ưa nói như em lại thích người kiệm lời
Người mà lúc bên em hay ở bên ai
Thì cũng tắt chuông điện thoại
Lúc anh chạm môi cô ta anh có ngần ngại?
Có ngần ngại không hay miên man nhớ mãi?
Trả lời đi hương nước hoa thơm mùi gì len giữa chúng ta?
Em trao anh con tim sao anh trao cho em...
Một cú lừa
La la la la là lừa
La la la la là lừa
La la la la là lừa
Nào là mình đừng buông tay ra
Nào là anh ước hai ta rồi sẽ về một nhà
Người ta cứ khen anh đa tình đến thế
Mà sao lúc yêu em si tình...
Một người phải vờ như ngây thơ
Một người nói dối quá tồi
Tình yêu với em như ngôi đền thiêng liêng
Giờ em chẳng muốn cầu nguyện
Biết đâu được hai ta sớm có kết cục buồn?
Nỗi đau này em đưa cho cơn gió cuốn
Điều gì xảy ra với em mong rằng đừng xảy ra với anh
Thôi ta chia tay đi nhưng riêng em sẽ không...
Phải tiếc gì
La la la la là lừa
La la la la là lừa
La la la la là lừa
Lúc anh chạm môi cô ta anh có ngần ngại?
Có ngần ngại không hay miên man nhớ mãi?
Điều gì đã quyến rũ anh? Ôi điều gì đã đánh cắp anh?
Em trao anh con tim sao anh trao cho em...
Biết đâu được hai ta sớm có kết cục buồn? (Kết thúc hai ta đã không còn nhau)
Nỗi đau này em đưa cho cơn gió cuốn (Kết thúc hai ta đã quá buồn)
Điều gì xảy ra với em mong rằng đừng xảy ra với anh
Em trao anh con tim sao anh trao cho em...
Một cú lừa
La la la la là lừa
La la la la là lừa
La la la la là lừa', N'1', N'18')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'173', N'Gác Lại Âu Lo', N'Da LAB', N'https://data.chiasenhac.com/data/cover/125/124649.jpg', N'https://audio.jukehost.co.uk/BOjphQpHctWEDpIoqOrpBV6ECNRWVRkv', N'
Anh đi lạc trong sóng gió cuộc đời
Nào biết đâu sớm mai liệu bình yên có tới
Âu lo chạy theo những ánh sao đêm
Ngày cứ trôi chớp mắt thành phố đã sáng đèn
Ta cứ lặng lẽ chạy thật mau
Yêu thương chẳng nói kịp thành câu
Biết đâu liệu mai còn thấy nhau
Thức giấc để anh còn được thấy
Ánh mắt của em nhẹ nhìn anh
Đôi tay này sẽ không xa rời
Tạm gác hết những âu lo lại
Cùng anh bước trên con đường
Ta sẽ không quay đầu
Để rồi phải tiếc nuối những chuyện cũ đã qua
Giữ trái tim luôn yên bình
Và quên hết những ưu phiền vấn vương
Cuộc đời này được bao lần nói yêu
Anh biết nơi để quay về
Em biết nơi phải đi
Anh biết chỗ trú chân dọc đường
Để tránh cơn mưa hạ đến mỗi chiều
Ta biết trao nhau ân cần
Biết mỗi khi vui buồn có nhau
Thời gian để ta trưởng thành với nhau
Nhảy với anh đến khi đôi chân rã rời
Hát anh nghe những câu ca từ ngày xưa cũ
Thì thầm khẽ anh nghe em vẫn còn bao niềm mơ
Ôm lấy anh nghe mưa đầu mùa ghé chơi
Một giây không thấy nhau
Như một đời cô đơn quá
Trời mù mây bỗng nhiên ngát xanh
Khi em khẽ cười
Một ngày anh biết hết nguyên do
Của những yên vui trong đời
Ngày mà duyên kiếp kia đưa ta
Gần lại với nhau
Tạm gác hết những âu lo lại
Cùng anh bước trên con đường
Ta sẽ không quay đầu
Để rồi phải tiếc nuối những chuyện cũ đã qua
Giữ trái tim luôn yên bình
Và quên hết những ưu phiền vấn vương
Cuộc đời này được bao lần nói yêu
Anh biết nơi để quay về
Em biết nơi phải đi
Anh biết chỗ trú chân dọc đường
Để tránh cơn mưa hạ đến mỗi chiều
Ta biết trao nhau ân cần
Biết mỗi khi vui buồn có nhau
Thời gian để ta trưởng thành với nhau
Bờ vai anh rộng đủ để che chở cho em
Was a boy now a man cho em
Từng đi lạc ở trong thế giới điên rồ ngoài kia
Và tình yêu em trao anh ngày ấy đã mang anh về bên em
Yêu em như a fat kid loves cake
Nhắm mắt cảm nhận tình yêu tan dịu
Ngọt trên môi khi em hôn môi anh đây
Không có happy ending
Mỗi bình minh ta biết thêm trang mới
Nối dài câu chuyện mình
Như trong mơ nơi xa kia xanh biếc xanh biếc
Thiên đàng bên em nơi đây anh biết anh biết
Bóng đêm đã qua yên bình
Có thêm chúng ta nghe lòng đàn từng câu ca
Cuộc đời này chẳng hề hối tiếc
Những tháng năm ta đi cùng nhau
Anh biết em luôn ở đó nơi anh thuộc về
Tạm gác hết những âu lo lại
Cùng anh bước trên con đường
Ta sẽ không quay đầu
Để rồi phải tiếc nuối những chuyện cũ đã qua
Giữ trái tim luôn yên bình
Và quên hết những ưu phiền vấn vương
Cuộc đời này được bao lần nói yêu
Anh biết nơi để quay về
Em biết nơi phải đi
Anh biết chỗ trú chân dọc đường
Để tránh cơn mưa hạ đến mỗi chiều
Ta biết trao nhau ân cần
Biết mỗi khi vui buồn có nhau
Thời gian để ta trưởng thành với nhau', N'1', N'19')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'174', N'Nàng Thơ', N'Hoàng Dũng', N'https://data.chiasenhac.com/data/cover/126/125060.jpg', N'https://audio.jukehost.co.uk/NFstX9K8z3Ko5W5m6YBCN5gMaKu56cgT', N'
Em, ngày em đánh rơi nụ cười vào anh
Có nghĩ sau này em sẽ chờ
Và vô tư cho đi hết những ngây thơ
Anh, một người hát mãi những điều mong manh
Lang thang tìm niềm vui đã lỡ
Chẳng buồn dặn lòng quên hết những chơ vơ
Ta yêu nhau bằng nỗi nhớ chưa khô trên những bức thư
Ta đâu bao giờ có lỗi khi không nghe tim chối từ
Chỉ tiếc rằng
Em không là nàng thơ
Anh cũng không còn là nhạc sĩ mộng mơ
Tình này nhẹ như gió
Lại trĩu lên tim ta những vết hằn
Tiếng yêu này mỏng manh
Giờ tan vỡ, thôi cũng đành
Xếp riêng những ngày tháng hồn nhiên
Trả lại...
Mai, rồi em sẽ quên ngày mình khờ dại
Mong em kỷ niệm này cất lại
Mong em ngày buồn thôi ướt đẫm trên vai
Mai, ngày em sải bước bên đời thênh thang
Chỉ cần một điều em hãy nhớ
Có một người từng yêu em tha thiết vô bờ
Em không là nàng thơ
Anh cũng không còn là nhạc sĩ mộng mơ
Tình này nhẹ như gió
Lại trĩu lên tim ta những vết hằn
Tiếng yêu này mỏng manh
Giờ tan vỡ, thôi cũng đành
Xếp riêng những ngày tháng hồn nhiên
Trả hết cho em
Em không là nàng thơ
Anh cũng không còn là nhạc sĩ mộng mơ
Tình này nhẹ như gió
Lại trĩu lên tim ta những vết hằn
Tiếng yêu này mỏng manh
Giờ tan vỡ, thôi cũng đành
Xếp riêng những ngày tháng hồn nhiên
Trả hết cho em', N'1', N'20')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'175', N'OTĐ For Life!', N'Lăng LD', N'https://data.chiasenhac.com/data/cover/131/130475.jpg', N'https://audio.jukehost.co.uk/1MkAyCv7ENhNn0rW4triZNhpjDEXZNNO', N'Lăng LD lên mic

OTĐ for life

Tiền Giang Boiz

Dang tay đang fly

Chân mang nike

Theo từng bước

OTĐ đi lên

Theo từng bước

OTĐ lên

LAN to da.. G.. LD

On da trap

On da Rap Việt

Đêm nay là party, chông sân OG

Lo gì, sau đêm nay ai cũng về nhà

Tận hưởng khoảnh khắc lên tận ngưỡng

Vì chưa chắc mình nhận thưởng

Lấy giấc ngủ để nghỉ ngơi

Trước khi kẹt trong vọng tưởng

Tạo ra thành quả chỉ để chờ được trọng thưởng

Sao sướng

Bằng những cảm hứng đến cho ta được cộng hưởng

Ricky nói vị trí thấp nhất

Sẽ cho mình một đường đi lên

Pjpo nói bông lúa chín cúi đầu

Nằm lòng đừng để thường khi quên

Nên dù account, bank vào vài món tiền ảo

Tạo ra áp lực phiền não, lao vào ngốn nghiền não

Cơ hội cho nhữnng kẻ phong trào được hên bước đi lên

Hào quang nhân tạo, huyền ảo

Lăng LD lên mic

OTĐ FOR LIFE

Tiền Giang Boiz

Dang tay đang fly

Chân mang nike

Theo từng bước

OTĐ lên

Theo từng bước

OTĐ lên

Họ nói anh cần hit

Để thành dân chơi thượng lưu

Nhưng tỉnh táo là thứ anh đang hướng tâm

Khiến anh thấy mình đại trượng phu

Thấy mình chân thật mỗi khi xướng âm

Don’t like a star

Nhưng lời này ta, được soi qua bằng thiên văn

Chơi nhạc vì duyên căn, chắc do nghiện nặng

Hoặc kiên trì siêng năng

Anh thích tâm tư mình thanh tịnh

Vui thú, điền viên, thiên nhiên

Trút được cái tánh, đòi hỏi mình toàn diện

Thi thoảng gặp được hiền duyên

Lao đầu vào nhạc, hướng đến sự hoàn thiện

Xuyên màn đêm, không hàn huyên

Ai đang nuôi đam mê

Ai đang nuôi đam mê

Ai đam mê đang nuôi

Hoan ca cho ta tan ra trong an vui

Tui tui tui tui tui

Câu này freestyle cho vui vui vui vui vui

Vốn liếng nó có đó

Chính thứ khiến nó uất ức

Lý trí sắt đá hoá bất khuất

Rap giúp nó thấy ấm áp chính lúc đó

Tuyến chính đánh thức chính kiến sống lúc khó

Chất xám xứng đáng đắt giá

Né mấy cái lưới có ý muốn đánh bắt cá

Có thấy thấp bé mới biết cứ tiếp cố gắng

Hướng đó bước đến chính chắn

Nó muốn chiến thắng chính nó trước hết

Lăng LD lên mic

OTĐ FOR LIFE

Tiền Giang Boiz

Dang tay đang fly

Chân mang Nike

Theo từng bước

OTĐ lên

Theo từng bước

OTĐ lên

My voice

Tây Đô Sound

1 to da 4

Đều chơi như Final Roud

Chơi đi chơi đi chơi đi

Chơi chung 1 sân, 1 game, anh em mình

Chơi đi chơi đi chơi đi

Chơi hết đêm nay tính sau', N'3', N'21')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'176', N'Va Vào Giai Điệu Này', N'RPT MCK', N'https://data.chiasenhac.com/data/cover/131/130475.jpg', N'https://audio.jukehost.co.uk/EiHI1HLrXF8idalLGreAFjRu7cIes62Q', N'Oh baby girl
yah yah
Gimme your love, đó là phần quà
Làm anh chìm sâu trước khi anh nhận ra rằng là “no” !
Cháu của anh sẽ gọi em bằng bà

Bởi vì anh muốn nắm tay nhau
Và va vào giai điệu này
Để bản thân này 1 ngày chẳng còn thấy giọt buồn chậm lăn ở 2 mi
ooh ooh, yeah
Nắm tay nhau và va vào giai điệu này
Để 1 ngày em hiểu được là there ain’t nobody like me
oh no, yeah

Tay đan trong tay ta chung đôi đi vào club
Baby tin anh ta không xếp ở hàng chờ
Anh khoe baby anh như Playboi Camau
Baby nháy mắt, quay đi, làm NGER
Vậy tình là gì làm mình viết ra ther
Anh đã quá quen với kiếp đợi chờ
Ta đang hôn nhau trong club đèn merrr
yeah yeah yeah
Funny man, with a funny girl
Siêu sao, and lovebirds
Em là Chanel, Versache, Bape
Gặp drama, em skrtskrt
Nhiệt độ tăng nhanh khiến anh chóng mặt
Em làm thời gian như đóng băng
Bởi vì anh biết trong tim em là ice ice ice ice
Ooh
DCOD life
yeah
Chân em mang Nike low
ooh
You gotta pick a side
yeah
Eenie miney moe
Mình cùng ngồi ngắm trăng tàn
Ở sài gòn hai giờ đêm
Henni làm mắt ai mờ thêm
Yeah sau đêm nay xem là ai ở bên

Cùng nắm tay nhau và va vào giai điệu này
Để bản thân này 1 ngày chẳng còn thấy giọt buồn chậm lăn ở 2 mi
ooh ooh, yeah
Nắm tay nhau và va vào giai điệu này
Để 1 ngày em hiểu được là there ain’t nobody like me
oh no, yeah

ooh la la la la
ooh la la la la
Wake up ở cầu Sài Gòn
Với những mẩu chuyện dài thòng
Just let me ease ur mind
ooh la la la la
Em chính là điều thần kì
Ghé đến và rồi thầm thì
Cần gì khi đã có nhau
ooh la la la la
Thanh âm bên tai đôi khi ngây ngất như mùi hương trên vai
Và đam mê của anh là hái ra tiền
Đặt một nụ cười lên môi em đêm mai
yeah, anh không hay ghen
Và niềm vui của anh là được hôn tay em
Và ngay sau đêm nay là anh đã muốn
Anh đã muốn

Yeah
DCOD life
yeah
Chân em mang Nike low
ooh
You gotta pick a side
yeah
Eenie miney moe
Mình cùng ngồi ngắm trăng tàn
Ở sài gòn hai giờ đêm
Henni làm mắt ai mờ thêm
Yeah sau đêm nay xem là ai ở bên

Cùng nắm tay nhau và va vào giai điệu này
Để bản thân này 1 ngày chẳng còn thấy giọt buồn chậm lăn ở 2 mi
ooh ooh, yeah
Nắm tay nhau và va vào giai điệu này
Để 1 ngày em hiểu được là there ain’t nobody like me
oh no, yeah', N'3', N'21')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'18', N'Love Me Do', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379604-2b3da3af/128/Love%20Me%20Do%20-%20The%20Beatles.mp3', N'
Love, love me do
You know I love you
I''ll always be true,
So please, love me do
Whoa, love me do.

Love, love me do
You know I love you
I''ll always be true
So please, love me do
Whoa, love me do.

Someone to love
Somebody new
Someone to love
Someone like you.

Love, love me do
You know I love you
I''ll always be true
So please, love me do
Whoa, love me do.

Love, love me do
You know I love you
I''ll always be true
So please, love me do
Whoa, love me do
Yeah, love me do
Whoa, oh, love me do.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'19', N'From Me To You', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379605-0b167dc2/128/From%20Me%20To%20You%20-%20The%20Beatles.mp3', N'
If there''s anything that you want
If there''s anything I can do
Just call on me and I''ll send it along
With love from me to you.

I''ve got everything that you want
Like a heart that is oh, so true
Just call on me and I''ll send it along
With love from me to you.

I got arms that long to hold you
And keep you by my side
I got lips that long to kiss you
And keep you satisfied, oooh.

If there''s anything that you want
If there''s anything I can do
Just call on me and I''ll send it along
With love from me to you
From me, to you.

From me. To You.

Just call on me and I''ll send it along
With love from me to you.

I got arms that long to hold you
And keep you by my side
I got lips that long to kiss you
And keep you satisfied, oooh.

If there''s anything that you want
If there''s anything I can do
Just call on me and I''ll send it along
With love from me to you
To you, to you, to you.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'2', N'Habitual', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/s7swe7rl1G0znBQPIcICrX9IK5Ex4etU', N'Oh no, duh, duh, duh
Oh no, duh, duh, duh

[Verse 1]
Flowers open when they feel the sunlight
Moonrise, tide change, right before our eyes
Aggressive but softly, you place your lips on my lips
We''re each other''s vice
Our feelings, they go deep, deeper than the touching
Deeper than the ocean, so we ain''t never rushing through
Our days or our nights, ain''t no repercussions
Never get enough, I''m only for your consumption

[Pre-Chorus]
Always rain the most in April
Every scale needs to be stable
Earth keeps spinnin'' around, we''re breathin''
So thankful

[Chorus]
My love for you''s habitual, yeah (Oh, yeah)
Not for a moment, but forever
Know it sounds untraditional, oh yeah
Never ungrateful for it
That''s how we both want it
Habitual
Can''t nobody keep me like you
Call it unconventional
Our love is habitual, yeah

[Refrain]
Oh no, duh, duh, duh
Oh no, duh, duh, duh

[Verse 2]
Just to think that we''ve been out here this whole time
Workin'' through the seasons
Never crossed paths till we had a reason
Now let''s fast-forward, look up
A whole new perspective for life

[Pre-Chorus]
Always rain the most in April
Every scale needs to be stable
Earth keeps spinnin'' around, we''re breathin''
So thankful

[Chorus]
My love for you''s habitual, yeah (Oh, yeah)
Not for a moment, but forever
Know it sounds untraditional, oh yeah
Never ungrateful for it
That''s how we both want it
Habitual
Can''t nobody keep me like you
Call it unconventional
Our love is habitual, yeah

[Outro]
Oh no, duh, duh, duh
Oh no, duh, duh, duh', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'20', N'She Loves You', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379606-7f5dbe12/128/She%20Loves%20You%20-%20The%20Beatles.mp3', N'
She loves you, yeah, yeah, yeah
She loves you, yeah, yeah, yeah
She loves you, yeah, yeah, yeah, yeah.

You think you lost your love
When I saw her yesterday
It''s you she''s thinking of
And she told me what to say
She says she loves you
And you know that can''t be bad
Yes, she loves you
And you know you should be glad.

She said you hurt her so
She almost lost her mind
And now she says she knows
You''re not the hurting kind
She says she loves you
And you know that can''t be bad
Yes, she loves you
And you know you should be glad, ooh.

She loves you, yeah, yeah, yeah
She loves you, yeah, yeah, yeah
And with a love like that
You know you should be glad.

You know it''s up to you
I think it''s only fair
Pride can hurt you too
Apologize to her
Because she loves you
And you know that can''t be bad
Yes, she loves you
And you know you should be glad, ooh.

She loves you, yeah, yeah, yeah
She loves you, yeah, yeah, yeah
With a love like that
You know you should be glad
With a love like that
You know you should be glad
With a love like that
You know you should be glad
Yeah, yeah, yeah
Yeah, yeah, yeah, yeah.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'21', N'I Want To Hold Your Hand', N'The Beatles
', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379607-d5ef35de/128/I%20Want%20To%20Hold%20Your%20Hand%20-%20The%20Beatles.mp3', N'
Oh, yeah, I''ll tell you somethin'' I think you''ll understand
When I say that somethin'' I want to hold your hand
I want to hold your hand
I want to hold your hand

Oh, please say to me you''ll let me be your man
And please say to me you''ll let me hold your hand
Now let me hold your hand
I want to hold your hand

And when I touch you I feel happy inside
It''s such a feelin'' that my love I can''t hide
I can''t hide
I can''t hide

Yeah, you''ve got that somethin'' I think you''ll understand
When I say that somethin'' I want to hold your hand
I want to hold your hand
I want to hold your hand

And when I touch you I feel happy inside
It''s such a feelin'' that my love I can''t hide
I can''t hide
I can''t hide

Yeah, you''ve got that somethin'' I think you''ll understand
When I feel that somethin'' I want to hold your hand
I want to hold your hand
I want to hold your hand
I want to hold your hand', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'22', N'Can''t Buy Me Love', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379608-610786ea/128/Can_t%20Buy%20Me%20Love%20-%20The%20Beatles.mp3', N'
Can''t buy me love, love
Can''t buy me love.

I''ll buy you a diamond ring my friend if it makes you feel alright
I''ll get you anything my friend if it makes you feel alright
''Cause I don''t care too much for money, money can''t buy me love.

I''ll give you all I got to give if you say you love me too
I may not have a lot to give but what I got I''ll give to you
I don''t care too much for money, money can''t buy me love.

Can''t buy me love, everybody tells me so
Can''t buy me love, no no no, no.

Say you don''t need no diamond ring and I''ll be satisfied
Tell me that you want the kind of thing that money just can''t buy
I don''t care too much for money, money can''t buy me love.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'23', N'A Hard Day''s Night', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379609-c80d6a1c/128/A%20Hard%20Day_s%20Night%20-%20The%20Beatles.mp3', N'
It''s been a hard day''s night
And I''ve been working like a dog
It''s been a hard day''s night
I should be sleeping like a log.

But when I get home to you
I find the things that you do
Will make me feel all right.

You know I work all day
To get you money to buy you things
And it''s worth it just to hear you say
“You''re gonna give me everything”.

So why on earth should I moan
''Cause when I get you alone
You know I feel all right.

When I''m home
Everything seems to be right
When I''m home
Feeling you holding me tight, tight, yeah.

It''s been a hard day''s night
And I''ve been working like a dog
It''s been a hard day''s night
I should be sleeping like a log.

But when I get home to you
I find the things that you do
Will make me feel okay, oh!

So why on earth should I moan
''Cause when I get you alone
You know I feel all right.

When I''m home
Everything seems to be right
When I''m home
Feeling you holding me tight, tight, yeah.

It''s been a hard day''s night
And I''ve been working like a dog
It''s been a hard day''s night
I should be sleeping like a log.

But when I get home to you
I find the things that you do
Will make me feel all right
You know I feel all right
You know I feel all right.
', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'24', N'I Feel Fine', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379610-649b1694/128/I%20Feel%20Fine%20-%20The%20Beatles.mp3', N'
Baby''s good to me, you know
She''s happy as can be, you know
She said so
I''m in love with her and I feel fine.

Baby says she''s mine, you know
She tells me all the time, you know
She said so
I''m in love with her and I feel fine.

I''m so glad that she''s my little girl
She''s so glad, she''s telling all the world.

That her baby buys her things, you know
He buys her diamond rings, you know
She said so
She''s in love with me and I feel fine, mmm.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'25', N'Eight Days A Week', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379611-3bf32a3d/128/Eight%20Days%20A%20Week%20-%20The%20Beatles.mp3', N'
Ooh I need your love babe,
Guess you know it''s true.
Hope you need my love babe,
Just like I need you.
Hold me, love me, hold me, love me.
I ain''t got nothin'' but love babe,
Eight days a week.

Love you ev''ry day girl,
Always on my mind.
One thing I can say girl,
Love you all the time.
Hold me, love me, hold me, love me.
I ain''t got nothin'' but love girl,
Eight days a week.

Eight days a week
I love you.
Eight days a week
Is not enough to show I care.

Ooh I need your love babe,
Guess you know it''s true.
Hope you need my love babe,
Just like I need you.
Hold me, love me, hold me, love me.
I ain''t got nothin'' but love babe,
Eight days a week.

Eight days a week
I love you.
Eight days a week
Is not enough to show I care.

Love you ev''ry day girl,
Always on my mind.
One thing I can say girl,
Love you all the time.
Hold me, love me, hold me, love me.
I ain''t got nothin'' but love girl,
Eight days a week,
Eight days a week,
Eight days a week.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'26', N'Ticket To Ride', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379612-fe92209d/128/Ticket%20To%20Ride%20-%20The%20Beatles.mp3', N'
I think I''m gonna be sad
I think it''s today, yeah
The girl that''s driving me mad
Is going away.

She''s got a ticket to ride
She''s got a ticket to ride
She''s got a ticket to ride
But she don''t care.

She said that living with me
Was bringing her down yeah
She would never be free
When I was around.

She''s got a ticket to ride
She''s got a ticket to ride
She''s got a ticket to ride
But she don''t care.

I don''t know why she''s ridin'' so high
She ought to think twice
She ought to do right by me
Before she gets to saying goodbye
She ought to think twice
She ought to do right by me.

I think I''m gonna be sad
I think it''s today yeah
The girl that''s driving me mad
Is going away, yeah.

She''s got a ticket to ride
She''s got a ticket to ride
She''s got a ticket to ride
But she don''t care.

I don''t know why she''s ridin'' so high
She ought to think twice
She ought to do right by me
Before she gets to saying goodbye
She ought to think twice
She ought to do right by me.

She heard that living with me
Was bringing her down, yeah
She would never be free
When I was around.

Ah, she''s got a ticket to ride
She''s got a ticket to ride
She''s got a ticket to ride
But she don''t care.

My baby don''t care, my baby don''t care
My baby don''t care, my baby don''t care
My baby don''t care.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'27', N'Help!', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379613-27967684/128/Help_%20-%20The%20Beatles.mp3', N'
Help, I need somebody,
Help, not just anybody,
Help, you know I need someone,
Help!

When I was younger, so much younger than today,
I never need in anybody''s help in anyway.
But now these days are gone, I''m not so self assured,
Now I find I''ve changed my mind, I''ve opened up the doors.

Help me if you can, I''m feeling down
And I do appreciate you being ''round.
Help me get my feet back on the ground,
Won''t you please, please help me?

And now my life has changed in oh so many ways,
My independence seems to vanish in the haze.
But every now and then I feel so insecure,
I know that I just need you like, I''ve never done before.

Help me if you can, I''m feeling down
And I do appreciate you being ''round.
Help me get my feet back on the ground,
Won''t you please, please help me?

When I was younger, so much younger than today,
I never need in anybody''s help in anyway.
But now these days are gone, I''m not so self assured,
Now I find I''ve changed my mind, I''ve opened up the doors.

Help me if you can, I''m feeling down
And i do appreciate you being ''round.
Help me get my feet back on the ground,
Won''t you please, please help me?
Help me,
Help me,
Ooooooo.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'28', N'Yesterday', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379614-4f5f78db/128/Yesterday%20-%20The%20Beatles.mp3', N'
1. Yesterday, all my troubles seemed so far away
Now it looks as though they''re here to stay
Oh, I believe in yesterday.

Suddenly, I''m not half the man I used to be
There''s a shadow hanging over me
Oh, yesterday came suddenly.

[Chorus:]
Why she had to go
I don''t know she wouldn''t say
I said something wrong
Now I long for yesterday.

2. Yesterday, love was such an easy game to play
Now I need a place to hide away
Oh, I believe in yesterday.

[Chorus:]
Why she had to go
I don''t know she wouldn''t say
I said something wrong
Now I long for yesterday.

[Coda:]
Yesterday, love was such an easy game to play
Now I need a place to hide away
Oh, I believe in yesterday
Mm mm mm mm mm mm mm.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'29', N'Day Tripper', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379615-749faa90/128/Day%20Tripper%20-%20The%20Beatles.mp3', N'
Got a good reason for taking the easy way out
Got a good reason for taking the easy way out now
She was a day tripper, one way ticket yeah
It took me so long to find out, I found out
Day tripper, day tripper, day tripper
She''s a big teaser, she took me half the way there
She''s a big teaser, she took me half the way there now
She was a day tripper, one way ticket yeah
It took me so long to find out, and I found out
Day tripper, Sunday driver yeah
It took me so long to find out, I found out
Day tripper, day tripper, day tripper
Got a good reason for taking the easy way out
Got a good reason for taking the easy way out now
She was a day tripper, Sunday driver yeah
It took me so long to find out, I found out
Day tripper, day tripper', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'3', N'Come Around Me', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/yVC1gc1z3d0G14yBHQnFIDs8VEZtJs6Q', N'When you come around me
Treat me like you miss me
Even though you been with me
When you come around me
Do me like you miss me
Even though you been with me

[Verse 1]
Diggin'' the way you feel on my skin
Got influence on me, can''t comprehend
Oh no, next thing, you''re on top of me
Okay with this, I call that a win-win

[Chorus]
So when you come around me
Treat me like you miss me
Even though you been with me
When you come around me
Do me like you miss me
Even though you been with me

[Post-Chorus]
Let''s not miss out on each other
Let''s get it in expeditiously
All that I want for you is perfection
Pull me down aggressively

[Verse 2]
Who taught you how to drive stick?
You a fool with it, love the way you fool with it
And the way you motion, motion in my lap
Love the way you move with it

[Chorus]
So when you come around me
Treat me like you miss me
Even though you been with me
When you come around me
Do me like you miss me
Even though you been with me

[Post-Chorus]
Let''s not miss out on each other
Let''s get it in expeditiously
All that I want for you is perfection
Pull me down aggressively

[Bridge]
When I rise up, baby, don''t shy up
Open your mind, don''t knock it ''til you try it, darlin''
Show off when you come closer
Don''t waste no time, love it when I''m in it, shawty

[Chorus]
When you come around me
Treat me like you miss me
Even though you been with me
When you come around me
Do me like you miss me
Even though you been with me
When you come around me
Treat me like you miss me
Even though you been with me
When you come around me
Do me like you miss me
Even though you been with me

[Outro]
When you come around me
Do me like you miss me', N'1', N'1')
GO
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'30', N'We Can Work It Out', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379616-a98009b8/128/We%20Can%20Work%20It%20Out%20-%20The%20Beatles.mp3', N'
Verse #1

Try to see it my way,
Do I have to keep on talking till I can''t go on?
While you see it your way,
Run the risk of knowing that our love may soon be gone.

Chorus:

We can work it out,
We can work it out.


Verse #2
Think of what you''re saying.
You can get it wrong and still you think that it''s all right.
Think of what I''m saying,
We can work it out and get it straight, or say good night.

Chorus:
We can work it out,
We can work it out.

Bridge:
Life is very short, and there''s no time
For fussing and fighting, my friend.
I have always thought that it''s a crime,
So I will ask you once again.

Verse #3
Try to see it my way,
Only time will tell if I am right or I am wrong.
While you see it your way
There''s a chance that we might fall apart before too long.

Chorus:
We can work it out,
We can work it out.

Bridge:
Life is very short, and there''s no time
For fussing and fighting, my friend.
I have always thought that it''s a crime,
So I will ask you once again.

Verse #4
Try to see it my way,
Only time will tell if I am right or I am wrong.
While you see it your way
There''s a chance that we might fall apart before too long.

Chorus:
We can work it out,
We can work it out.
', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'31', N'Paperback Writer', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379617-f1146e4b/128/Paperback%20Writer%20-%20The%20Beatles.mp3', N'
Paperback writer.

Dear Sir or Madam, will you read my book?
It took me years to write, will you take a look?
It''s based on a novel by a man named Lear
And I need a job, so I want to be a paperback writer
Paperback writer.

It''s the dirty story of a dirty man
And his clinging wife doesn''t understand
His son is working for the Daily Mail
It''s a steady job but he wants to be a paperback writer
Paperback writer.

Paperback writer.

It''s a thousand pages, give or take a few
I''ll be writing more in a week or two
I can make it longer if you like the style
I can change it round and I want to be a paperback writer
Paperback writer.

If you really like it you can have the rights
It could make a million for you overnight
If you must return it, you can send it here
But I need a break and I want to be a paperback writer
Paperback writer.

Paperback writer.

Paperback writer, paperback writer
Paperback writer, paperback writer
Paperback writer, paperback writer
Paperback writer, paperback writer.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'32', N'Yellow Submarine', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379618-e521302c/128/Yellow%20Submarine%20-%20The%20Beatles.mp3', N'
In the town where I was born
Lived a man who sailed to sea
And he told us of his life
In the land of submarines.

So we sailed on to the sun
Till we found the sea of green
And we lived beneath the waves
In our yellow submarine.

We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live in a yellow submarine
Yellow submarine, yellow submarine.

All our friends are all aboard
Many more of them live next door
And the band begins to play.

(Trumpets play)
We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live a yellow submarine
Yellow submarine, yellow submarine

(Full speed ahead, Mr. Parker, full speed ahead!
Full speed over here, sir!
Action station! Action station!
Aye, aye, sir, fire!
Captin! Captin!)

As we live a life of ease
Every one of us is all we need
Sky of blue, and sea of green
In our yellow submarine. (Hahahaha!)

We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live a yellow submarine
Yellow submarine, yellow submarine.

(fading)
We all live in a yellow submarine
Yellow submarine, yellow submarine
We all live in a yellow submarine
Yellow submarine, yellow submarine.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'33', N'Eleanor Rigby', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379619-eec0f71f/128/Eleanor%20Rigby%20-%20The%20Beatles.mp3', N'
Ah, look at all the lonely people
Ah, look at all the lonely people.

Eleanor Rigby picks up the rice in the church where a wedding has been
Lives in a dream
Waits at the window, wearing the face that she keeps in a jar by the door
Who is it for?

All the lonely people
Where do they all come from?
All the lonely people
Where do they all belong?

Father McKenzie writing the words of a sermon that no one will hear
No one comes near
Look at him working, darning his socks in the night when there''s nobody there
What does he care?

All the lonely people
Where do they all come from?
All the lonely people
Where do they all belong?

Ah, look at all the lonely people
Ah, look at all the lonely people.

Eleanor Rigby died in the church and was buried along with her name
Nobody came
Father McKenzie wiping the dirt from his hands as he walks from the grave
No one was saved.

All the lonely people (Ah, look at all the lonely people)
Where do they all come from?
All the lonely people (Ah, look at all the lonely people)
Where do they all belong?', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'34', N'Penny Lane', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379620-6914e151/128/Penny%20Lane%20-%20The%20Beatles.mp3', N'
1. In Penny Lane there is a barber showing photographs
Of every head he''s had the pleasure to have known
And all the people that come and go
Stop and say hello.

On the corner is a banker with a motorcar
The little children laugh at him behind his back
And the banker never wears a mac
In the pouring rain, very strange.

[Chorus1:]
Penny Lane is in my ears and in my eyes
There beneath the blue suburban skies
I sit, and meanwhile back.

2. In Penny Lane there is a fireman with an hourglass
And in his pocket is a portrait of the Queen
He likes to keep his fire engine clean
It''s a clean machine.

[Chorus2:]
Penny Lane is in my ears and in my eyes
A four of fish and finger pies
In summer, meanwhile back.

3. Behind the shelter in the middle of the roundabout
A pretty nurse is selling poppies from a tray
And though she feels as if she''s in a play
She is anyway.

In Penny Lane the barber shaves another customer
We see the banker sitting waiting for a trim
And then the fireman rushes in
From the pouring rain, very strange.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'35', N'All You Need Is Love ', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379621-36885f35/128/All%20You%20Need%20Is%20Love%20-%20The%20Beatles.mp3', N'
Love, Love, Love
Love, Love, Love
Love, Love, Love.

There''s nothing you can do that can''t be done
Nothing you can sing that can''t be sung
Nothing you can say but you can learn how to play the game
It''s easy.

Nothing you can make that can''t be made
No one you can save that can''t be saved
Nothing you can do but you can learn how to be you in time
It''s easy.

All you need is love
All you need is love
All you need is love, love
Love is all you need.

All you need is love
All you need is love
All you need is love, love
Love is all you need.

Nothing you can know that isn''t known
Nothing you can see that isn''t shown
Nowhere you can be that isn''t where you''re meant to be
It''s easy.

All you need is love
All you need is love
All you need is love, love
Love is all you need.

All you need is love (All together, now)
All you need is love. (Everybody)
All you need is love, love
Love is all you need (love is all you need).

Yee-hai
Oh yeah
She loves you, yeah yeah yeah
She loves you, yeah yeah yeah.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'36', N'Hello Goodbye', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379622-6fd314be/128/Hello%20Goodbye%20-%20The%20Beatles.mp3', N'
1. You say yes, i say no
You say stop but i say go, go, go.

[Chorus:]
Oh no
You say goodbye and i say hello
Hello, hello
I don''t know why you say goodbye
I say hello, hello hello
I don''t know why you say goodbye
I say hello.

2. I say high, you say low
You say why and i say i don''t know.

[Bridge1:]
(why, why, why, why, why, why do you say
Goodbye, goodbye, bye, bye, bye, bye, bye).

[Bridge2:]
You say yes (i say yes)
I say no (but i may mean no, i can stay till it''s time to go)
You say stop
And i say go go go.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'37', N'Lady Madonna', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379623-c78da2a2/128/Lady%20Madonna%20-%20The%20Beatles.mp3', N'
Lady Madonna, children at your feet
Wonder how you manage to make ends meet
Who find the money when you pay the rent
Did you think that money was heaven sent.

Friday night arrives without a suitcase
Sunday morning creeping like a nun
Monday''s child has learned to tie his bootlegs
See how they run.

Lady Madonna, baby at your breast
Wonders how you manage to feed the rest
Pa pa pa pa
See how they run.

Lady Madonna lying on the bed
Listen to the music playing in your head.

Tuesday afternoon is never ending
Wednesday morning papers didn''t come
Thursday night you stocking needed mending
See how they run.

Lady Madonna, children at your feet
Wonder how you manage to make ends meet.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'38', N'Hey Jude', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379628-6c3a0087/128/Hey%20Jude%20-%20The%20Beatles.mp3', N'
Hey Jude, don''t make it bad
Take a sad song and make it better
Remember to let her into your heart
Then you can start to make it better.

Hey Jude, don''t be afraid
You were made to go out and get her
The minute you let her under your skin
Then you begin to make it better.

And anytime you feel the pain, hey Jude, refrain
Don''t carry the world upon your shoulders
For well you know that it''s a fool who plays it cool
By making his world a little colder.

Hey Jude, don''t let me down
You have found her, now go and get her
Remember to let her into your heart
Then you can start to make it better.

So let it out and let it in, hey Jude, begin
You''re waiting for someone to perform with
And don''t you know that it''s just you, hey Jude, you''ll do
The movement you need is on your shoulder.

Hey Jude, don''t make it bad
Take a sad song and make it better
Remember to let her under your skin
Then you''ll begin to make it
Better better better better better better, oh.

Na na na, na na na na, na na na, hey Jude...', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'39', N'Get Back', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379624-d9980f04/128/Get%20Back%20-%20The%20Beatles.mp3', N'
1. Jojo was a man who thought he was a loner
But he knew it couldn''t last
Jojo left his home in Tucson, Arizona
For some California grass.

[Chorus:]
Get back, get back
Get back to where you once belonged
Get back, get back
Get back to where you once belonged
Get back, Jojo
Go home.

Get back, get back
Back to where you once belonged
Get back, get back
Back to where you once belonged
Get back, Jo.

2. Sweet Loretta Martin thought she was a woman
But she was another man
All the girls around her say she''s got it coming
But she gets it while she can.

[Coda:]
Get back, Loretta
Your mama''s waiting for you
Wearing her high-heel shoes
And her low-neck sweater
Get back home, Loretta.

Get back, get back
Get back to where you once belonged
Get back, get back
Get back
Oh, yeah.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'4', N'Intentions', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/LcTvGTDda9f0z2TECv9hYDi2U8FzQAdY', N'Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Verse 1: Justin Bieber]
Shout-out to your mom and dad for makin'' you
Standin'' ovation, they did a great job raisin'' you
When I create, you''re my muse
That kind of smile that makes the news
Can''t nobody throw shade on your name in these streets
Triple threat, you''re a boss, you a bae, you a beast
You make it easy to choose
You got a mean touch, I can''t refuse (No, I can''t refuse it)

[Chorus: Justin Bieber]
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Verse 2: Justin Bieber]
Already passed, you don''t need no approval
Good everywhere, don''t worry ''bout no refusal
Second to none, you got the upper hand now
Don''t need a sponsor, nope, you''re the brand now
You''re my rock, my Colorado
Got that ring, just like Toronto
Lovin'' you now, a little more tomorrow
That''s how I feel, act like you know that you are

[Chorus: Justin Bieber & Quavo]
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Verse 3: Quavo]
No cap, no pretendin''
You don''t need mentions (No cap)
Got ''em same goals, they don''t wanna be independent (''Pendent)
Tell them to mind your bidness (Woo), we in our feelings
It''s fifty-fifty percent in (Fifty)
Attention, we need commitment (Oh)
We gotta both admitted (Both)
It''s funny we both listen (Both)
It''s a blessing (Blessing) ''cause we both get it (Both)
You the best thing (Woo) and I don''t need a witness (Best thing)
I''ma find me a ring and pray it''s perfect fitted (Perfect, perfect)

[Chorus: Justin Bieber]
Picture perfect, you don''t need no filter
Gorgeous, make ''em drop dead, you a killer
Shower you with all my attention
Yeah, these are my only intentions
Stay in the kitchen cookin'' up, got your own bread
Heart full of equity, you''re an asset
Make sure that you don''t need no mentions
Yeah, these are my only intentions

[Outro: Justin Bieber]
That''s all I plan to do', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'40', N'The Ballad Of John And Yoko', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379625-f751ba48/128/The%20Ballad%20Of%20John%20And%20Yoko%20-%20The%20Beatle.mp3', N'
1. Standing in the dock at Southampton
Trying to get to Holland or France
The man in the mac said, "You''ve got to go back"
You know they didn''t even give us a chance.

[Chorus:]
Christ you know it ain''t easy
You know how hard it can be
The way things are going
They''re gonna crucify me.

2. Finally made the plane into Paris
Honey mooning down by the Seine
Peter Brown called to say
"You can make it O.K.
You can get married in Gibraltar, near Spain".

3. Drove from Paris to the Amsterdam Hilton
Talking in our beds for a week
The newspaper said, "Say what you doing in bed?"
I said, "We''re only trying to get us some peace".

[Bridge:]
Saving up your money for a rainy day
Giving all your clothes to charity
Last night the wife said
"Oh boy, when you''re dead
You don''t take nothing with you
But your soul - think!"

Made a lightning trip to Vienna
eating chocolate cake in a bag
The newspaper said, "She''s gone to his head
They look just like two gurus in drag".

4. Caught the early plane back to London
Fifty acorns tied in a sack
The men from the press said, "We wish you success
It''s good to have the both of you back".', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'41', N'Something ', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379626-5854f913/128/Something%20-%20The%20Beatles.mp3', N'
Something in the way she moves
Attracts me like no other lover
Something in the way she woos me
I don''t want to leave her now
You know I believe and how.

Somewhere in her smile she knows
That I don''t need no other lover
Something in her style that shows me
I don''t want to leave her now
You know I believe and how.

You''re asking me will my love grow
I don''t know, I don''t know
You stick around now, it may show
I don''t know, I don''t know.

Something in the way she knows
And all I have to do is think of her
Something in the things she shows me
I don''t want to leave her now
You know I believe and how.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'42', N'Come Together', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379627-464dfe60/128/Come%20Together%20-%20The%20Beatles.mp3', N'
Here come old flattop he come grooving up slowly
He got joo-joo eyeball he one holy roller
He got hair down to his knee
Got to be a joker he just do what he please

He wear no shoeshine he got toe-jam football
He got monkey finger he shoot coca-cola
He say "I know you, you know me"
One thing I can tell you is you got to be free
Come together right now over me

He bag production he got walrus gumboot
He got Ono sideboard he one spinal cracker
He got feet down below his knee
Hold you in his armchair you can feel his disease
Come together right now over me

He roller-coaster he got early warning
He got muddy water he one mojo filter
He say "One and one and one is three"
Got to be good-looking ''cause he''s so hard to see
Come together right now over me', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'43', N'Let It Be', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379629-7c534436/128/Let%20It%20Be%20-%20The%20Beatles.mp3', N'
When I find myself in times of trouble
Mother Mary comes to me
Speaking words of wisdom, let it be.

And in my hour of darkness
She is standing right in front of me
Speaking words of wisdom, let it be.

Let it be, let it be
Whisper words of wisdom, let it be.

And when the broken hearted people
Living in the world agree
There will be an answer, let it be.

For though they may be parted there is
Still a chance that they will see
There will be an answer, let it be
Let it be, let it be. Yeah
There will be an answer, let it be.

And when the night is cloudy
There is still a light that shines on me
Shine on until tomorrow, let it be.

I wake up to the sound of music
Mother Mary comes to me
Speaking words of wisdom, let it be
Let it be, let it be
There will be an answer, let it be
Let it be, let it be,
Whisper words of wisdom, let it be.', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'44', N'The Long And Winding Road', N'The Beatles', N'https://data.chiasenhac.com/data/cover/32/31430.jpg', N'https://data.chiasenhac.com/down2/1380/1/1379630-341867cd/128/The%20Long%20And%20Winding%20Road%20-%20The%20Beatles.mp3', N'
The long and winding road
That leads to your door
Will never disappear
I''ve seen that road before
It always leads me here
Lead me to your door.

The wild and windy night
That the rain washed away
Has left a pool of tears
Crying for the day
Why leave me standing here
Let me know the way.

Many times I''ve been alone
And many times I''ve cried
Anyway you''ll never know
The many ways I''ve tried.

And still they lead me back
To the long, winding road
You left me standing here
A long, long time ago
Don''t leave me waiting here
Lead me to your door.

But still they lead me back
To the long winding road
You left me standing here
A long, long time ago (ohhh)
Don''t keep me waiting here
(don''t keep me waiting)
Lead me to your door
(yeah yeah yeah yeah).', N'2', N'2')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'45', N'Stargazing', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/Dl5mIh8U4jJRhU5eSn9Cw0oxKriOyFGP', N'
Part I

[Chorus:]
Rollin'', rollin'', rollin'', got me stargazin'' (yeah)
Sippin'' on purp, feelin'' like the Barre Baby (it''s lit)
Whenever I''m down, it got me goin'' crazy (yah)
Psychedelics got me goin'' crazy (alright)

[Post-Chorus:]
I was always high up on the lean (yeah, yeah)
Then this girl came here to save my life
Look up to the sky, down on my knees (straight up)
Out of nowhere, you came here to stay the night
In the night-time (woo, yah)

[Verse 1:]
Rollin'', rollin'', rollin'', got me stargazin'' (roll)
Psychedelics got me goin'' crazy (oh no)
Niggas femalin'', they excellin'' (yeah)
Are they intelli''? (what you tellin''?)
We propellin'', up top with Ellen, uh (with the choppers)
Kill the jealous with propane repellent
Got me goin'' crazy (it''s lit)
On tour, we''ll tell ''em, we brought the section (gang)
They keep on callin'' up, it''s getting hectic like we projected
So we cut the plug, he''s interjected (got me goin'' crazy)

[Chorus:]
Rollin'', rollin'', rollin'', got me stargazin'' (yeah)
Sippin'' on purp, feelin'' like the Barre Baby (it''s lit)
Whatever I''m downin'' got me goin'' crazy (yah)
Psychedelics got me goin'' crazy (alright)

[Post-Chorus:]
I was always high up on the lean (yeah, yeah)
Then this girl came here to save my life
Girl, look to the sky, down on my knees (straight up)
Out of nowhere, you came here to stay the night
In the night-time (woo, yah)

[Interlude:]
Got me goin'' crazy
*Sound of a rollercoaster*

Part II

[Verse 2:]
Ok, I been up for some days, I ain''t got time to lay
Just to drown out all these thoughts, I tried all kind of things
If I take you to my past you will be traumatized
Got a thousand kids outside that''s tryna come alive
''99, took AstroWorld, it had to relocate
Told the dogs I''d bring it back, it was a seal of faith
Before no carnivals, baby girl, she played the tourist guide
Got the keys into my city, now she know the rides
Got new money, got new problems, got new enemies
When you make it to the top, it''s the amenities
Packin'' out Toyota like I''m in the lead
And it ain''t a mosh pit if ain''t no injuries
I got ''em stage divin'' out the nose bleeds
And she hit that booger sugar ''til her nose bleed
Bounce that shit forever, she on both knees
She was talkin'' ''bout forever got a whole week
But she know my baby mama is a trophy
She be throwing up them B''s feel like we both bleed
She keep my dick jumpin'' up, I feel like I''m Moby
I''m way too gold for this beef, feel like I''m Kobe, yeah
This right here is astronomical
I see you picked up all my ways, I feel responsible
They tryna say that all my problems is improbable
They keep itching at my spit, I''m diabolical
You feel me?', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'46', N'Carousel', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/b0hiAlCXjB4ZV4GyD8VXnZAVk7NlO3GA', N'
[Intro: Big Tuck]
What''s crackin''?
You already know who it is
Ya boy, Big Tuck
Freight Train Tuck
Astroworld is now in session, ya understand?
I''m the dean of this here
I got this.

[Verse 1: Travis Scott]
Yeah, yeah
Parked at the Days Inn, ain''t takin'' no days in (yeah)
Don''t need a vacation, I need a replacement (alright)
Bustin'' the lights out soon as we came in (it''s lit)
What''re they talkin'' about, what''s it pertainin'' (yeah, yeah)
Need me a therapist to ask if I''m aging (yeah)
This M-E-D it feel caved in (yeah)
All of my demons invadin''
I live paranoid, hesitatin''
They bitin'', they bitin'', the cadence (skrt, skrt)
Go out their way, it''s okay
Just lock the doors at the basement
I got a gate with my face in it.

[Chorus: Frank Ocean]
Brand new, brand new
This new place I got to
New world, new sky
That''s so blue it''s black too
New growth, new growth
All these fades I outgrew
Blue bands, blue bands
Get my cash from chato
Boy you''re too flash, too flash
Keep the flash minimal
Bitch, I''m too cold, too cold
See my breath visible.

[Verse 2: Travis Scott]
Yeah
Icy cold, it is so, it is so icy cold, yeah
Mixing the water with cheese is making the money get mold, yeah
Trying to be like gang, you better go get it in Vogue, yeah
Put 84''s on lanes, I robbed, how you think of the spokes
We did it, we said it, we spoke, yeah
We put it out, thought it was smoke, this 504, uh
This is at home, right down the street, from Alamo.

[Verse 3: Frank Ocean & Travis Scott]
Moving in silence don''t mean it''s movin'' slow
Even though the speed got old
Sprinkling methamphetamines
On the leaves like the snow
Bet they soak
I''m a new species, tale swings on the road
Come to reach and lose both
Got springs like a toad
Some for free in the tote
Saké drown like round white diamonds
Carats (yah)
Copy sound, might got two wings, parrot (alright!)
Landing down wind, caught two wings (it''s lit!)
Talons scrape, hit the stage, two wings (yeah, yeah!)
Better pray, better pray, two wings (straight up!)

[Chorus: Frank Ocean]
Brand new, brand new
This new place I got to
New world, new sky
That''s so blue it''s black too
New growth, new growth
All these fades I outgrew
Blue bands, blue bands
Get my cash from drive-thru
Boy you''re too flash, too flash
Keep the flash minimal
Bitch, I''m too cold, too cold
See my breath visible.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'47', N'Sicko Mode', N'Travis Scott; Drake', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/Ejyys3bvALJQICkhzJXBGD36bzoStE0E', N'
[Part I]

[Intro: Drake]
Astro, yeah
Sun is down, freezin'' cold
That''s how we already know winter''s here
My dawg would probably do it for a Louis belt
That''s just all he know, he don''t know
Nothin'' else
I tried to show ''em, yeah
I tried to show ''em, yeah, yeah
Yeah, yeah, yeah
Gone on you with the pick and roll
Young La Flame, he in sicko mode.

[Part II]

[Verse 1: Travis Scott]
Woo, made this here with all the ice on in the booth
At the gate outside, when they pull up, they get me loose
Yeah, Jump Out boys, that''s Nike boys, hoppin'' out coupes
This shit way too big when we pull up give me the loot
(gimme the loot!)
Was off the Remy, had to Papoose
Had to hit my old town to duck the news
Two-four hour lockdown, we made no moves
Now it''s 4 AM and I''m back up poppin'' with the crew
I just landed in, Chase B mixes pop like Jamba Juice
Different colored chains, think my jeweler really sellin'' fruits
And they chokin'', man, know the crackers wish it was a noose

[Bridge: Juicy J, Swae Lee & Travis Scott]
Some-some-some, someone said
To win the retreat, we all in too deep
P-p-playin'' for keeps, don''t play us for weak (someone said)
To win the retreat, we all in too deep
P-p-playin'' for keeps, don''t play us for weak (yeah)

[Verse 2: Travis Scott & Swae Lee]
This shit way too formal, y''all know I don''t follow suit
Stacey Dash, most of these girls ain''t got a clue
All of these hoes I made off records I produced
I might take all my exes and put ''em all in a group
Hit my eses, I need the booch
''Bout to turn this function to Bonnaroo
Told her "hop in, you comin'' too"
In the 305, bitches treat me like I''m Uncle Luke
(don''t stop, pop that pussy!)
Had to slop the top off, it''s just a roof, uh
She said, "where we goin''?" I said "the moon"
We ain''t even make it to the room
She thought it was the ocean, it''s just the pool
Now I got her open, it''s just the Goose
Who put this shit together? I''m the glue (someone said)
Shorty FaceTimed me out the blue.

[Bridge: Juicy J & Swae Lee]
Someone said
P-playin'' for keeps
Someone said motherf- what someone said
Don''t play us for weak.

[Part III]

[Intro: Drake & Travis Scott]
Yeah
Astro
Yeah, yeah
Tay Keith, fuck these niggas up
Ay, ay.

[Chorus: Drake & Travis Scott]
She''s in love with who I am
Back in high school, I used to buss it to the dance (yeah)
Now I hit the FBO with duffels in my hands
I did half a Xan, thirteen hours ''til I land
Had me out like a light, ayy, yeah
Like a light, ayy, yeah
Like a light, ayy.

[Verse 3: Drake & Travis Scott]
Slept through the flight, ayy
Knocked for the night, ayy, 767, man
This shit got double bedroom, man
I still got scores to settle, man
I crept down the block (down the block), made a right (yeah, right)
Cut the lights (yeah, what?), paid the price (yeah)
Niggas think it''s sweet (nah, nah), it''s on sight (yeah, what?)
Nothin'' nice (yeah), baguettes in my ice (aww, man)
Jesus Christ (yeah), checks over stripes (yeah)
That''s what I like (yeah), that''s what we like (yeah)
Lost my respect, you not a threat
When I shoot my shot, that shit wetty like I''m Sheck (bitch!)
See the shots that I took (ayy), wet like I''m Book (ayy)
Wet like I''m Lizzie, I be spending Folie''s
Circle blocks ''til I''m dizzy (yeah, what?)
Like where is he? (Yeah, what?)
No one seen him (yeah, yeah)
I''m tryna clean ''em (yeah)

[Chorus: Drake & Travis Scott]
She''s in love with who I am
Back in high school, I used to bus it to the dance
Now I hit the FBO with duffels in my hand (woo!)
I did half a Xan, thirteen hours ''til I land
Had me out like a light, like a light
Like a light, like a light
Like a light (yeah), like a light
Like a light.

[Verse 4: Travis Scott]
Yeah, pass the dawgs in celly
Sendin'' texts ain''t sendin'' kites, yeah
He said "keep that on lock"
I said "you know this shit, it''s life”, yeah
It''s absolute, yeah (yeah), I''m back reboot (it''s lit!)
LaFerrari to Jamba juice, yeah (skrrt, skrrt)
We back on the road, they jumpin'' off, no parachute, yeah
Shorty in the back
She said she workin'' on her glutes, yeah (oh my God)
Ain''t by the book, yeah
This how it look, yeah
''Bout a check, yeah (check)
Just check the foots, yeah
Pass this to my daughter, I''ma show her what it took (yeah)
Baby mama cover Forbes, got these other bitches shook, yeah.

[Outro: Travis Scott]
Ye-ah.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'48', N'R.I.P. Screw', N'Travis Scott; Swae Lee', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/7lHDhrlCGbFwgEQpe6Rov2hKszeDf2Ga', N'
[Intro: DJ Screw, Swae Lee & Travis Scott]
Ya'' know?
(South Side)
Rest in peace to Screw, tonight we take it slowly
I gotta let you know, the way
I gotta let you know, the way
I''m gonna take it all and clean it
I''m gonna take it all and spend it
(South Side)

[Verse 1: Swae Lee & DJ Screw]
And that''s all I''ve been sayin''
(South Side)
If you fall for the games then you''re the one playin''
Because it''s too much money out here
And there''s too many honeys out here
Feel like a trip off the drank, that''s weird
Feel like a trip off the drank, that''s weird.

[Chorus: Travis Scott]
Rest in peace to Screw, tonight we take it slowly
Oh my God, I just can feel the love
Drop top with the windows up
Jump inside, oh won''t you roll with us?
Make the devil bite the angel dust
Shawty, shawty, please
Shawty would you go?
Shawty what you like?
Tell me what you want.

[Verse 2: Travis Scott]
Rest in peace to Screw, tonight we take it slowly, yeah
I just took a four to the head like "mane"
Drop the top on the slab, like "mane"
Off the top of the dome like "mane"
Nothin'' beatin'' home like "mane"
And the Screw tapes on like "mane"
I go Pimp C on the phone like "mane"
Flip side platinum don''t do chrome like "mane"
Had the south side fade, now let the braids hang
This shit S.U.C smooth like "mane"
Rest in peace, Screw, like "mane".

[Chorus: Travis Scott]
Rest in peace to Screw, tonight we take it slowly
Oh my God, I just can feel the love
Drop top with the windows up.

[Outro: Travis Scott]
Screw found international sound because...
...throughout the South, and it''s new to um...
Shawty got a thing for us.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'49', N'Stop Trying To Be God', N'Travis Scott; Kid Cudi; James Blake; Stevie Wonder', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/vXSx3J3xnoWvhefQNJWsUcuq3pQyTCkz', N'
[Intro:]
This is the rewatch, the hot pockets, the fritters, the missiles, the humans, all gathered in secrecy
And flying high as a kite.

[Pre-Chorus: Phillip Bailey & Kid Cudi]
Hmm-hmm
Just know what this about
Hmm-hmm-hmm
Hmm-hmm
Palm trees, oceans, fresh air that can break your heart.

[Chorus: Phillip Bailey & Kid Cudi]
Hmm-hmm
Stop tryna be God
Hmm-hmm, hmm-hm
Hmm-hmm
Stop tryna be God
Hmm-hmm
That''s not who you are
Hmm-hmm
Stop tryna be God
Hmm-hmm
That''s just not your job
Hmm-hmm
Stop tryna be God, God.

[Verse 1: Travis Scott]
Ride for it every night
Visions and these angles tight
Truth be told, I never try
Diamonds are the wife of life
All three Rollies look alike
After two you get a hook-up price
Stripper never worked a nine-to-five
Delta and I ship it overnight
Stop tryna be God almighty
Fuck the money, never leave your people behind, yeah
It''s never love, no matter what you try
Still can see it comin'' down your eyes.

[Refrain: Travis Scott]
''Cause they did not create commandments (ooh-ooh)
When you hustle, always make it fancy (ooh-ooh)
The signal''s far from what you can be (ooh-ooh)
''Cause air traffic controls the landing
Yeah, yeah yeah yeah.

[Chorus: Phillip Bailey & Kid Cudi]
Hmm-hmm
Stop tryna be God
Hmm-hmm, hmm-hm
Hmm-hmm
Stop tryna be God
Hmm-hmm
That''s not who you are
Hmm-hmm
Stop tryna be God
Hmm-hmm
That''s just not your job
Hmm-hmm
Stop tryna be God, God.

[Verse 2: Travis Scott]
Stop tryna play God almighty
Always keep your circle tight
I been wantin'' shit my whole life
I wanted you bad, not tryna play God tonight
If I love her I''ma pass her one
First rule of war, you find an act of one
You can''t win a trophy or a plaque off her
But never turn your back on her.

[Refrain: Travis Scott]
''Cause they did not create commandments
When you hustle, always make it fancy
The signal''s far from what you can be
''Cause air traffic controls the landing
Yeah, yeah yeah yeah.

[Verse 3: Travis Scott]
You won''t succeed tryna learn me
Stick to the roads in my journey
Stay out of court when you got the attorney
She say she love ''em, want to really burn me.

[Chorus: Phillip Bailey & Kid Cudi]
Hmm-hmm
Stop tryna be God
Hmm-hmm, hmm-hm
Hmm-hmm
Stop tryna be God
Hmm-hmm
That''s not who you are
Hmm-hmm
Stop tryna be God
Hmm-hmm
That''s just not your job
Hmm-hmm
Stop tryna be God, God.

[Bridge: James Blake]
Is it the complex of the saint that''s keepin'' you so, so still?
Is it a coat of old paint that''s peelin'' every day against our will?
Is it too long since the last open conversation you had? Oh no
And did you see the void in the past?
And can you ever see it comin'' back?
Well, can you always be a step ahead of it for me?
Well, can you always be a step ahead of it for me?

[Outro: James Blake & Stevie Wonder]
Woah-oh-oh
Woah-oh-oh
Woah-oh-oh
Woah-oh-oh
That it?', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'5', N'Yummy', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/KOCZvTh5JuKySSluVqmoo8H1tteXOX6s', N'Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah babe, yeah babe, yeah babe
Any night, any day
Say the word, on my way
Yeah babe, yeah babe, yeah babe
In the mornin'' or the late
Say the word, on my way

[Verse 1]
Bonafide stallion
It ain&''t no stable, no, you stay on the run
Ain''t on the side, you''re number one
Yeah, every time I come around, you get it done (You get it done)

[Pre-Chorus]
Fifty-fifty, love the way you split it
Hundred racks, help me spend it, babe
Light a match, get litty, babe
That jet set, watch the sunset kinda, yeah, yeah
Rollin'' eyes back in my head, make my toes curl, yeah, yeah

[Chorus]
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah babe, yeah babe, yeah babe
Any night, any day
Say the word, on my way
Yeah babe, yeah babe, yeah babe
In the mornin'' or the late
Say the word, on my way

[Verse 2]
Standin'' up, keep me on the rise
Lost control of myself, I''m compromised
You''re incriminating, no disguise (No disguise)
And you ain''t never runnin'' low on supplies

[Pre-Chorus]
Fifty-fifty, love the way you split it
Hundred racks, help me spend it, babe
Light a match, get litty, babe
That jet set, watch the sunset kinda, yeah, yeah
Rollin'' eyes back in my head, make my toes curl, yeah, yeah

[Chorus]
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah babe, yeah babe, yeah babe
Any night, any day
Say the word, on my way
Yeah babe, yeah babe, yeah babe
In the mornin'' or the late
Say the word, on my way

[Bridge]
Hop in the Lambo'', I''m on my way
Drew House slippers on with a smile on my face
I''m elated that you are my lady
You got the yum, yum, yum, yum
You got the yum, yum-yum, woah
Woah-ooh

[Chorus]
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Yeah, you got that yummy-yum
That yummy-yum, that yummy-yummy
Say the word, on my way
Yeah babe, yeah babe, yeah babe
Any night, any day
Say the word, on my way
Yeah babe, yeah babe, yeah babe
In the mornin'' or the late
Say the word, on my way', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'50', N'No Bystanders', N'Travis Scott; Juice WRLD; Sheck Wes', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/OKru2l5tYimbPheREchQfEsVJeHAoba7', N'
[Bridge: Juice WRLD]
The party never ends
In a motel, laying with my sins, yeah
I''m tryna get revenge
You''ll be all out of love in the end.

[Pre-Chorus: Travis Scott]
Spent ten hours on this flight, man
Told the pilot ain''t no flight plans
Can''t believe whatever I''m seeing
And they know whenever I land
Yeah, yeah, yeah, yeah.

[Chorus: Sheck Wes]
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up
Fuck the club up, fuck the club up (yeah)

[Bridge: Juice WRLD]
The party never ends
In a motel, laying with my sins, yeah
I''m tryna get revenge
You''ll be all out of love in the end.

[Verse 1: Travis Scott]
Bicentennial men, put the city on slam
She get trippy off Xans
Lost 21 grams, and she did it on cam
Weren''t no video dance
Make my own rules, I really don''t pick, I just choose
I don''t set picks, I just shoot
Chopper gettin'' screwed
I told her it''s B.Y.O.B., that mean buy your own booze
Put it on God, he the one who put me on top
Can''t be put in a box
Gotta move on the opps, never got the move on the drop
Niggas tryna move on the Scott
And move that deep
Tryna run down, shit''s deep
Gotta act a fool with the squad
Next city, no sleep, back to the 713.

[Pre-Chorus: Travis Scott]
Spent ten hours on this flight, man
Told the pilot ain''t no flight plans
Can''t believe whatever I''m seeing
And they know whenever I land
Yeah, yeah, yeah, yeah.

[Chorus: Sheck Wes]
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up
Fuck the club up, fuck the club up (yeah)

[Verse 2: Travis Scott]
Heartbreak hotel
Bet you can''t take no L''s
Plug like AOL
Who say that I ain''t gon'' sell?
Hand me the H, I''ll sell
She said "I got it, nigga"
I said "I ain''t gon'' tell"
Buy it by the pound so it ain''t no scale
I''m sick of the drank (the drankin'')
The flippin'' of paint (the paint, yeah)
Grippin'' the grain (the grain, yeah)
Whipping Wu-Tang (Wu-Tang, yeah)
My niggas gon'' flame (bang, yeah)
Bitch, I''m with gang (gang, yeah)
Got your bitch on the plane.

[Pre-Chorus: Travis Scott]
Spent ten hours on this flight, man
Told the pilot ain''t no flight plans
Can''t believe whatever I''m seeing
And they know whenever I land
Yeah, yeah, yeah, yeah.

[Chorus: Sheck Wes]
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up
Fuck the club up, fuck the club up (yeah)

[Segue: Juice WRLD]
The party never ends.

[Chorus: Sheck Wes & Juice WRLD]
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up
Fuck the club up, fuck the club up (yeah)
The party never ends.

[Verse 3: Travis Scott]
Family function, ain''t no friends
Had a line around my ends
Turned ''em into Ms
Why you tryna make amends?
What''s that smell? It''s heaven-scent
Like I drop shit out the wind
Dodgin'' hella sins
I can''t go back there again
Now the dogs ain''t civilized
Take the one, feel vilified
You can''t see my suns
Like the light don''t hit this eye
In the function and I''m fried
It''s the drop is not a drop
When they open wide
It''s a ride, right?

[Outro: Sheck Wes]
Fuck the club up, fuck the club up (bitch)
Nah, nigga, nah, nigga, for real, we walkin'' in this bitch heavy
Fuck the club up, fuck the club up (bitch)
Fuck the club up, fuck the club up
They know me when they see me, nigga, ahhh!
Fuck the club up, fuck the club up (yeah)', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'51', N'Skeletons', N'Travis Scott; The Weeknd; Pharrell Williams', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/0ZpA8d7gqcrP8RJXKGiQn8QRAbJ8ddPP', N'
[Refrain: Travis Scott, Pharrell Williams, Tame Impala & The Weeknd]
Yeah yeah yeah (yeah, ooh)
Feels like slow motion, we''re floating at the speed (yeah)
(yeah, yeah)
Louder (louder)
Higher, higher, higher, higher, higher (uhh, yeah, higher)
It''s like standing in the ocean.

[Verse: Travis Scott]
We just rocked Coachella, I gave her half of the check
It was good sex, honorable mention to the net
Didn''t pass the loud, that was out of respect
Afterwards, pass the towel, I was out of Kleenex
If you take your girl out, do you expect sex?
If she take her titties out do you expect checks?
First visit, I gave her a pearl necklace
Next visit, I''ma need your girl naked
Took a church visit, you know, ''cause the world hectic.

[Bridge: The Weeknd & Pharrell Williams]
Like floating, if I can''t be in time
I don''t know, I don''t know (wash on me, wash on me, yeah)
In the ocean, I can''t be loved
I don''t know a sound
(That''s right)

[Outro: Pharrell Williams, Travis Scott, Tame Impala & The Weeknd]
Standing in the ocean (standing in the ocean) (Ooh)
Echoing (echoing), echoing
Standing in the ocean
(Oh, baby)
Standing in the ocean
Feels like slow motion, we''re floating at the speed.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'52', N'Wake Up', N'Travis Scott; The Weeknd', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/WYR9Nsqb5Pb4VRiRTcu9tDU6woZg0hfE', N'
[Chorus: The Weeknd]
I don''t wanna wake up
I want you spread out on the sheets
Said her pussy so good
And her pussy so sweet
I don''t wanna wake up
I want it flowing through my streams
Getting me hot
Under my feet
I don''t wanna wake up.

[Verse 1: Travis Scott]
Please don''t wake me up, I feel it creeping (yeah)
Controlling how you moving, lucid dreaming (dreams)
Always on the side of different seasons, yeah, yeah
Took the belt-way down to your hood
Say you was in the crowd, I never looked
Looking back how things came back around
Guess I was hooked
Burn the bread and then we burn the town
We both was cooked, yeah
Nah, nah, please don''t wake me up, feel like I''m dreamin''
Any given Sunday, you can get it, Willie Beamon
I can make your Mondays even better like the weekend
That''s my coco out my ice tea (coco, yeah, yeah)
Bend her over for some piping (it''s lit!)
Bust a cloud, shoot the lightning (pop it)
Pop it now, no, we can''t sleep.

[Chorus: Travis Scott]
I don''t wanna wake up (yeah)
Want you spread out on the sheets (it''s lit!)
Say, pussy so good (pop it)
Oh, pussy so sweet (yeah)
When I wake up (yeah, yeah)
Wanna drop top on the beach (straight up)
Getting me high, yeah (yeah)
Under my feet
When I wake up.

[Verse 2: The Weeknd]
You decide if I live or die
When you''re close, I''m alive, I can feel the sky
I just want your body close to me (oh)
And if I OD
I''ll be alone with no heartbeat
I hold the hills with a coast in the Lambo
And the doors going up, suicide.

[Chorus: The Weeknd]
I don''t wanna wake up (I don''t wanna wake up)
I want you spread out on the sheets (want you spread out on the sheets)
''Cause that pussy so good (pussy so good)
Girl, that pussy so sweet (pussy so sweet)
I don''t wanna wake up (I don''t wanna wake up)
I want it flowing through my streams (want it flowing through my streams)
Ha, getting me hot (getting me hot)
Oh, under my feet (under my feet)
I don''t wanna wake up (yeah)', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'53', N'5% Tint', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/ld7tTkFzfccZeIfhRh8I0km5ksmT1LGK', N'
[Chorus:]
Who''s that creeping through my window?
Before you come outside, I got the M4
Took her to the endzone from The Ends, though
Know I love to smoke, you love to lick more
Wanna hit the Jack, then what you call for?
All that out-your-name shit, that ain''t called for, mm.

[Verse 1:]
Who that creepin''? Know the tint is dark (five percent)
All that fall-in-love shit, got it Kevin Hart (yeah, yeah)
All that speed and fly shit, we might teleport, yuh (skrr, skrr)
All that cop a rack shit, I might clip a sarge, yuh (twelve)
Keep bouncin'' that ass, you just might get award, yeah
If she bad, she get a pass into the tour (passes yeah)
I pick through the family, grab the bad sister like Janet
Opps outside, don''t panic
Gotta switch, gotta change up transit
Still jump around, move antsy
And I still don''t like shit fancy
Up late feelin'' real chancy
They outside really tryna end me, yeah.

[Chorus:]
Who''s that creeping through my window? (my window)
Before you come outside, I got the M4 (M4)
Took her to the endzone from The Ends, though (yah)
Know I love to smoke, you love to lick more (eah)
Wanna hit the Jack, then what you call for? (yah)
All that out-your-name shit, that ain''t called for (yah)

[Verse 2:]
Who the fuck is this?
Met somebody baby mama inside of the VIP
While I''m tryna tip
Shawty said she holding, got a razor in her lip
Mix my cup and twist one up, I love that ratchet shit
She like "I-I-Iced out wrist, iced out, iced out wrist" (iced out wrist)
Fuck don''t kiss, fuck, she fuck don''t kiss (mwah)
Look like friends, but she say they twins (twins)
Jump right in, there''s leg room in this Benz (leg room in this Benz)
Ten miles to the crib, you know that''s deep (deep, yeah)
I think there''s someone out there watching me, yeah.

[Chorus:]
Who''s that creeping through my window? (my window, who?)
Before you come outside, I got the M4 (M4)
Took her to the end zone from The Ends, though (yeah)
Know I love to smoke, you love to lick more (lick)
Wanna hit the Jack, then what you call for? (yah, Jack)
All that out your new shit, that ain''t called for (yah)

[Outro:]
Who''s that creeping through my window?
Before you come outside, I got the M4
Took her to the end zone from The Ends, though
Know I love to smoke, you love to lick more.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'54', N'NC-17', N'Travis Scott; 21 Savage', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/KKSOigf9fPAus66isa2lIqsi3C3Jqvxr', N'
[Intro: Travis Scott]
Ooh.

[Chorus: Travis Scott]
Me and my bitch, I swear we like the same sex (ooh)
Fuck with all my chains on, let''s have chain sex (serve, yeah)
Hangin'' with the gang, you get your fangs wet (wet)
Wanna kick with the gang, you gotta bang it (it''s lit)
If you gon'' throw ice on, gotta swang it (ice)
Holes in the wall, I can not hang it (nah)
Pour different colors, sippin'', tainted (ooh)
Whole thing of vultures start vibratin'' (rawr)

[Verse 1: Travis Scott]
Don''t do playgrounds, we do not swing sets (swing)
Shawty got the K, don''t entertain threats (grah-grah)
Shawty came my way she brought the same sex (same)
Bust it down, she talkin'' body language (it''s lit)
Eating that punane got my bangs wet (eat it up)
We gon'' have to change for the banquet (drippin'')
Solo with Mussain is not the same specs (skrrt, skrrt)
Pull up, left with something I ain''t came with (alright)

[Interlude: Travis Scott]
Woah, woah, woah, woah
Woah, woah, woah, woah
Woah, ice, froze, go, get, gone
Get gone (yah! yah!)

[Verse 2: 21 Savage]
Three main bitches thinkin'' they my main bitch (21, 21)
Hit the club and swap the hoes I came with (straight up, straight up)
Don''t you come outside, we on that gang shit (straight up, straight up)
Had to switch my t-shirt ''cause she stained it (on God)
Had to buy a visa, she from Moscow (21)
Fuckin'' ''round with Travis, you get crossed out (crossed out)
He used to be on, that nigga off now (he off now)
I done got so rich, I Saint Laurent my dogs now (straight up, straight up)
Earrings cost a quarter certified by GIA (21)
If it''s ''bout my bae or ''bout some smoke I''m on my way (skrrt, skrrt)
Your bitch gave the kid Cudi but I''m not signed to Ye (on God)
I nutted on her cheek, her new nickname is Baby Face (21)

[Chorus: Travis Scott]
Me and my bitch, I swear we like the same sex (ooh)
Fuck with all my chains on, let''s have chain sex (serve, yeah)
Hangin'' with the gang, you get your fangs wet (wet)
Wanna kick with the gang, you gotta bang it (it''s lit)
If you gon'' throw ice on, gotta swang it (ice)
Holes in the wall, I can not hang it (nah)
Pour different colors, sippin'', tainted (ooh)
Woah think a vibe just start vibratin'' (rawr)', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'55', N'Astrothunder', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/m9KBpMqLUcbufQHq3MCGalj4G4tp7JM6', N'
[Intro:]
Yeah.

[Chorus:]
Seem like the life I feel
Seem like the life I feel''s a little distant, yeah
Seems like the life I need
Seems like the life I need''s a little distant, yeah.

[Verse:]
Like the remedy, yeah
Sit back while I watch, repeat
Do it on repeat-repeat
Sins controllin'' me, yeah
Angels, halos over me
I need blessings and my peace
You been out the streets, yeah
Wildin'' on me and my Gs
We been goin'' for a week
Now you wanna peak, yeah
Hands up, why they tryna reach?
I can''t even get that deep
Told you I don''t teach (yeah)
Practice, oh, no, never preach
Practice, oh, no, never preach
Infiltrate the enemy, moving on them randomly.

[Chorus:]
Feels like the life I need''s a little distant, yeah (yeah)
Feels like the life I need, yeah
Feels like the life I need''s a little distant, yeah (yeah, yeah)
Yeah-ah.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'56', N'Yosemite', N'Travis Scott; Gunna; NAV', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/Du5nTQZKaD9keVjVwchi69kI3tXemS1q', N'
[Chorus: Gunna]
Ice on my neck, flawless baguettes
Hop off a jet, barely get rest
Cash through the month, I get a check
Yves Saint Laurent on my pants and my chest
Chanel, her dress, clean up her mess
I eat her flesh, you know the rest
Count up a hun'', cop a Rolex
Shine like the sun, you truly blessed
Two-tone Patek
Fendi Clipboard like I Uber the jets
VVS''s on me got my Gucci shirt wet
Put a M in my bag, I''ma get used to these racks
I went to school where they teach you finesse
Five hundred shells for the drip I invest
I''m the boss man, I keep cash in the desk
Know the coupe fast when they end with a S.

[Verse: Travis Scott]
Now that I''m home, back off the road
We shut it down, say it ain''t so
With checks in the streets, shade number four
Saint Laurent feet, put it on toes
Take it with me, double your dose
Covered with angels that''s watching my soul
Jet got a bed, it''s bigger windows
Said I''ll be there in 10, but I got there in four.

[Bridge: Travis Scott]
I feel like I''m chosen, I''m covered in gold
Mmm-mmm-mmm-mm-mmm-mmm-mmm-mm
Mmm-mmm-mmm-mm-mmm-mmm-mmm-mm
I left her wide open, no self control
Mmm-mmm-mmm-mm-mmm-mmm-mmm-mm
Mmm-mmm-mmm-mm-mmm-mmm-mmm-mm
Took nothing but five minutes, she hopped in and drove
Mmm-mmm-mmm-mm-mmm-mmm-mmm-mm.

[Chorus: Gunna & Travis Scott]
Ice on my neck, flawless baguettes
Hop off a jet, barely get rest
Cash through the month, I get a check
Yves Saint Laurent on my pants and my chest
Chanel, her dress, clean up her mess
I eat her flesh, you know the rest
Count up a hun'', cop a Rolex
Shine like the sun, you truly blessed
Two-tone Pateks
Fendi clipboard like I Uber the jets
VVS''s on me got my Louis shirt wet
It''s a M in my bag and get used to these racks
I went to school where they teach you finesse
Five hundred shells for the drip I invest
I''m the boss man, I keep cash in the desk
Know the coupe fast when they end with a S.

[Outro: NAV]
La Flame on a island
Me and Cash, Gunna hopped on a Learjet
Got Prada''s, every color
And I got CC''s you ain''t seen yet
Said I''d kick the cup and now I''m asking, "where the codeine at"?
30 pointers and up, Eliantte drippin'', my whole team wet.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'57', N'Can''t Say', N'Travis Scott; Don Toliver', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/5d7A5IwOIZwRIPlVU92UUc9XXLs5brg7', N'
[Chorus: Travis Scott & Don Toliver]
No you can''t say if I''m mad or not
Smoking hella weed, I''m on that alcohol
Shawty lick me clean the way she suck me off
I keep two hoes in my bed, I got ''em turning out
What would you do if you heard I got it going on?
I had to burn, I left skrt marks, I had to dip (I had to)
Gotta watch for 12, ''round my town you might get killed
(better watch for 12)
I''m out my mind, yeah I''m high above the rim (I''m on my mind)
You cop it live, boy I got it all on film.

[Verse 1: Travis Scott]
You gotta watch out where you rockin'', shit get real
Drink too real, I can''t be fake, don''t know the feel
Gotta take a long drive up the hill
Gang too wavy, move like Navy Seals
I''m too wavy, think I need a Lyft
Chicago baby she just wanna drill
The vibes too wavy, it''s too hard to kill
Gotta watch out where you go ''cause shit get real.

[Interlude]
I''ma swang, and a-swang, and a-swang to the left
Pop-pop my trunk
Dip-dip-dip-dip
Oh my.

[Chorus: Don Toliver]
You can''t say if I''m mad or not
Smoking hella weed, I''m on that alcohol
Shawty lick me clean the way she suck me off
I keep two hoes in my bed, I got ''em turning out
What would you do if you heard I got it, burned it all?
I let it burn, skrt that mark, I had to dip (I had to)
Better watch for 12, ''round my town you might get killed
(better watch for 12)
I''m out my mind, yeah I''m high above the rim (I''m out my mind)
You cop it live, boy I got it all on film.

[Verse 2: Don Toliver]
You must be cautious, told the lil'' hoes I''m all in
Play this ballers offense, I left ol'' girl, she callin''
You know I hit in the morning, oh yeah she yawning
I met you in the club, bitch you know this shit mean nothing
Oh then I hit your cousin, mhm, no-no discussion
Sipping on lean, no Robitussin
Oh yeah, I know you love me, I beat it ain''t no cuddling
You down bad, you suffering
I don''t give a fuck how hard it get
That lil'' bitch know I started this
Uh-huh, oh yeah
Get to the cash, no layup
Spend a big bag, Rodeo
Some may ride for the first time
Hoes come through just to touch us
I''ma tell the truth like Usher
You already know how I bust her
Slang my chop from Russia.

[Interlude:]
I''ma swang, and a swang, when I swang to the left
Pop-pop my trunk
Dip-dip-dip-dip
I''ma swang, and a swang, when I swang to the left
Pop-pop my trunk
Dip.

[Chorus: Travis Scott]
No you can''t say if I''m mad or not
Smoking hella weed, I''m on that alcohol
Shawty lick me clean the way she suck me off
I keep two hoes in my bed, I got ''em turning out
What would you do if you heard I got it going on?
I had to burn, I left skrt marks, I had to dip
Gotta watch for 12, ''round my town you might get killed
I''m out my mind, yeah I''m high, above the rim
You cop it live, boy I got it all on film.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'58', N'Who? What!', N'Travis Scott; Quavo; Takeoff', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/YC32ffWAzjrYazMcP9Fjq0mq6vt3EY0T', N'
[Intro: Travis Scott]
Know what I''m saying, know what I''m saying
Know what I''m saying.

[Verse 1: Travis Scott & (Quavo)]
Heard they talkin'' shit ''bout I
Who, what, when and why (who)
I''m alive, just took one to revive (yeah)
Keep that vibe when we show up and collide (''llide)
Me and the guys move just like the F-O-I (Ooh)
In the Hills but still keep them ghetto ties (Hills)
Was talkin'' Frenchy''s but she thinkin'' Ocean Prime (Prime, yeah)
Know she keep an open mouth and open mind (ahh)
I don''t open up her door, she open mine
I need less stress and I need more ties, yeah (skrr, skrr)
We on the jet quest, mobbin'' with the drop, yes (skrr, skrr)
In the headrest one of 25, yes (skrr, skrr)
Ain''t seen the best yet, open up your eyes, yeah (yeah)

[Chorus: Travis Scott & (Quavo)]
One, two, three, four, five, that''s the countdown ''til I slide (slide)
Pork and rinds, how I grew up on my side (eat it up)
Ain''t no fence just a hundred acres wide (nope)
When shit get tense, we twist up and we get fried.

[Verse 2: Travis Scott & (Quavo)]
I picked my favorite dancer I done pay her rent (cash, cash)
At Christmas time it''s no Saint Nick we got the Grinch (bad, bad)
I smack that ass she threw it back in self defense (yeah)
We took the crib, flood the backyard like it''s the beach (drip, drip)
We did some things out on the ways that we can''t speak
All I know it was "Mo Bamba" on repeat (cash)
I don''t think these things I took is helpin'' me (oh yeah)
I could bag up some hoes
Had to count up the fours
Had to count up the Os (big bag)
Had to summon the hoes (hey)
Dodge the federal (12)
I rolled through the light (skrr, skrr)
Rollin'' the dice (hey)
Rock on my ice (all ice)
Poppin'' that Gucci (Gucci, Gucci)
This down and groovy
To get down, get groovy (groovy)
That bitch brown and choosey (hey)
Shawty (shawty), in the supersonic (yeah)
Brand new LaFerrari (woo), my bitch ride iconic.

[Chorus: Travis Scott]
Yeah, yeah
One, two, three, four, five, that''s the countdown ''til I slide (‘til I slide)
Pork and rinds, how I grew up on my side
Ain''t no fence just a hundred acres wide
When shit get tense, we twist up and we get fried.

[Verse 3: Quavo]
Was born in the movie (movie)
Never make excuses (no)
It was time to move it (time to move)
It was God and the uzi (God and the uzi)
We were trained to use it (hey)
They was train to use it (train)
Shoot you like Cupid (shoot)
Hit your medulla, yeah.

[Verse 4: Takeoff & (Quavo)]
Shoot at, shoot at intruders (yeah)
Then shoot your producer (yeah)
This shit for the gang, get banged and fuck on the group, she a groupie (yeah)
Love her when she choosey, hmm (yeah)
Big bankroll it''s soothin'', hmm (yeah)
Pull up with the sticks I''m makin'' them cuddle up this not a movie.

[Chorus: Travis Scott]
Yeah, yeah
One, two, three, four, five, that''s the countdown ''til I slide (‘til I slide)
Pork and rinds, how I grew up on my side
Ain''t no fence just a hundred acres wide
When shit get tense, we twist up and we get fried.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'59', N'Butterfly Effect', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/Isdj0W3EIzu3M2rHzcjls73HR9lKkYhH', N'
[Intro:]
Murda on the beat so it''s not nice.

[Chorus:]
For this life, I cannot change (change)
Hidden Hills, deep off in the main (main)
M&M''s, sweet like candy cane (cane)
Drop the top, pop it, let it bang (pop it, pop it)
For this life, I cannot change
Hidden Hills, deep off in the main (main)
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang (pop it, pop it)

[Verse 1:]
Drop the top, play hide and seek (yeah)
Jump inside, jump straight to the league (league)
Take a sip, feel just how I breathe (it''s lit)
On freeway, but no, ain''t nothin'' free (straight up)
Bend laws, bend lanes
Been bustin'' bills, but still, ain''t nothin'' change (skrt)
You in the mob soon as you rock the chain (mob)
She caught the waves just thumbin'' through my braids (alright)
Heatin'' up, baby, I''m just heatin'' up (it''s lit)
Need ya love, not a need it is a must (yeah)
Feelin'' stuck, you know how to keep me up (yeah, yeah)
Icy love, icy like a hockey puck (alright)

[Chorus:]
For this life, I cannot change
Hidden Hills, deep off in the main
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang (pop it, pop it)
For this life, I cannot change
Hidden Hills, deep off in the remains (yeah, yeah)
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang.

[Verse 2:]
All the ones, all the chains piled on the mantle (yeah)
All the dogs, all the dogs low creep right behind me in the Phantom (it''s lit)
Yeah, never go, never go dip on the set, stayed Santana
Yeah, run it back, turn the lights on when I hit up Green Lantern (it''s lit, alright)
Yeah, fly the broads, fly the dogs down to Atlanta
Yeah, in the cut in Medusa, lay low, yeah, I might be
Yeah, roll up, help me calm down when I''m movin'' high speed
Yeah, if I send one, need to text back ''cause you know what I need (straight up)
Oh, please (oh, please), Oh, me (oh, me) Oh, my (oh, my)
We been movin'', we been movin'' for some time (alright)
Flexin'', flexin'' try to exercise
Exercise, exercise, exercise, exercise (yeah, yeah)

[Chorus:]
For this life, I cannot change
Hidden Hills, deep off in the main
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang (pop it, pop it)
For this life, I cannot change
Hidden Hills, deep off in the main
M&M''s, sweet like candy cane
Drop the top, pop it, let it bang (ay)
Yah!', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'6', N'Available', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/awdGRX925FUpFPRXTk3Dx1qFbrwPqU3o', N'Thinkin'' ’bout you, it ain''t always ''bout me
Don’t make any sense in you bein'' lonely
Hurry up and get here now, but don''t speed
I''ll never get over you up under me

[Chorus]
I''m available (Yeah-yeah)
Oh, yes, I am (Yeah-yeah)
I''m available (Yeah-yeah)
Yeah, for you, I am
Don''t mean to sound desperate
But you made it like this
Say I''m number one on your to-do list
I’m available (Yeah-yeah)
I’m available

[Verse 1]
Nothin'' like your hands on me
Regret the moments that they’re off me and let it sink in
Hear me talkin'', don''t ignore me
I was just about to call it, what you thinkin''?
Been thinkin’ ''bout you, can''t get this vision out my head
Got a grip, I''m holdin'' onto every thing you say
You''re makin'' this up just to get you in my bed
If you ain''t left, yeah, you can go ahead

[Pre-Chorus]
Thinkin'' ’bout you, it ain''t always ''bout me
Don’t make any sense in you bein'' lonely
Hurry up and get here now, but don''t speed
I''ll never get over you up under me

[Chorus]
I''m available (Yeah-yeah)
Oh, yes, I am (Yeah-yeah)
I''m available (Yeah-yeah)
Yeah, for you, I am
Don''t mean to sound desperate
But you made it like this
Say I''m number one on your to-do list
I’m available (Yeah-yeah)
I’m available

[Post-Chorus]
Got my arms wide open (Arms wide open)
Got my arms wide open (Arms wide open)

[Verse 2]
I get frustrated when you''re busy
Lately that''s been more than often, baby, what is this?
It''s like, do you even miss me?
Feelin'' less than priority, you got me convinced
Convinced I''m the only one, trippin'' in my head
Because in reality, you live in my bed
I''m supposed to hold onto everything you said
Yes or no question, don''t leave it unread

[Chorus]
Are you available (Yeah-yeah) now?
Oh, here I am, (Yeah-yeah) oh, here I am
Are you available? (Yeah-yeah)
Just tell me, "Yeah"
''Cause for you, I am
You know I am
Don''t mean to sound desperate
But you made it like this
Say I''m number one on your to-do list
Are you available (Yeah-yeah)
Like I''m available?

[Post-Chorus]
Got my arms wide open (Arms wide open)
Got my arms wide open (Arms wide open)', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'60', N'Houstonfornication ', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/UXn3X8f05iczECIs4VlYKcncQ4Jpdwg5', N'
[Intro:]
I might need me some ventilation
A little vacation, Houstonfornication
Mind redefine new renovations
Space coupe back out of the space station
Float around town, do that on the daily.

[Verse 1:]
How I''m supposed to feel safe, twelve live adjacent (twelve)
Yeah, crib built like a prison where that bitch is gated (yah)
Yeah, spendin'' all my time up there gettin'' faded (it''s lit)
Yeah, handin'' out the E! to the Entertainment (alright)
Yeah, you know on this side it''s poppin'' and it''s dangerous (pop it, pop it)
Ridin'' through the clouds we goin'' through the vapors (phew, phew)
I''m just tryna get the paper, stayin'' out the papers
It ain''t easily done, it ain''t easy (yeah)
Pop a seal like it''s Chris, make it look Breezy (it''s lit)
Wedding bands on my fist, it is freezing (straight up)
Throw the bands get a kiss, then she leave me (cash)
I just want the peace, it''s still Lambo'' over Mercedes, yuh
Just built the Astroworld playground to play with my baby, yuh (my baby)
Had a few pop singers, anyone could be yo'' mama (yeah)
Had some real conversations with my nigga Bill, about Congress, yeah (straight up)
We at the fest, come and link, per-reques, yeah (alright)
Send the pin, drop it in, GPS, ah (yeah)
Seein'' flashes, oh, no-no, that''s my neck, yeah (it''s lit)
I''ve been livin'' paranoid, watch yo'' step (yeah yeah)

[Chorus:]
Ain''t never freein'' up and never let y''all, man
We always forgive, but don''t forget easily (oh no)
Cut my phone off so they can never reach me
Life is just a maze, goin'' through my phases (yeah)
I might need me some ventilation
A little vacation, Houstonfornication
Mind redefine new renovations
Space coupe back out of the space station
If it rise on the East, land on the West
We gon'' make that shit pop, bust it for a check
Call the plays, link the squad, we gon'' make it cash.

[Verse 2:]
Yeah, nobody can press me but the press
Nobody can check me when it''s chess (ah, nah, for real)
They comin'' at my neck like Gillette (Gillette)
I''m out the cash, that''s the butterfly effect, yeah
I''ve been locked in for so long, I done got dreads, uh
Took the girl off the net, worked it up the net, uh
Iced out watches for the game, Patek the set
Had to move up off my block, it took finesse, yeah
Just keep droppin'' them bombs, you should probably save your breath, yeah
We ain''t gone play the steel, why you tryna funk the flex, yeah
All my dogs in my wheel, they gon'' ride you to the death, yeah
Elevator up the hill we ain''t never take the steps, uh (yeah, yeah)

[Chorus:]
Ain''t never freein'' up and never let y''all, man
We always forgive, but don''t forget easily (oh no)
Cut my phone off so they can never reach me
Life is just a maze, goin'' through my phases (yeah)
I might need me some ventilation
A little vacation, Houstonfornication
Mind redefine new renovations
Space coupe back out of the space station
If it rise on the East, land on the West
We gon'' make that shit pop, bust it for a check
Call the plays, link the squad, we gon'' make it cash.', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'61', N'Coffee Bean', N'Travis Scott', N'https://data.chiasenhac.com/data/cover/93/92648.jpg', N'https://audio.jukehost.co.uk/EFs6ekIMzzuHaiKcWIYDXLFl9TO67nrG', N'
[Intro:]
This is all.

[Chorus:]
Bad-bad news, I''m just bad-bad news
Good thing, the two, Bonnie and Clyde
The money and who?
It''s bad news, bad-bad for you
But I''m back on the coffee bean
Anything in between (this is all, this is all)
Back of the coffee line
Back-back-back in the bathroom line (this is all)

[Verse 1:]
How would you feel if I had you?
Trust me, you''ll be mad too
Shawty, we can be mad cool
Just hit me if anything past due
Your family told you I''m a bad move
Plus I''m already a black dude
Leavin'' the bathroom, my hands is half-rinsed
If only a nigga just had sense
Speaking in past tense
It''s been a week and a half since
We ain''t been speaking in mad mins
You feeling free in my absence
I''ve been going through a lot behind this glass tint, yeah
(this is all, this is all)

[Chorus:]
Back of the coffee line
Back-back-back in the bathroom line (this is-)
I know they told you I''d be bad for you
Don''t worry I''ll be back for you
All the money and cars
Stripper hoes and the tattoos, bad news
Back off a coffee bean
Reflecting on all you see (this is all, this is all)

[Verse 2:]
Stressing over award shows
She''s stressin'' over her wardrobe
Bought the mansion on foreclose
No matter how many tickets your tour sold
You feel this deep in your torso
Feel like someone''s readin'' your horoscope
Some shit only me and the Lord knows
SOS, that''s for those who hear this in morse code
Too many doors closed Cul-de-sacs and foreign doors
Still ended up at the North Pole
This is where remorse goes
This shit''ll have you in divorce court
Fighting over your seeds, writing over your deeds, sliding over your keys
Alimony and fees, as your lawyer proceeds
To give out bad news.

[Chorus:]
I''m just bad-bad news
Good thing, the two, Bonnie and Clyde
The money and who?
It''s bad news, bad-bad for you
But I''m back on the coffee bean
Anything in between (this is all, this is all)
Back of the coffee line
Back-back-back in the bathroom line (this is all)', N'3', N'3')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'62', N'Hollywood''s Bleeding', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/7yTkgAly8cPwVRqcHBpGxBwrvFBuHQrQ', N'
[Intro:]
Hollywood''s bleeding, vampires feedin''
Darkness turns to dust
Everyone''s gone, but no one''s leavin''
Nobody left but us
Tryna chase a feelin'', but we''ll never feel it
Ridin'' on the last train home
Dyin'' in our sleep, we''re living out a dream
We only make it out alone.

[Chorus:]
I just keep on hopin'' that you call me
You say you wanna see me, but you can''t right now
You never took the time to get to know me
Was scared of losin'' somethin'' that we never found
We''re running out of reasons, but we can''t let go
Yeah, Hollywood is bleeding, but we call it home.

[Verse:]
Outside, the winter sky turnin'' grey
City up in smoke, it''s only ash when it rains
Howl at the moon and go to sleep in the day
Love for everybody ''til the drugs fade away
In the mornin'', blocking out the sun with the shades
She gotta check her pulse and tell herself that she okay
It seem like dying young is an honor
But who''d be at my funeral? I wonder
I go out, and all they eyes on me
I show out, do you like what you see?
And now they closin'' in on me
Let ''em sharpen all they teeth’
This is more than I can handle
Blood in my Lambo''
Wish I could go, oh, I''m losin'' ho-ope
I light a candle, some Palo Santo
For all these demons, wish I could just go on.

[Chorus:]
I just keep on hopin'' that you call me
You say you wanna see me, but you can''t right now
You never took the time to get to know me
Was scared of losin'' somethin'' that we never found
We''re running out of reasons, but we can''t let go
Yeah, Hollywood is bleeding, but we call it home.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'63', N'Saint-Tropez', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/xRJOsjxk18uc5oOYhSYDmG1TfXJ9LZ4Q', N'
[Intro:]
Ooh, yeah, yeah, yeah.

[Chorus:]
Such a long time
I''ve been waitin'', I''ve been waitin'' for a long time
Such a long time
I''ve been waitin'', I''ve been waitin'' for a long time (Yeah)
Such a long time (Ooh)

[Verse 1:]
Ooh, this shit bliss, I''m so rich (Fuck that shit)
(Ooh) Abs like Abercrombie Fitch (Damn)
(Ooh) Milly, on my, whoa
Versace boxers on my dick (On my dick, damn)
Bud Light runnin'' through my piss (Ooh)
On a yacht 50 meters insuffish (Insufficient)
50 carats on my fist (On my fist)
The roof go down when I hit switch (Ooh, bitch)
I money ball like Bradley Pitt (Bradley Pitt, ayy)
I worked so hard for all this shit (All this shit)
Pumpin'' out classics in the Bat mobile, goin'' bat shit.

[Chorus:]
Such a long time
I''ve been waitin'', I''ve been waitin'' for a long time
Such a long time
I''ve been waitin'', I''ve been waitin'' for a long time
Such a long time.

[Verse 2:]
I''m in Saint-Tropez I had to check wrist (Wow)
I just bought my girl a new necklace (Necklace)
One, two, three, four, five, six
I''ll take ''em all don''t matter what the price is (What the price is)
I said I''m sorry mama for my vices (For my vices)
You''ll never understand what my life is (My life is)
One, two, three, four, five, six
Shit, I''m checking off my bucket list (My bucket list)
You try to give advice, I don''t need it
I''ve been doin'' what I want since fetus
What you call a holiday (Ooh), I call another day (Haha)
And I ain''t ever stoppin'', no apologies.

[Chorus:]
Such a long time
I''ve been waitin'', I''ve been waitin'' for a long time
Such a long time
I''ve been waitin'', I''ve been waitin'' for a long time
Such a long time.

[Outro:]
I''m in Saint-Tropez I had to check wrist.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'64', N'Enemies', N'Post Malone; DaBaby', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/rd4KD9KHpvIdiGB4RvuadOffp8yafUuP', N'
[Chorus: Post Malone]
Used to have friends now I got enemies (Ooh)
Used to keep ''em close, now they dead to me (Damn)
Used to have friends now I got enemies (Ooh)
Enemies, yeah it''s so sad.

[Verse 1: Post Malone]
They said I would never get this far, ah, ah
Think that we don''t see who you are, are, are?
Laughin'' to the bank like ha, ha, ha
Guess that I''m just talkin'' too much blah, blah, blah (Shut the fuck up)
So, where did y''all go?
When I was shit broke couldn''t even buy smokes
Now your mama needs tickets to my stadium show (Stadium show)
She love it when she hear me on the radio, oh
I know it''s hard
To swallow your pride
Sorry that you can''t get over me
Now you''re out my life, I''m so relieved, I.

[Chorus: Post Malone]
Used to have friends now I got enemies (Damn)
Used to keep ''em close now they dead to me (Ooh)
Money tend to show all they tendencies (Damn)
Enemies, yeah it''s so sad.

[Post-Chorus: Post Malone]
Sometimes, every time, they let me down
Sometimes, every time, they let me down
Used to have friends now I got enemies
Enemies, yeah it''s so sad.

[Verse 2: DaBaby]
Close to my enemies (Let''s go)
I need better energy (Huh?)
When I told you fuck you, you thought I was playin'', huh?
(Yeah, yeah) But I meant the shit literally
She want to vibe but I told her fuck that (Nope)
She looking at me like she surprised
They''re packin'' the post and I''m home alone
When the box hit the door, they go for 35
I try to put on for my partners, they turn into enemies right before a nigga eye
You reach for a shake, I''ma hold out a fist
Giving a nigga a quarter pound without the fries
I just went double platinum with no features
Just to show a nigga, I don''t really need him
Pass a man a plate and he can make it shake
It''s guaranteed he''ll fold and bite the hand that feed him
And I know you think that I ain''t see it
And I know you bitch ain''t got a car
Don''t make me go and buy a bitch a lil'' Prius
Fuck on the camera, we can call it even
Friends are like the autumn, every year they leavin''
And I''ma rake ''em in a pile, throw ''em in a bag
Tie them bitches up and leave ''em
''Cause most of these niggas are deceiving
And I.

[Chorus: Post Malone]
Used to have friends now I got enemies (Damn)
Used to keep ''em close now they dead to me (Ooh)
Money tend to show all they tendencies (Damn)
Enemies, yeah it''s so sad.

[Post-Chorus: Post Malone]
Sometimes, every time, they let me down
Sometimes, every time, they let me down
Used to have friends now I got enemies
Enemies, yeah it''s so sad.

[Bridge:]
It''s too late to turn this shit around (It''s too late)
Only held me down when you wanted me to drown
It''s too late to turn this shit around (It''s too late)
So don''t try and tell me that you''re happy for me now.

[Chorus: Post Malone]
Used to have friends now I got enemies
Used to keep ''em close now they dead to me (Dead to me)
Money tend to show all they tendencies (Tendencies)
Enemies, yeah it''s so sad.

[Post-Chorus: Post Malone]
Sometimes, every time, they let me down
Sometimes, every time, they let me down
Used to have friends now I got enemies
Enemies, yeah it''s so sad.

[Outro: Post Malone]
Ooh, it''s too late
It''s too late.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'65', N'Allergic', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/B6UjEXFDVdOBF2HBLV8jKmFXb5LhZv34', N'
[Intro:]
Wasted on Sunday
Erase you on Monday, allergic
Allergic
Gave in by Friday
Went straight back to sideways, allergic
Allergic.

[Post-Chorus:]
I took your pills and your drugs just to feel something else
''Cause I can''t feel you no more.

[Verse 1:]
So sad but true
You''re friends with all my demons
The only one that sees them
Too bad for you
So sad but true
Gave a hundred million reasons
But why can''t you believe them?
Too bad for you.

[Chorus:]
Yeah we fight and we fuck until we open the cuts
And now we''re soberin'' up but never sober enough, allergic
Allergic
Instead of holdin'' me down you''re only holding me up
It shouldn''t be so hard, this is impossible love, allergic
Allergic.

[Post-Chorus:]
I took your pills and your drugs just to feel something else
''Cause I can''t feel you no more.

[Verse 2:]
So sad but true
You''re friends with all my demons
The only one that sees them
Too bad for you
So sad but true
Gave a hundred million reasons
But why can''t you believe them?
Too bad for you.

[Outro:]
So sad but true
Gave a hundred million reasons
But why can''t you believe them?
Too bad for you.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'66', N'A Thousand Bad Times', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/aaKHEth6vykYBwAQKuJrSjdsDCLfvkOd', N'
[Intro:]
Yeah, oh, whoa, ooh
Yeah, yeah.

[Verse 1:]
Said you needed a ride, but you wanted my car
Without that face, girl, you wouldn''t get far
I really like you, despite who you are, oh (Who you are)
You see me on TV, you know I’m a star
You say you don’t know me, but I know that’s false
I’ll pay the price, girl, whatever that cost, oh (What it cost?)

[Pre-Chorus:]
You make my life so hard
But that''s what gets me off.

[Chorus:]
I had a thousand bad times
So what''s another time to me? (What''s that time, yeah)
You try to burn my house down
But what''s another house to me? (What''s that time, yeah)
''Cause I can take anything that you give me (What you give me)
It''s gonna take a lot more to kill me, bitch
So thank you for the grave (Yeah)
I needed me a place to sleep (Place to sleep)

[Verse 2:]
And I don’t wanna meet your mama (No)
She prolly crazier than you (She prolly crazier than you)
I’m gonna need some thicker armor (Armor)
To spend another night with you (And on and on and on)
Baby, I know just what to do
Every time you fuck me over, I''ll come back to you
Baby, I don''t want to know the truth (Know the truth)
I ignore them when they tell me all the shit you do (Shit you do)
I always get my heart broke like I needed the practice (Needed)
Foot on my throat ''til my world is collapsin'' (Damn)
But this what I chose, it''s the law of attraction, yeah (Attraction)
(And on and on and on)

[Pre-Chorus:]
You make my life so hard (So hard, so hard)
But that''s what gets me off.

[Chorus:]
I had a thousand bad times
So what''s another time to me? (So what''s that time, yeah)
You try to burn my house down
But what''s another house to me? (So what''s that time, yeah)
''Cause I can take anything that you give me (What you give me)
It''s gonna take a lot more to kill me, bitch (Kill me)
So thank you for the grave (Yeah)
I needed me a place to sleep (Place to sleep)

[Bridge:]
I should get out, but I still want more
I should get out, what am I waitin'' for?
It''s all the same to me, it''s all a game to me
It''s all the same to me, it''s all the same.

[Chorus:]
I had a thousand bad times
So what''s another time to me? (So what''s that time, yeah)
You try to burn my house down
But what''s another house to me? (So what''s that time, yeah)
''Cause I can take anything that you give me (What you give me)
It''s gonna take a lot more to kill me, bitch (Kill me)
So thank you for the grave (Yeah)
I needed me a place to sleep (Place to sleep)
We go there, oh.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'67', N'Circles', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/IhBQdyO5YI4xA5M0WAEYPaoQFMRaBTgO', N'
[Intro:]
Oh, oh, oh-oh
Oh,  oh, oh-oh
Oh,  oh, oh-oh, oh-oh, oh-oh.

[Verse 1:]
We couldn''t turn around ''til we were upside down
I''ll be the bad guy now, but no, I ain''t too proud
I  couldn''t be there even when I try
You  don''t believe it, we do this every time.

[Chorus:]
Seasons change and our love went cold
Feed  the flame ''cause we can''t let it go
Run away, but we''re running in circles
Run away, run away
I dare you to do something
I''m  waiting on you again, so I don''t take the blame
Run away, but we''re running in circles
Run away, run away.

[Verse 2:]
Let go, I got a feeling that it''s time to let go
I say so, I knew that this was doomed from the get-go
You thought that it was special, special
But it was just the sex though, the sex though
And I still hear the echoes (The echoes)
I got a feeling that it''s time to let it go, let it go.

[Chorus:]
Seasons change and our love went cold
Feed  the flame ''cause we can''t let it go
Run away, but we''re running in circles
Run away, run away
I dare you to do something
I''m  waiting on you again, so I don''t take the blame
Run away, but we''re running in circles
Run away, run away.

[Bridge:]
Maybe you don''t understand what I''m going through
It''s only me, what you got to lose?
Make up your mind, tell me, what are you gonna do?
It''s only me, let it go.

[Chorus:]
Seasons change and our love went cold
Feed  the flame ''cause we can''t let it go
Run away, but we''re running in circles
Run away, run away
I dare you to do something
I''m  waiting on you again, so I don''t take the blame
Run away, but we''re running in circles
Run away, run away.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'68', N'Die For Me', N'Post Malone; Future; Halsey', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/y21xeW6sV11wvifqWQufKmRGT4ZnCKGZ', N'
[Intro: Future & Post Malone]
Oh yeah, oh yeah, oh yeah
Yeah, you''d die for me
Said you''d die, said you''d die
But you lied, you lied to me

[Chorus: Post Malone]
Said you''d take a bullet, told me you would die for me
I had a really bad feeling you''d been lying to me
We were on the low, but you were getting high with me
When it''s past 11, that''s a different side I see
Said you''d die for me, you''d die for me, you''d die for me
But you lied to me, you lied to me, you lied to me
Said you''d die for me, you''d die for me, you''d die for me
But you lied to me, you lied to me, you lied to me

[Verse 1: Post Malone]
It was love at first sight, felt like you were chosen (Oh)
But that blood in your veins, yeah, I know it''s frozen (It''s so cold)
Got no patience no more (No), been waitin'' too long (Yeah)
You hid that shit away and I was the last one to know, bitch (Ayy, ooh)
I heard you comin'' in, I was lyin'' there awake (Awake)
Didn''t know that it was you, got the gun right out the safe (Damn)
Remember when you got my ass arrested (Wow)
At least when I was in jail, I got some rest in (Yeah)

[Pre-Chorus: Post Malone]
Ooh, I surrender (Ayy), time to forget ya (Ayy)
I''m too tired to forgive ya (Ayy), it''s too hard on my liver (Ayy)
And you know (Ayy) it’s all (Ayy) over now
All your friends (Ayy), you know (Ayy) they sold you out

[Chorus: Post Malone & Future]
Said you''d take a bullet, told me you would die for me (Die for me)
I had a really bad feeling you''d been lying to me (Lying to me)
We were on the low, but you were getting high with me (High with me)
When it''s past 11, that''s a different side I see (Side I see)
Said you''d die for me, you''d die for me, you''d die for me (Die, die, die)
But you lied to me, you lied to me, you lied to me (Lie, lie, lie)
Said you''d die for me, you''d die for me, you''d die for me (Die, die, die)
But you lied to me, you lied to me, you lied to me, yeah (You lied, yeah)

[Verse 2: Future]
It was a VIP, happened to be one of my best nights (Yeah)
9 AM, I came from out the club, it was daylight (Daylight)
Got a bad girl, I was treating her too nice (I was treating her too nice)
Caught you being vulnerable, that ain''t what I need (That ain''t what I need)
You just sold your soul, girl, quit crying (Sold your soul)
Your passport, it looks like you lying (Know you cold)
You broken down by your past, don''t deny it (You know I know)
Your ex called, you was vulnerable, you flying, nah (Flying)
Wasn''t on the best of terms, girl, I was trying (I was trying on ya)
I did everything to reach out to you (I was reaching out)
Said you never had me caught up in no drama (No drama)
I done ran into my karma (I done ran)

[Chorus: Future]
Said you''d take a bullet, told me you would die for me (That you would die)
I had a really bad feeling you''d been lying to me (You''d been lying)
We been on the low, but you been getting high with me (You was high)
When it''s past 11, that''s a different side I see (A different side)
Said you''d die for me, you''d die for me, you''d die for me (Said you''d die, you said you''d die)
But you lied to me, you lied to me, you lied to me (Know you''re lying)
Said you''d die for me, you''d die for me, you''d die for me (Oh yeah, oh yeah, oh yeah)
But you lied to me, you lied to me, you lied to me

[Verse 3: Halsey]
Settle down, I''ll spell it out, it''s simple enough
I came around, I figured out, should follow my gut
I don''t play anymore, I went through your phone
And called the girls in your DMs and took all them home
And I know it''s been a while since the last time you heard from me
Grew into a savage and that''s why they gave this verse to me
Turns out it shows ''cause they turn out at shows
I sold 15 million copies of a break-up note
Brought some strangers in our beds
And now you lost your right to privacy
Spilling all our secrets
When you thought they''d probably die with me
Know you fucking love it on the low
And you don''t have to say I''m crazy
''Cause I know nothing''s changed though

[Chorus: Post Malone & Halsey, Halsey]
Said you''d take a bullet, told me you would die for me
(You''d die, you''d die, you''d die)
I had a really bad feeling you''d been lying to me
(But you lied, you lied, you lied)
We were on the low, but you were getting high with me
(You''d die, you''d die, you''d die)
When it''s past 11, that''s a different side I see
(But you lied, you lied, you lied)
Said you''d die for me, you''d die for me, you''d die for me
(You''d die, you''d die, you''d die)
But you lied to me, you lied to me, you lied to me
(But you lied, you lied, you lied)
Said you''d die for me, you''d die for me, you''d die for me
(You''d die, you''d die, you''d die)
But you lied to me, you lied to me, you lied to me
(But you lied, you lied, you lied)', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'69', N'On The Road', N'Post Malone; Meek Mill; Lil Baby', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/75f6NcQAg2Gmpz0TOQbHhIXYP2gJKxKQ', N'
[Intro: Post Malone]
Mm, mm, mm
Mm.

[Chorus: Post Malone]
''Cause they ain’t ever seein'' me fold under pressure
They ain''t never, ever seen me fold, nah, never
Always keep one up on ’em ''cause I''m too clever
I would never, ever sell my soul, nah, never
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time.

[Verse 1: Post Malone]
Yeah, they bet I''ma fall
And I’m only 24, but, bitch, I been through it all
I got so many hits, can’t remember them all
While I''m takin’ a shit, look at the plaques on the wall
Y''all just sit back, won''t you kick back
Keep on actin'' like you did that, got no respect
For nobody who’s just fake in life, ayy, ayy
You ain''t really who you say you are
So pick up the pace, there ain''t no slowin'' me up
Get the fuck out my face, can you stop blowing me up?
''Cause one time is expensive, one mil a setlist
Bought a new car ''fore you walk out for breakfast, yeah.

[Chorus: Post Malone]
''Cause they ain''t ever seen me fold out of pressure
They ain''t never, ever seen me fold, nah, never
Always keep one up on ''em ''cause I''m too clever
I would never, ever sell my soul, nah, never
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time.

[Verse 2: Meek Mill]
Yeah, where you been? (Where you been?)
When it was time to do some work and put it in (Put it in)
I just be laughin'' when I see ''em, look at them (Ha)
Leave when I lose and pop back up as soon as I win (Uh)
You ain''t my day one and I know you not my friend
So I can''t judge you when you do some phony shit and just pretend
Like you really down with me, because bein'' loyal starts within
I seen that money overpower that love and turn it thin
But it ain''t stop me, I just kept goin'' up, took it on the chin
I wish every time they said I would fold, I''d make an M
Fuck around and be as rich as Jeff Bezos, say it again
Never lose, I go overtime on ''em, stay in that gym
Let''s get it.

[Chorus: Post Malone]
''Cause they ain''t ever seein'' me fold under pressure
They ain''t never, ever seen me fold, nah, never
Always keep one up on ''em ''cause I''m too clever
I would never, ever sell my soul, nah, never
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time.

[Verse 3: Lil Baby]
I''m tired of bein'' tired
This my last shot, you can''t be mad, at least I tried
We supposed to be grown, but yet you still acting childish
I can get on the jet alone, I don''t need no extra baggage
This year turned into a savage, I got baguettes in my necklace
Driving fast and I won''t crash it and I''m supposed to be sober
But some kind of way, I just keep getting older
It''s gonna take more than some pressure to fold me
Tried as hard as I can, but at this point it''s outta my hands
I ain''t runnin'' out of these bands for nothin'' or no one
She say I''m a dog, but it takes one to know one
Been goin'' hard, been by myself, I don''t need no love.

[Chorus: Post Malone]
''Cause they ain''t ever seein'' me fold under pressure
They ain''t never, ever seen me fold, nah, never
Always keep one up on ''em ''cause I''m too clever
I would never, ever sell my soul, nah, never
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time
''Cause I been on the road, been on the road, I
Quit actin'' like you been with me this whole time.

[Outro: Post Malone]
Mm, oh, oh no
Mm, oh, oh no
On the road, oh.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'7', N'Forever', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/116/115655.jpg', N'https://audio.jukehost.co.uk/w8EVpt1WEanB3ekr58EhOAjJQ3UtvKjZ', N'Could you be here with me forever, ever, ever?
Would you be here with me forever, ever, ever?
Wakin'' up all alone ain''t better, better, better
Every time I go the wrong way, you turn me back around
Turn me back like woah-woah, woah-woah, oh-oh-oh
Woah, woah-woah, forever, ever, ever, ever
Do you wanna look at me forever, ever, ever?

[Verse 1: Justin Bieber]
Yeah, do you see us in Vegas pushin'' that Monte Carlo?
Bet that money on baby, bet she don''t leave me, oh, no
See them, he wears in the desert, look like a lake in the sand
Would you watch the sun burn out with me forever, ever, ever, ever?
You still intimidate me, keep me up on my toes now
Better man, what you made me
Made me aware of what I was missin''
Been missin'' the way you give me envision, babe
Never thought I''d settle down, reckon I lied to myself
I was busy focusin'' on bein'' by myself
Set my feelings to the side, they all got dusty on a shelf
You wiped them down when I had nothin'' left

[Chorus: Justin Bieber]
Could you be here with me forever, ever, ever?
Would you be here with me forever, ever, ever?
Wakin'' up all alone ain''t better, better, better
Every time I go the wrong way, you turn me back around
Turn me back like woah-woah, woah-woah, oh-oh-oh
Woah, woah-woah, forever, ever, ever, ever
Do you wanna look at me forever, ever, ever?

[Verse 2: Post Malone]
When you asked me if I cheated, I said never (No way)
What are you willing to do to stay together? (''Gether)
How many times we gonna break up for the summer?
How many times you gonna try to call my mother? (Brrr-brrr)
Girl, you''re killin'' me, I don''t wanna act like I can fix this (Fix it, fix it)
I don''t wanna be the one that''s changed since Texas
Currency, it comes so naturally, but I can''t buy your love

[Chorus: Justin Bieber & Post Malone & Justin Bieber]
Could you be here with me forever, ever, ever?
Would you be here with me forever, ever, ever?
Wakin'' up all alone ain''t better, better, better
Every time I go the wrong way, you turn me back around
Turn me back like woah-woah, woah-woah, oh-oh-oh
Woah, woah-woah, forever, ever, ever, ever
Do you wanna look at me forever, ever, ever?

[Verse 3: Clever]
I promise I''m gonna love you ''til my dying day
Wake up, your face in my chest, your favorite hiding place
The roof is gone as we''re driving out the private gate
Countin'' the stars with our last name on the license plate
Woah, oh, oh, oh
I lied to myself ''bout trying to be here all alone
When I leave, it''s bye for now, it''s just never bye for long
Set my feelings aside, let''s settle down
Every time I go the wrong way, you turn me back around

[Chorus: Justin Bieber]
Turn me back like woah-woah, woah-woah, oh-oh-oh
Woah, woah-woah, forever, ever, ever, ever
Do you wanna look at me forever, ever, ever?

[Outro: Clever]
Would you be here with me forever, ever, ever?
Would you be here with me forever, ever, ever?
Wakin'' up all alone ain''t better, better, better
Every time I go the wrong way, you turn me back around', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'70', N'Take What You Want', N'Post Malone; Ozzy Osbourne; Travis Scott', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/0AS75aP0KHgKrfTcDX7J0aR2SIq9jLDH', N'
[Intro: Post Malone]
Oh.

[Chorus: Ozzy Osbourne]
I feel you crumble in my arms down to your heart of stone
You bled me dry just like the tears you never show
Why don''t you take what you want from me?
Take what you need from me
Take what you want and go
Why don''t you take what you want from me?
Take what you need from me
Take what you want and go.

[Verse 1: Post Malone]
I never needed anything from you
And all I ever asked was for the truth (All I ever asked was for)
You showed your tongue and it was forked in two
Your venom was lethal, I almost believed you (Almost believed you)
Yeah, you preyed on my every mistake
Waited on me to break, held me under hopin'' I would drown
Like a plague, I was wasting away
Tryna find my way out, find my way out (Find my way out)

[Pre-Chorus 1: Post Malone]
And it finally came the day
I start giving my heart away
For Heaven''s sake, my bones will break
But you never own my soul, no.

[Chorus: Post Malone]
I feel you crumble in my arms down to your heart of stone
You bled me dry just like the tears you never show
Why don''t you take what you want from me?
Take what you need from me
Take what you want and go
Why don''t you take what you want from me?
Take what you need from me
Take what you want and go.

[Verse 2: Travis Scott]
I took them stones you threw, made chains for the crew (Ice)
I brought up 10 hoes, this coupe only made for two (Yeah)
They all ran through it, it ain''t nothing left to do
I need some more reasons to live out this evening (Straight up)
I''ve been sippin'' forever and just taking whatever
Hoping, thinking whenever you''ll be back around
Let''s go our ways, whichever
You say how is however long
''Cause you know I never be alone.

[Pre-Chorus 2: Travis Scott]
Love (Love)
Shorty gon'' back (Shorty gon'' back)
Need it on sight (Need it on sight)
Crack it all back (Crack it all back)
Give her that pipe (Give her that pipe)
All of my cash (All of my cash)
Shawty went bad (Shawty went bad)

[Chorus: Ozzy Osbourne]
I feel you crumble in my arms down to your heart of stone
You bled me dry just like the tears you never show
Why don''t you take what you want from me
Take what you need from me
Take what you want and go
Why don''t you take what you want from me
Take what you need from me
Take what you want and go.

[Outro: Post Malone]
Take it all away
Why don''t you (Take what you want, take what you need)
Take what you need from me, yeah
(Take what you want) Why don''t you (Take what you need)
(What you need, yeah)', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'71', N'I''m Gonna Be', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/r3gryuFHZoFM66SAwtmC35QZeXtjHjOU', N'
[Intro:]
Can you feel it?
Can you feel it?
Can you feel it?
Can you feel it?

[Verse 1:]
Pop the top, fill my cup up, yeah
Keep ‘em pourin’ ''til I’m fucked up, oh yeah
Diamond simon with my shirt tucked, yeah
Mink was 80K that’s fucked up, oh yeah (Wow)
Hey, I’ll rock the shit but not for long (Not for, not for long)
Then I’ll go cop another one (''Nother one)
Some people think I’m livin’ wrong (Livin'' wrong, hey, hey)
We live this life but not for long, so.

[Chorus:]
I’m gonna be what I want, what I want, what I want, yeah (Yeah)
I’m gonna do what I want, when I want, when I want, yeah (Yeah)
I’m goin’ hard ''til I’m gone, ''til I’m gone, ''til I’m gone, yeah (Gone, yeah)
Can you feel it? Can you feel it?
I’m gonna be what I want, what I want, what I want, yeah (I wanna be)
I’m gonna do what I want, when I want, when I want, yeah (I wanna be)
I’m goin’ hard ''til I’m gone, ''til I’m gone, ''til I’m gone, yeah (''Til I''m gone, ''til I''m gone)
Can you feel it? Can you feel it? (Uh-huh)

[Verse 2:]
Hey, why you so mad? (Why you so mad?)
Never look back (Never look back)
Can’t let up the gas, we movin’ so fast, yeah, let’s make it last
Yeah, I’m on to you, mm-mm (Damn)
You’re too comfortable, ayy-ayy
Who you talkin’ to, mm-mm
Ain’t no time for you, ayy (Ooh)
I do what I want, Tom Ford on the yacht, ooh (Wow)
Richard Mille my watch, thousand dollar Crocs, ooh (Ooh)
They tryna tell me that it’s luck
You probably think I made it up
I got it all it ain’t enough
But I’m still gonna run it up, so (Ooh)

[Chorus:]
I’m gonna be what I want, what I want, what I want, yeah (What I want)
I’m gonna do what I want, when I want, when I want, yeah (What I want, what I want, yeah)
I’m goin’ hard ''til I’m gone, ''til I’m gone, ''til I’m gone, yeah (''Til I''m gone, ''til I''m gone, ''til I''m gone)
Can you feel it? (Ooh) Can you feel it? (Hey)
I’m gonna be what I want, what I want, what I want, yeah (What I want, what I want)
I’m gonna do what I want, when I want, when I want, yeah (What I want, what I want)
I’m goin’ hard ''til I’m gone, ''til I’m gone, ''til I’m gone, yeah (''Til I''m gone, ''til I''m gone, ''til I''m gone)
Can you feel it? (Ooh) Can you feel it?

[Bridge:]
Ever since I got a taste I’ve been goin’ (Goin'')
Every chip out on the table bitch I’m all in (Ayy)
I’m gonna be (Ayy)
I’m gonna be (Bitch, I’m gonna be)

[Chorus:]
I’m gonna be what I want, what I want, what I want, yeah (God damn, God damn)
I’m gonna do what I want, when I want, when I want, yeah (What I want, what I want)
I’m goin’ hard ''til I’m gone, ''til I’m gone, ''til I’m gone, yeah (''Til I''m gone, ''til I''m gone, ''til I''m gone)
Can you feel it? Can you feel it? Can you feel it?

[Outro:]
Can you feel it?
Can you feel it?', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'72', N'Staring At The Sun', N'Post Malone; SZA', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/e9M0Ub4TsJrNZfYwZkcj3iprEWOJTmyl', N'
[Intro: Post Malone]
Oh.

[Verse 1: Post Malone]
Wait (Wait)
I know you gotta a lotta shit you’d like to say (To say, to say)
Slow down, think you gettin’ lil’ carried away
You’re too close, to the flame
But you don’t, wanna turn around
Like you got me figured out.

[Pre-Chorus 1: Post Malone]
But girl, what I can promise is I’ll let you down
So don’t put up a fight
You’ll get lost in the light.

[Chorus: Post Malone]
If you keep staring at the sun, you won’t see
What you have become, this can’t be
Everything you thought it was
Blinded by the thought of us, so
Give me a chance, I will
Fuck up again, I warned
You in advance
But you just keep on starin’ at the sun.

[Verse 2: SZA]
Wait (Yeah, yeah, wait)
I know I got a lot of shit going on with me (Oh yeah, oh yeah, oh yeah)
Now we''re free to loving anyone other than me
I try to rewind, I get reminded that time don''t wait for nobody
Can''t get too close and don''t let it go.

[Pre-Chorus 2: SZA]
''Cause I can count on you to let me down
I won''t put up a fight
I got lost in the light (Oh)

[Chorus: Post Malone and SZA]
If you keep staring at the sun, you won’t see
What you have become, this can’t be
Everything you thought it was
Blinded by the thought of us, so
Give me a chance, I will
Fuck up again, I warned
You in advance
But you just keep on starin’ at the sun.

[Verse 3: Post Malone, SZA, and Both]
Wait
Got a couple little things I would like to say (Oh yeah)
Today is not your day
You should walk away (Oh yeah)
But you won’t listen, you just keep on (Oh yeah)

[Chorus: Post Malone and SZA]
Staring at the sun, you won’t see
What you have become, this can’t be
Everything you thought it was
Blinded by the thought of us, so
Give me a chance, I will
Fuck up again, I warned
You in advance
But you just keep on starin’ at the sun.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'73', N'Sunflower', N'Post Malone; Swae Lee', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/KiRb4TsVFJi1qezMDfZ9eIEZKajI4si0', N'
[Intro: Swae Lee]
Ayy, ayy, ayy, ayy (Ooh)
Ooh, ooh, ooh, ooh (Ooh)
Ayy, ayy
Ooh, ooh, ooh, ooh

[Verse 1: Swae Lee]
Needless to say, I keep it in check
She was all bad-bad, nevertheless (Yeah)
Callin'' it quits now, baby, I''m a wreck (Wreck)
Crash at my place, baby, you''re a wreck (Wreck)
Needless to say, I''m keeping her checked
She was all bad-bad, nevertheless
Callin'' it quits now, baby, I''m a wreck
Crash at my place, baby, you''re a wreck
Thinkin'' in a bad way, losin'' your grip
Screamin'' at my face, baby, don''t trip
Someone took a big L, don''t know how that felt
Lookin'' at you sideways, party on tilt
Ooh-ooh, some things you just can''t refuse
She wanna ride me like a cruise and I''m not tryna lose.

[Chorus: Swae Lee]
Then you''re left in the dust, unless I stuck by ya
You''re the sunflower, I think your love would be too much
Or you''ll be left in the dust, unless I stuck by ya
You''re the sunflower, you''re the sunflower.

[Verse 2: Post Malone]
Every time I''m leavin'' on ya (Ooh)
You don''t make it easy, no (No, no)
Wish I could be there for ya (Ooh)
Give me a reason to, oh (Oh)
Every time I''m walkin'' out (Oh)
I can hear you tellin'' me to turn around (Oh, oh)
Fightin'' for my trust and you won''t back down (No)
Even if we gotta risk it all right now, oh (Now)
I know you''re scared of the unknown (-Known)
You don''t wanna be alone (Alone)
I know I always come and go (And go)
But it''s out of my control.

[Chorus: Post Malone]
Then you''re left in the dust, unless I stuck by ya
You''re the sunflower, I think your love would be too much
Or you''ll be left in the dust, unless I stuck by ya
You''re the sunflower, you''re the sunflower.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'74', N'Internet', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/HObX9S2K1td9959euo5nKH2bHQtUdOUj', N'
[Intro:]
E-yeah-yeah-yeah (Oh)
Whoa
E-yeah-yeah-yeah.

[Verse:]
I just seen lil'' mama Instagram and she flexin''
Don''t care about your puppies, just that ass and them breastses
Oh girl, you a model? Damn, I never woulda guessed it
And if you tryna throw out all them vibes, I''ma catch ''em
The lifestyle we live is just too dangerous
Paranoid since they''ve been leakin'' my shit
Wonder if it''ll come out on the web
And I can''t help all these bitches on my dick
Takin'' a photo and postin'' that shit
Comin'' home late and I crawl into bed
She always be askin'' me, "Where have you been?"
Whoa.

[Pre-Chorus:]
The world has gone to shit and we all know that
People freakin'' out, like, hit the Prozac
Leon DeChino shorts got all the blogs mad
Well, fuck the internet, and you can quote that, whoa.

[Chorus:]
Instalove
Well, if ignorance is bliss, then don''t wake me up
And I''ll prolly be the last to know (Whoa)
''Cause I don''t get on the internet no more
Instalove
Well, if ignorance is bliss, then don''t wake me up
And I''ll prolly be the last to know (Whoa)
''Cause I don''t get on the internet no more.

[Outro:]
Ooh, ooh
Ooh, ooh
Ooh, ooh.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'75', N'Goodbyes', N'Post Malone; Young Thug', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/4oxADwYM6G4Ki21DYQ7xagjjx2KUFWhd', N'
[Verse 1: Post Malone]
Me and Kurt feel the same, too much pleasure is pain
My girl spites me in vain, all I do is complain
She needs something to change, need to take off the e-e-edge
So fuck it all tonight
And don''t tell me to shut up
When you know you talk too much
But you don''t got shit to say (Say)

[Chorus: Post Malone]
I want you out of my head
I want you out of my bedroom tonight (Bedroom)
There''s no way I could save you (Save you)
''Cause I need to be saved too
I''m no good at goodbyes

[Verse 2: Post Malone]
We''re both actin'' insane, but too stubborn to change
Now I''m drinkin'' again, 80 proof in my veins
And my fingertips stained, looking over the e-e-edge
Don''t fuck with me tonight
Say you needed this heart, then you got it (Got it)
Turns out that it wasn''t what you wanted (Wanted)
And we wouldn''t let go and we lost it
Now I''m a goner

[Chorus: Post Malone]
I want you out of my head (Head)
I want you out of my bedroom tonight (Bedroom)
There''s no way I could save you (Save you)
''Cause I need to be saved too (Saved too)
I''m no good at goodbyes

[Verse 3: Young Thug]
I want you out of my life
I want you back here tonight
I''m tryna cut you, no knife
I wanna slice you and dice you
My argue possessive, it got you precise
Can you not turn off the TV? I''m watchin'' the fight
I flood the garage, blue diamond, no shark
You''re Barbie life doll, it''s Nicki Minaj
You don''t need a key to drive, your car on the charger
I just wanna see the side, the one that''s unbothered (Yeah)
And I don''t want ya to never go outside (Outside)
I promise if they play, my niggas slidin'' (Slidin'')
I''m fuckin'' her, and the tour bus still ridin'' (Ridin'')
Yeah, yeah, yeah, yeah, yeah

[Chorus: Post Malone]
I want you out of my head (Head)
I want you out of my bedroom tonight (Bedroom)
There''s no way I could save you (Save you)
''Cause I need to be saved too (Saved too)
I''m no good at goodbyes

[Outro: Post Malone & Young Thug]
Goodbye, goodbye, goodbye (Bye, bye)
Goodbye, goodbye, goodbye (Bye, bye)
(Yeah, yeah, yeah, yeah, yeah)
Goodbye, goodbye, goodbye (Bye, bye, bye)
I''m no good at goodbyes
Goodbye, goodbye, goodbye (Bye, bye)
Goodbye, goodbye, goodbye (Bye, bye)
Goodbye, goodbye, goodbye (Bye, bye)
I''m no good at goodbyes', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'76', N'Myself', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/RWRu3EzFNV40XzvqqGVas59tFEeNu7Gm', N'
[Intro]
(I wish I could''ve been there myself)

[Chorus]
It’s what it is, it''s how I live
All the places I''ve been
I wish I could’ve been there myself
I made so much, spent so much
And I can''t get enough
I wish I could''ve been there myself
(Wish I could''ve been there myself)

[Verse 1]
Your second cousin lives in Orlando (Orlando)
And yeah, I just finished a show (Just finished a show)
People shoving shots down their damn throat
Some selling yes but I''m gonna say no (Gonna say no)

[Chorus]
It''s what it is, it''s how I live
All the places I''ve been (I''ve been)
I wish I could’ve been there myself
(Wish I could''ve been there myself)
I made so much, spent so much
And I can’t get enough (I can''t get enough)
I wish I could''ve been there myself

[Verse 2]
All of this American dreamin''
Everybody’s sick of believin''
Oh, let''s not give a fuck ''til
Giving a fuck has no meaning
Oh, I''m sick of believing
All of this American dreaming
Oh, let''s not give a fuck ''til
Giving a fuck has no meaning

[Chorus]
It''s what it is, it''s how I live
All the places I''ve been
I wish I could’ve been there myself
(Wish I could''ve been there myself)
I made so much, spent so much
And I can’t get enough (I can''t get enough)
I wish I could''ve been there myself
(Wish I could''ve been there myself)

[Outro]
No, I can''t get enough
Oh, oh, oh, oh', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'77', N'I Know', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/S4ObxkJzjuz9CVylSJ3zI71f2lZds9DW', N'
[Verse 1:]
Our love will never be another
You''re just a devil undercover
Found you when you were in the gutter
Shit was sweet until I was a sucker, shout out Jonas Brothers
I learned more than I cared to discover
Don''t you know that I''m more than a come up
You act up and then act like it''s nothin''
Sold your soul, you stone cold, you a stunner.

[Pre-Chorus:]
Every time you left, shit was never right
In another bed every single night
Had it to a science, you were so precise
See it in your eyes, saw you in the light
Somehow, mami, I still want you
Listen to me, don''t drive away (Drive away)
Kill me softly, your hold on me is
Somethin'' I can''t explain.

[Chorus:]
I know you could never be my bitch
Shit could never be like this
I know, stop thinkin'' you''re in my plans
Hundred times you blew another chance
I know you were gettin'' down on the low
Then runnin'' back to me in the morning
I know shit could never be like this
You could never be my bitch
No, no.

[Verse 2:]
Our love will never be another (Uh)
You''re just a devil undercover (Undercover)
Found you when you were in the gutter (In the gutter)
Shit was sweet until I was a sucker (''Til I was a sucker)
Rather be single for life (Single for life, rather be single)
Then be fuckin'' with you
I ain''t rollin'' the dice, no (Rollin'' the dice)
I ain''t playin'' to lose (No)

[Pre-Chorus:]
Everytime you left, shit was never right
In another bed every single night
Had it to a science, you were so precise
See it in your eyes, saw you in the light
Somehow, mami, I still want you
Listen to me, don''t drive away (Don''t drive away)
Kill me softly, your hold on me is
Somethin'' I can''t explain.

[Chorus:]
I know you could never be my bitch
Shit could never be like this
I know, stop thinkin'' you''re in my plans
Hundred times you blew another chance
I know you were gettin'' down on the low
Then runnin'' back to me in the morning
I know shit could never be like this
You could never be my bitch
No, no.

[Outro:]
Be my bitch
It could never be like this
Shit could never be like this
Shit could never be like this.', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'78', N'Wow.', N'Post Malone', N'https://data.chiasenhac.com/data/cover/110/109188.jpg', N'https://audio.jukehost.co.uk/ryxZjDrzWK2KxhySpVD72idh8phYgPlX', N'
[Verse 1]
Said she tired of little money, need a big boy
Pull up 20 inch blades like I''m Lil’ Troy
Now it''s everybody flockin'', need a decoy
Shawty mixing up the vodka with the LaCroix, yeah
G-Wagen, G-Wagen, G-Wagen, G-Wagen
All the housewives pullin’ up (Up, up)
I got a lot of toys, 720S bumpin'' Fall Out Boy
You was talkin'' shit in the beginning (Mm-mm)
Back when I was feelin'' more forgivin'' (More forgivin'')
I know it piss you off to see me winnin'' (See me winnin'')
See the igloo in my mouth when I be grinnin’ (I be grinnin’), yeah

[Chorus]
Hunnid bands in my pocket, it''s on me
Hunnid deep when I roll like the army
Get more bottles, these bottles are lonely
It’s a moment when I show up, got ''em sayin'', "Wow" (Wow, wow)
Hunnid bands in my pocket, it''s on me (On me)
Yeah, your grandmama probably know me (Know me)
Get more bottles, these bottles are lonely
It’s a moment when I show up, got ''em sayin'', "Wow" (Wow, wow)

[Verse 2]
Everywhere I go (Hey)
Catch me on the block like I''m Mutombo (Wow)
750 Lambo in the Utah snow (Skrrt)
Trunk in the front like that shit Dumbo, yeah
Cut the roof off like a nip-tuck
Pull up to the house with some big butts
Turn the kitchen counter to a strip-club (Yeah, wow)
Me and Dre came for the...
When I got guap, all of y''all just appeared (Wow)
Before I dropped Stoney, none of y''all really cared (Cared)
Now they always say, "Congratulations," to the kid (Kid)
And this is not a 40, but I''m pourin'' out this shit (Yeah)
Used to have a lot, but I got more now (Yup)
Made another hit ''cause I got bored now (Yup)
Always goin'' for it, never punt fourth down
Last call, Hail Mary, Prescott touchdown, ayy

[Chorus]
Hunnid bands in my pocket, it''s on me
Hunnid deep when I roll like the army
Get more bottles, these bottles are lonely
It’s a moment when I show up, got ''em sayin'', "Wow" (Wow, wow)
Hunnid bands in my pocket, it''s on me (On me)
Yeah, your grandmama probably know me (Know me)
Get more bottles, these bottles are lonely
It’s a moment when I show up, got ''em sayin'', "Wow" (Wow, wow)

[Outro]
Got ''em sayin'', "Wow"
Ayy, ayy, wow
Sayin'', "Wow"
Wow
Wow', N'3', N'4')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'79', N'Big City Boi', N'Binz; Touliver', N'https://data.chiasenhac.com/data/cover/124/123404.jpg', N'https://data3.chiasenhac.com/downloads/2100/1/2099985-5615962a/128/Big%20City%20Boi%20-%20Binz_%20Touliver.mp3', N'
[Intro:]
Em on top, không phải trending
Không phải YouTube
Không phải trên Zing
Anh on top, em ở trên anh
Beat Touliver drop người ta gọi tên anh.

Big city
Big city boi
Big city
Big city boi
Big city
Big city SpaceSpeakers in da house
Make some m**** f**** noise.

1. Thả tim đầy story em
Nhắn tin đầy trong DM
Có phiền thì sorry em
Đón, 10 giờ PM?
Yea em thích coi SEA games (Dô)
Hợp âm anh thích là Cm (Đô)
Xe em thích BM
Việc anh thích là see em
Trói em bằng cà vạt
Penhouse trên Đà Lạt
Nếu mà ngoan em sẽ bị thương
Nếu mà hư em sẽ được phạt
K R A Z Y about u
Hay là mang thêm friend đi không sao đâu
Yea anh không thường say yes
Với em không thể say no
Nhìn anh look nào cũng fresh
Make them haters say wow.

[Chorus:]
Big city
Big city boi
Big city
Big city boi
Big city
Big city SpaceSpeakers in da house
Make some m**** f**** noise
We up all night, what u gonna do
Ngay sát DJ, what u gonna do
Them bottles keep coming
What u gonna do
Thành phố này không ngủ
Tell me what u gonna do.

2. Từ lầu cao cho tới cuối ngõ
Mang chất đường phố về tận lối nhỏ
Đáy quần ở dưới gối oh
Rap game này anh đại diện không thể chối bỏ
Nhạc đơn giản, không phải cầu kì
Đừng hỏi anh tình yêu màu gì
Mấy thằng ghét anh muốn spotlight
Sorry anh là cầu chì
Không lòng vòng anh như Hải Phòng
Thích anh rồi phải không?
Không cần vội em như Hà Nội
Cần thêm thời gian em mới trải lòng
Cần em như anh Cần thơ
Thật ra anh chỉ muốn em gần hơn
Thật ra anh chỉ muốn ta tương tác
Anh chưa còn ngủ, em nói ngừng mơ
Không chịu ngủ, anh như Sài Gòn
Party với bạn all night long
Nếu mà đó là thứ em muốn
Anh có thể làm cho em hài lòng
Nghiện thuốc có thể Lào Cai
Nhưng nghiện em không thể nào cai
Trai hư anh không phải diễn
Nhưng trai tốt anh phải vào vai.', N'3', N'5')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'8', N'Running Over', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/aW3xfFuIs92KrI5kpFCXkufbWvgJ5G4o', N'From the beginning, it was ending
We were emotionally pending
Jeopardy, second guessing
Got all the questions to my answers

[Chorus: Justin Bieber]
Keep runnin'' over me with your lovin''
I''m only right here for your consumption
Keep runnin'' over me with your lovin''
Lookin'' like it''s turnin'' into something

[Verse 2: Justin Bieber]
Wednesday
It feel like a Tuesday when you met me
I remember it like it was yesterday
You just said, "Hello," I lost my sanity
Thought you was lookin'' through me
Then you made me laugh with personality
When you said goodbye that was a tragedy
Had to get a lesson in anatomy
You just ran me over
Look out, watch out, got me on the defense
Thought love at first sight was just a false pretense
Took my hat off, made me pledge allegiance
Everything was in divine sequence

[Chorus: Justin Bieber]
Keep runnin'' over me with your lovin''
I''m only right here for your consumption
Keep runnin'' over me with your lovin''
Lookin'' like it''s turnin'' into something

[Post-Chorus: Justin Bieber]
Better that than turnin'' into nothing (Way-oh, way-oh)
Ain''t no interruptin'' this eruption (Way-oh, way-oh)

[Verse 3: Lil Dicky]
LD, uh
I believe in love
Girl, you got my hopes all up
When I left you, when I met you
I called mom and told her ''bout it
I got all up on your IG and was scrollin'' down for hours
I got back to 2015 and you started lookin'' young, so I stopped (Ooh)
Post intercourse when you walk by (Ass, ass, ass)
More buns than a Shop Rite (Woah)
And you wanna sleep over my crib?
Let me go and get you a soft t-shirt, here (Soft tee)
What are our kids gonna be like? (Hmm)
What is your skin routine like?
Girl, just run around bed with me
I''ll flirt with you all cleverly
I''ll lock you down, Pat Beverley
I''ll kiss your breasts all tenderly, what''s up? (Breast)
How you so hot and cute? (How?)
I wanna make a language up with you
You''re already drivin'' me crazy, so just

[Chorus: Justin Bieber]
Keep runnin'' over me with your lovin''
I''m only right here for your consumption
Keep runnin'' over me with your lovin''
Lookin'' like it''s turnin'' into something

[Post-Chorus: Justin Bieber]
Better that than turnin'' into nothing (Way-oh, way-oh)
Ain''t no interruptin'' this eruption (Way-oh, way-oh)', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'80', N'Mascara', N'Chillies', N'https://data.chiasenhac.com/data/cover/114/113796.jpg', N'https://audio.jukehost.co.uk/02oPvu3MalnywQsfNQVbuEw7fXnV02oQ', N'
[Intro/Verse 1]
Câu tạm biệt em nói trên môi
Anh biết đây là đêm cuối bên nhau mà thôi
Nhìn lại từng khoảnh khắc từng tồn tại, ta từng khờ dại

[Refrain]
Mắt em nhoà đi mascara
Em trách anh không đi đến nơi gọi là nhà
Dù vạn ngày cũng chẳng để lại gì
Tim mình thầm thì

[Chorus]
Mình còn lại gì ngoài cuộc gọi hai giờ đêm
Mình còn lại gì ngoài ngày dường như dài thêm
Nụ cười mà ta vô tình bỏ lại trên môi em sớm mai giờ xa khuất

Mình còn lại gì ngoài ngàn lời yêu đã trao
Mình còn lại gì ngoài tình đã phai từ hôm nào
Lại một ngày trôi đi về mây ngàn
Em đi cùng đêm tàn mờ sương khói

[Verse 2]
Câu tạm biệt em nói trên môi
Anh biết đây là đêm cuối ta say mà thôi
Nhìn lại từng khoảnh khắc từng tồn tại, ta từng khờ dại


[Refrain]
Mắt em nhoà đi mascara
Em trách anh không đi đến nơi gọi là nhà
Dù vạn ngày cũng chẳng để lại gì
Tim mình thầm thì

[Chorus]
Mình còn lại gì ngoài cuộc gọi hai giờ đêm
Mình còn lại gì ngoài ngày dường như dài thêm
Nụ cười mà ta vô tình bỏ lại trên môi em sớm mai giờ xa khuất

Mình còn lại gì ngoài ngàn lời yêu đã trao
Mình còn lại gì ngoài tình đã phai từ hôm nào
Lại một ngày trôi đi về mây ngàn
Em đi cùng đêm tàn mờ sương khói

Hu-u-hu
Hu-u-hu
Hu-u-hu
Hu-u-hu

Hu-u-hu
Hu-u-hu
Hu-u-hu
Hu-u-hu


[Chorus] [×2]
Mình còn lại gì ngoài cuộc gọi hai giờ đêm
Mình còn lại gì ngoài ngày dường như dài thêm
Nụ cười mà ta vô tình bỏ lại trên môi em sớm mai giờ xa khuất

Mình còn lại gì ngoài ngàn lời yêu đã trao
Mình còn lại gì ngoài tình đã phai từ hôm nào
Lại một ngày trôi đi về mây ngàn
Em đi cùng đêm tàn mờ sương khói

Oh-ooh-oh
Oh-ooh-oh
Oh-ooh-oh
Oh-ooh-oh

Oh-ooh-oh
Oh-ooh-oh
Oh-ooh-oh
Oh-ooh-oh

[Outro]
Câu tạm biệt em nói trên môi
Anh biết đây là đêm cuối ta say mà thôi
Nhìn lại từng khoảnh khắc từng tồn tại, ta từng khờ dại', N'1', N'6')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'82', N'Ðen Ðá Không Ðu?ng (Remastered)', N'Amee', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'https://data3.chiasenhac.com/downloads/2099/1/2098273-90ab56dc/128/Den%20Da%20Khong%20Duong%20Remastered_%20-%20Amee.mp3', N'
[Verse 1:]
Chiều nay qua quán quen
Chẳng biết uống gì, nghĩ nghĩ suy suy
Cà phê hay nước cam?
Sữa tươi hay trà?
Mà thôi mới uống hôm qua
Rồi em trông thấy anh
Ánh mắt nụ cười làm em bỗng lười nghĩ suy
Thôi! Cho em đen đá không đường!
(Còn cho anh ly trà sữa chân trâu đen)

[Pre-Chorus:]
Vì em đã gặp anh...
Vì em đã gặp anh...

[Chorus:]
Anh chính là đường đấy it’s you ooh oh
Anh chính là đường đấy it’s you ooh oh.

[Verse 2:]
Trời đang nắng tự dưng lại mưa
Mùa đông liệu đã về chưa
Hay là anh đã mang mặt trời đi mất
Cà phê đắng đắng mà em vẫn khen rằng ngon ngon thật
Dù em đây chỉ thích đồ ngọt. Tại sao hả?

[Pre-Chorus:]
Vì em đã gặp anh...
Vì em đã gặp anh...

[Chorus:]
Anh chính là đường đấy it’s you ooh oh
Anh chính là đường đấy it’s you ooh oh.

[Bridge:]
Nananananana
Nananananana
You’re my sugar sugar mmm (ooh it’s you)
Sugar sugar
You’re my sugar sugar (ooh it’s you)
Sugar sugar.

[Chorus: x2]
Anh chính là đường đấy it’s you ooh oh
Anh chính là đường đấy it’s you ooh oh.

Chiều nay qua quán quen..
Ánh mắt nụ cười làm em bỗng lười nghĩ suy
Thôi! Cho em đen đá không đường!', N'1', N'7')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'83', N'Mama Boy', N'Amee', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'https://data3.chiasenhac.com/downloads/2099/1/2098274-b914c852/128/Mama%20Boy%20-%20AMEE.mp3', N'
Đừng để em làm MAMA
Đừng để em làm MAMA vì thế không đúng đâu
Vì em không phải MAMA
Vì em không phải MAMA MAMA của anh đâu

Tính cách của anh hay mộng mơ nhiều
Rất thích hồn nhiên như thời niên thiếu
Lắm lúc sợ anh theo bạn chơi bời
Anh xua tay "Úi Xời ơii"
Cứ hết tiền tiêu anh gọi xin mẹ
Lớn lắm rồi sao mà như là em bé
Ấy thế mà đôi khi lại than phiền dăm ba chuyện bé như hột me
Ngày qua ngày như thế thời gian cứ trập trùng
Nhìn bao việc như thế nên lòng em cứ bập bùng mà bập bùng mà oh oh có ai giúp em
Sáng anh ngồi trên ghế cùng video game
Chiều anh nằm trên ghế đu đưa theo bao tiếng nhạc La la la la la la la la la la la

Đừng để em làm MAMA
Đừng để em làm MAMA vì thế không đúng đâu
Vì em không phải MAMA
Vì em không phải MAMA MAMA của anh đâu
Mama ooh x3

This is A M E E
Yêu anh mấy núi cũng trèo mấy sông cũng lội mấy đèo cũng qua
Mà đôi khi em mệt quá vì anh làm em tưởng em là mama
Chim khôn nói tiếng rảnh rang người khôn nói tiếng dịu dàng dễ nghe
Mà hình như em dễ quá nên em chiều anh cứ như là em bé
Sự đời nước mắt soi gương càng yêu nhau lắm càng thương nhau nhiều
Thôi thì em cũng chơi liều nói cho anh biết để còn mãi yêu
Đàn ông nông nổi giếng khơi đàn bà sâu sắc như cơi đựng trầu
Em thề em cũng hơi rầu nên mong anh sớm tỉnh đầu óc ra ra ra!

Ngày qua ngày như thế thời gian cứ trập trùng
Nhìn bao việc như thế nên lòng em cứ bập bùng mà bập bùng mà oh oh có ai giúp em
Sáng anh ngồi trên ghế cùng video games
Chiều anh nằm trên ghế đu đưa theo bao tiếng nhạc
La la la la la la la la la la la

Đừng để em làm MAMA
Đừng để em làm MAMA vì thế không đúng đâu
Vì em không phải MAMA
Vì em không phải MAMA MAMA của anh đâu
Chẳng ai muốn làm MAMA
Chẳng ai muốn làm MAMA MAMA như thế đâu
Vì em không phải MAMA
Vì em không phải MAMA MAMA của anh đâu', N'1', N'7')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'85', N'Ex’s Hate Me (Part 2)', N'Amee; B Ray', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'https://data3.chiasenhac.com/downloads/2099/1/2098276-ff96edf2/128/Ex___s%20Hate%20Me%20Part%202_%20-%20Amee_%20B%20Ray.mp3', N'
All my ex’s hate me
And I hate them back
And it’s all because of me
And it’s all because of me.

Em đã nghe bài ca anh viết về em
Về cô người yêu mà anh là người đứng xem
Bước trên thánh đường không còn vấn vương
Sorry babe em đã tổn thương quá nhiều.

Câu chuyện sau chia tay chẳng ai đúng sai
Mà do cả hai chẳng thể cùng đến tương lai
Nên đành chấp nhận, nỗi đau cũng cần
Cho cả hai yêu thêm người sau tốt hơn.

Cám ơn anh vì ngày tháng qua
Và cám ơn anh vì đã để chúng mình xa
Để rồi mới biết ra, ta vốn không thuộc về nhau
Chúc anh yêu được người tốt hơn
Sẽ bên anh một quãng đường dài hơn
Đừng vì những tổn thương mà tổn thương một người khác.

All my ex’s hate me
And I hate them back
And it’s all because of me
And it’s all because of me.

All my ex’s hate me
And I hate them back
And it’s all because of me
And it’s all because of me.

[Rap:]
Cô ta nói là anh can đảm
Thì đến nơi đây chỉ tay vào những vết thương mà anh than vãn
Có mỗi cô người yêu cũ mà hết năm này năm nọ kể hoài
Nhưng không bao giờ tôi nghe anh kể về đống đổ nát mà anh để lại
Anh ngoài kia ánh đèn sân khấu, đuổi theo một giấc mơ nung nấu
Từ khi còn bé, thì tôi tự hỏi trong tâm trí anh tôi sẽ đựng đâu?
Dày vò thêm bao lâu, cho 1 con người thì nó sẽ đáng?

Ước mơ của tôi là anh, nhưng anh đang mơ về 1 điều khác
Xin đừng trao cho nhau tình yêu, rồi khi nhận lại thì chỉ là căm hận
Mấy con bạn anh không thích đáng tin cậy hơn anh gấp trăm lần
Anh muốn người khác làm gương, nhưng không bao giờ nhìn thấy bản thân
Anh muốn chơi trò vợ chồng, thì ngón tay này còn thiếu chiếc nhẫn
Oh, bởi vì sự thật không bao giờ như người ta nghe nói
Hàng trăm ngàn người nghe anh hát, nhưng rồi ai sẽ lắng nghe tôi?
Nhắm mắt và buông tay thôi, chuyện đã rồi cũng không thể trách
Bản nhạc này là của tôi, nhưng anh cũng khiến tôi viết về anh
Vì thế nên xin 1 lần.

Nếu ta quay về như lúc xưa ngày còn bên nhau
Thì chớ buông ra vài câu nói làm tim em thêm đau
Bước trên con đường nay đã không còn anh chung lối
Xóa đi thôi, nhẹ nhàng cuốn trôi.

All my ex’s hate me
And I hate them back
And it’s all because of me
And it’s all because of me.

All my ex’s hate me
And I hate them back
And it’s all because of me
Because of me.', N'1', N'7')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'86', N'Sao Anh Chua V? Nhà (Remastered)', N'Amee; Ricky Star', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'https://data3.chiasenhac.com/downloads/2099/1/2098277-79d76aa1/128/Sao%20Anh%20Chua%20Ve%20Nha%20Remastered_%20-%20Ricky.mp3', N'
[Verse 1: AMee]
Trời đã gần sáng rồi
Mà nỗi nhớ anh vẫn còn ngổn ngang
Trời đã gần sáng rồi
Mà em vẫn ngồi hát lời thở than.

Rằng anh ơi đừng rong chơi
Đừng mải mê những điều buông lời
Mà quên đi rằng trong đêm còn có người đợi anh
Anh ơi ngoài kia bao điều mặn đắng
Anh đừng lăn tăn, về nhà thôi
Trời đã gần sáng rồi!

[Chorus: AMee]
Em đợi anh nhé
Em chờ anh nhé
Vui thôi đừng vui quá còn về với em
Kim đồng hồ vẫn từng nhịp Tik Tok
Mà sao, sao anh chưa về?

Anh đừng cứ thế
Anh đừng mãi thế anh ơi
Đừng làm trái tim này vỡ đôi
Anh đừng cứ mãi nói lời xin lỗi rồi thôi
Giờ này anh đâu rồi ?

[Rap: Ricky Star]
R-I-C-K-Y!
Mấy giờ rồi vậy cà ? Anh taxi à! Anh taxi ơi!
Mới đi ra ngoài có 30 phút mà đã liên tục phải hax xì hơi
Em đăng trạng thái, em up story
Em bảo là nhớ Ricky OTĐ
Nhà hàng chưa kịp đem ra món khai vị
Thì tin nhắn điện thoại kêu anh về nhà đi (Là sao?)

Khi tiệc chưa kịp tàn, đang vui cũng lũ bạn
Ngoài đường thì đông. Ôi, đường về thật gian nan
Anh sợ cái đèn đỏ; Anh chờ cái đèn xanh
Em gọi anh về liền, không là đời anh tàn canh.

Anh vượt qua ngã tư ngã 5 ngã 7
Rủ rê anh ăn chơi, anh bỏ qua cả thẩy
Em quá đáng lắm luôn cử ỷ đẹp là có quyền
Nhưng mà chờ xíu đi, quẹo phải tới liền nè (Babe!)

[Chorus: AMee]
Em đợi anh nhé
Em chờ anh nhé
Vui thôi đừng vui quá còn về với em
Kim đồng hồ vẫn từng nhịp Tik Tok
Mà sao, sao anh chưa về?

Anh đừng cứ thế
Anh đừng mãi thế anh ơi
Đừng làm trái tim này vỡ đôi
Anh đừng cứ mãi nói lời xin lỗi rồi thôi
Giờ này anh đâu rồi?

[Bridge: AMee]
15 phút, anh còn 5 phút, anh còn 3 phút mau mau về
Về đi nhé anh về đi nhé. Nếu không, hmm nếu không thì
15 phút, anh còn 5 phút, anh còn 3 phút nhà bao việc
Tại sao cứ, em tại sao cứ ngóng trông, cứ ngóng trông anh hoài.

[Post-Chorus: AMee]
Anh đừng cứ thế
Anh đừng mãi thế anh ơi
Đừng làm trái tim này vỡ đôi
Anh đừng cứ mãi nói lời xin lỗi rồi thôi
Giờ này anh đâu rồi?

[Outro: AMee]
Sao sao anh chưa về?
Mà sao anh chưa về?', N'1', N'7')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'88', N'G9 (Outro)', N'Amee', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'https://data3.chiasenhac.com/downloads/2099/1/2098279-85655e2e/128/G9%20Outro_%20-%20Amee.mp3', N'
I can’t sleep
Wish you have a good night
I still remember, the day we met in March
I still remember, the way you feel my heart
I still remember, the day we sing it loud
I still remember, the way you feel so proud.

Good~ night
Good~ night
Good~ night
Wish you have a
Good~ night
Good~ night
Good~ night
Have a good night.', N'1', N'7')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'89', N'dreAMEE (Intro)', N'Amee', N'https://data.chiasenhac.com/data/cover/124/123060.jpg', N'https://data3.chiasenhac.com/downloads/2099/1/2098270-c7ee7a5e/128/dreAMEE%20Intro_%20-%20Amee.mp3', N'
So I have a dream
My world is gleaming
All the stars are sparkling
Shinin'' me - a dreamee
Oh oh oh oh Dreamee
Oh oh oh oh Dreamee
All the stars are sparkling
Shinin'' me – Amee.', N'1', N'7')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'9', N'Take It Out On Me', N'Justin Bieber', N'https://data.chiasenhac.com/data/cover/117/116028.jpg', N'https://audio.jukehost.co.uk/iGX6IAYfcCECFAasEEgFQquglmgiivmY', N'Kid
You can take it out on me
You can take it out on me

[Verse 1]
Sometimes I don''t mind you havin'' the worst day
Oh, no, I don''t
All the stress turns into built-up energy
Yes, it does
On the edge, I''m your net, go on and fall back
Easy on that pressure point, I love to push that
Let your frustrations out right here
I''m your psychiatrist, let''s talk about it
We can use sign language, I know your body
I see the weight weighin'' on your shoulders
It''s so heavy
Let me be the meaning of your composure
Oh, oh

[Chorus]
You can take it out on me
You can take it out on me
I''ll be your punching bag, hit me with all of your might
And get it all out ''til you feel light
And take it out on me
You can take it out on me

[Verse 2]
Yeah, I''m your plug
Whatever you need, I''ll make sure you get enough
And when your battery gets low
I''ma be the one to charge you up
Let me massage your mental and your physical
Whenever you lose doubt, I''ll be your miracle
When you''re around me, you should feel invincible
Please don''t forget that

[Chorus]
You can take it out on me, yeah-yeah-yeah-yeah
You can take it out on me, hey, hey, hey, hey
I''ll be your punching bag, hit me with all of your might (Ayy)
And get it all out ''til you feel light (Ooh-oh)
And take it out on me (Oh-oh-woah)
You can take it out on me (Oh-oh-woah)', N'1', N'1')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'90', N'Starboy', N'The Weeknd; Daft Punk', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744433-c26a22d6/128/Starboy%20-%20The%20Weeknd_%20Daft%20Punk.mp3', N'
1. I''m tryna put you in the worst mood, ah
P1 cleaner than your church shoes, ah
Milli point two just to hurt you, ah
All red Lamb'' just to tease you, ah
None of these toys on lease too, ah
Made your whole year in a week too, yah
Main bitch out your league too, ah
Side bitch out of your league too, ah.

House so empty, need a centerpiece
20 racks a table cut from ebony
Cut that ivory into skinny pieces
Then she clean it with her face man I love my baby
You talking money, need a hearing aid
You talking bout me, I don''t see the shade
Switch up my style, I take any lane
I switch up my cup, I kill any pain.

[Chorus:]
Look what you''ve done
I''m a motherfuckin'' starboy
Look what you''ve done
I''m a motherfuckin'' starboy.

2. Every day a nigga try to test me, ah
Every day a nigga try to end me, ah
Pull off in that Roadster SV, ah
Pockets overweight, gettin'' hefty, ah
Coming for the king, that''s a far cry, ah
I come alive in the fall time, I
No competition, I don''t really listen
I''m in the blue Mulsanne bumping New Edition.

House so empty, need a centerpiece
20 racks a table cut from ebony
Cut that ivory into skinny pieces
Then she clean it with her face man I love my baby
You talking money, need a hearing aid
You talking bout me, I don''t see the shade
Switch up my style, I take any lane
I switch up my cup, I kill any pain.

[Chorus:]
Look what you''ve done
I''m a motherfuckin'' starboy
Look what you''ve done
I''m a motherfuckin'' starboy.

3. Let a nigga brag Pitt
Legend of the fall took the year like a bandit
Bought mama a crib and a brand new wagon
Now she hit the grocery shop looking lavish
Star Trek roof in that Wraith of Khan
Girls get loose when they hear this song
100 on the dash get me close to God
We don''t pray for love, we just pray for cars.

House so empty, need a centerpiece
20 racks a table cut from ebony
Cut that ivory into skinny pieces
Then she clean it with her face man I love my baby
You talking money, need a hearing aid
You talking ''bout me, I don''t see the shade
Switch up my style, I take any lane
I switch up my cup, I kill any pain.

[Chorus:]
Look what you''ve done
I''m a motherfuckin'' starboy
Look what you''ve done
I''m a motherfuckin'' starboy
Look what you''ve done
I''m a motherfuckin'' starboy
Look what you''ve done
I''m a motherfuckin'' starboy.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'91', N'Party Monster', N'The Weeknd; Lana Del Rey', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744434-1dd02f86/128/Party%20Monster%20-%20The%20Weeknd_%20Lana%20Del%20Rey.mp3', N'
[Refrain: The Weeknd]
I''m good, I''m good, I''m great
Know it''s been a while, now I''m mixing up the drank
I just need a girl who gon'' really understand
I just need a girl who gon'' really understand
I''m good, I''m good, I''m great
Know it''s been a while, now I''m mixing up the drank
I just need a girl who gon'' really understand
I just need a girl who gon'' really understand.

[Verse 1: The Weeknd]
And I''ve seen her get richer on the pole
I''ve seen her, I knew she had to know
I''ve seen her take down that tequila
Down by the liter, I knew I had to meet her
Ooh, she mine, ooh girl, bump and grind
Ooh, she mine, ooh girl, bump a line
Angelina, lips like Angelina
Like Selena, ass shaped like Selena.

[Hook: The Weeknd]
I''m like, got up, thank the Lord for the day
Woke up by a girl, I don''t even know her name
Woke up by a girl, I don''t even know her name
(Woke up, woke up by a girl, I don''t even know her name)
Got up, thank the Lord for the day
Woke up by a girl, I don''t even know her name
Woke up by a girl, I don''t even know her name
(Woke up, woke up by a girl, I don''t even know her name)

[Refrain: The Weeknd]
I''m good, I''m good, I''m great
Know it''s been a while, now I''m mixing up the drank
I just need a girl who gon'' really understand
I just need a girl who gon'' really understand
I''m good, I''m good, I''m great
Know it''s been a while, now I''m mixing up the drank
I just need a girl who gon'' really understand
I just need a girl who gon'' really understand.

[Verse 2: The Weeknd]
I''ve been poppin'', just took three in a row
I''m down to do it again, I''m on a roll
I''ve seen him outside tryna reach her
You tryna leave him, you said I''m the reason
Tell me lies, ooh girl, tell me lies
Say you''re mine, I''m yours for the night
I''m the realest, she said I''m the realest
Head be genius, dick game be the meanest.

[Hook: The Weeknd]
I''m like got up, thank the Lord for the day
Woke up by a girl, I don''t even know her name
Woke up by a girl, I don''t even know her name
(Woke up, woke up by a girl, I don''t even know her name)
Got up, thank the Lord for the day
Woke up by a girl, I don''t even know her name
Woke up by a girl, I don''t even know her name
(Woke up, woke up by a girl, I don''t even know her name)

[Bridge: The Weeknd]
Got up, thank the Lord for the day
Woke up by a girl, I don''t even know her name
Bitches in my new spot, crowdin'' up my space
Had to check the safe, check the dresser for my chains
Got up, thank the Lord for the day
Woke up by a girl, I don''t even know her name
Bitches in my new spot, crowdin'' up my space
Had to check the safe, check the dresser for my chains.

[Interlude: The Weeknd & Lana Del Rey]
Paranoid (Paranoid)
Paranoid (P-paranoid)
Paranoid (P-paranoid)
But I see something in you (You''re paranoid)
Paranoid (Paranoid)
Paranoid (P-paranoid)
Paranoid (P-paranoid)
But I see something in you
(I see something in you)

[Outro: The Weeknd & Lana Del Rey]
(Got up, thank the Lord for the day)
(Woke up by a girl, I don''t even know her name)
(Woke up by a girl, I don''t even know her name)
(Woke up, woke up by a girl, I don''t even know her name)
(Got up, thank the Lord for the day)
(Woke up by a girl, I don''t even know her name)
(Woke up by a girl, I don''t even know her name)
(Woke up, woke up by a girl, I don''t even know her name)
You''re paranoid.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'92', N'False Alarm', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744435-682e9e3a/128/False%20Alarm%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
Bathroom stalls for the powder nose (she loves)
High heel shoes with the open toes (she loves)
She''s got a good time wrapped in gold (she loves)
For you, for you
All red dress with the devil eyes (she loves)
So obsessed with the camera lights (she loves)
You love her, but you can''t deny (she loves)
The truth, the truth.

[Pre-Chorus:]
She loves everybody
Can''t you tell by the signs?
She loves everybody
She gets off all the time
It''s a dark philosophy
And it haunts her constantly
It''s a false alarm to me
She''s a false alarm.

[Chorus:]
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey, hey)

[Verse 2:]
Six inch long, ''bout three inch wide (she loves)
Dolla, dolla bill is her only type (she loves)
You love her but you''ll never be (she loves)
The one, the one
Diamonds and the rings are her fantasy (she loves)
She chase hearts with the Hennessy (she loves)
You love her, but you''ll never be (she loves)
Enough, enough.

[Pre-Chorus:]
She loves everybody
Can''t you tell by the signs?
She loves everybody
She gets off all the time
It''s a dark philosophy
And it haunts her constantly
She''s a false alarm to me
She''s a false alarm.

[Chorus:]
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey, hey)

[Bridge:]
She always leaves the man she loves
But the diamonds are forever
She always seems to be alone
But the diamonds make it better.

[Chorus:]
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey)
False alarm (hey, hey, hey, hey, hey)', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'93', N'Reminder', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744436-9624047f/128/Reminder%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
Recommend play my song on the radio
You too busy trying to find that blue SO
I let my black hair grow and my weed smoke
And I sweat too much on the regular
We gone let them hits fly, we gone let her go
If it ain''t XO then it gotta go
I just won a new award for a kids show
Talking ''bout a face coming off a bag a blow
I''m like goddamn bitch I am not a Teen Choice
Goddamn bitch I am not a bleach boy
Whip game, make a nigga understand though
Got that Hannibal, Silence of the Lambo
Hit the cast so hard make it rotate
All my niggas blew up like a propane
All these RnB niggas be so lame
Got a sweet Asian chick she go low mane.

[Chorus:]
You know man, you know man, you know man
Everytime we try to forget who I am
I''ll be right there to remind you again
You know man (pow! pow!), you know man.

[Verse 2:]
Said Im just tryna swim in something wetter than the ocean
Faded off a double cup, I''m mixing up the potion
All I wanna do is make that money and make dope shit
It just seem like niggas tryna sound like all my old shit
Everybody knows it, all these niggas know me
Platinum off a mixtape, sipping on that codeine
Pour it in my trophies, roll until my nose bleed
Imma keep on singing while I''m burning up that OG
All my niggas get it they make money all alone
Rock a chain around they neck making sure I''m getting home
I drive around the globe, make a couple mil a show
And I come back to my city, I fuck every girl I know
Used to walk around with a slouch, had a mattress on the floor
Now my shit straight
Eating all day, tryna lose weight
That good sex, we''ll sweat it out
Hotel bedsprings we''ll wear it out
I ain''t gotta tell you cause.

[Chorus:]
You know man, you know man
You know man, you know man
Everytime we try to forget who I am
I''ll be right there to remind you again
You know man (pow! pow!), you know man.

[Bridge:]
Why don''t you shake something, shake something
For the Don, don''t you break nothing, break nothing
Big girl won''t you work something, work something
For the Don, don''t you hurt nothing, hurt nothing
Big girl won''t you shake something, shake something
For the Don, won''t you break nothing, break nothing
Baby girl won''t you work something, work something
For the Don, don''t you hurt nothing, hurt nothing.

[Outro:]
Cause you know man, they know man
You ain''t know man, now you know man.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'94', N'Rockin''', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744437-110624b0/128/Rockin_%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
People always talk about the ones that got away
I just seem to get the ones that always want to stay
I''m just too distracted with the life I''m tryna pay
Yeah, yeah, uh, oh yeah, yeah
Say, I got all these women too attracted to the fame
Not too many niggas that will end up in the way
Nothing''s gonna stop me, I''ma get it either way
Yeah, yeah, uh, oh yeah, yeah.

[Pre-Chorus:]
Why would you wanna take away from this moment?
We can own it
Why would you wanna take away from this moment?
Woo-hoo!

[Chorus:]
You don''t have to spend your life with me
You don''t have to waste your energy
We can just be rockin'', yeah
We can just be rockin'', yeah
I just want your body next to me
''Cause it brings me so much ecstasy
We can just be rockin'', yeah
We can just be rockin'', yeah, yeah, yeah.

[Verse 2:]
You see me texting, baby, you see those missed calls
I''m actin'' reckless baby, I''m ''bout to lose it all
This liquor got me crazy, mixed with that Adderall
I''m focused on the beat, oh yeah.

[Pre-Chorus:]
Why would you wanna take away from this moment?
We can own it
Why would you wanna take away from this moment?
Woo-hoo!

[Chorus:]
You don''t have to spend your life with me
You don''t have to waste your energy
We can just be rockin'', yeah
We can just be rockin'', yeah (We can just be rockin'')
I just want your body next to me
''Cause it brings me so much ecstasy
We can just be rockin'', yeah
We can just be rockin'', yeah (We can just be rockin'', baby)
(Yeah, yeah)

[Bridge:]
Yeah, yeah
Why would you wanna take away from this moment?
We can own it
Why would you wanna take away from this moment?
Woo-hoo! (Let''s go! Hey!)

[Chorus:]
You don''t have to spend your life with me (You don''t have to spend your life with me)
You don''t have to waste your energy (You don''t have to waste)
We can just be rockin'', yeah (Oh, baby)
We can just be rockin'', yeah (All you got to; need to know ooh)
I just want your body next to me (Hey!)
''Cause it brings me so much ecstasy
We can just be rockin'', yeah
We can just be rockin'', yeah (We can just be rockin'' baby)
(Yeah, yeah, yeah)', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'95', N'Secrets', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744438-4a5f8a16/128/Secrets%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
Everybody here wants you
My love, my love
And I know that you want him too
My love, my love
I ask you what your heart desires
My love, my love
You tell me I''m the only one
My love, my love.

[Pre-Chorus:]
It''s a lie, a lie
I catch you every time
In your lust, your lust
Every time you close your eyes.

[Chorus:]
I hear the secrets that you keep
When you''re talkin'' in your sleep
I hear the secrets that you keep, keep, keep
When you''re talk, talkin'', talkin''
I hear the secrets that you keep
When you''re talkin'' in your sleep
I hear the secrets that you keep, keep, keep
When you''re talk, talkin'', talkin''.

[Verse 2:]
You told me not to worry ''bout
Those guys, those guys
You told me that you left it all behind
Behind.

[Pre-Chorus:]
It''s a lie, a lie
I catch you every time
In your lust, your lust
Every time you close your eyes.

[Chorus:]
I hear the secrets that you keep
When you''re talkin'' in your sleep
I hear the secrets that you keep, keep, keep
When you''re talk, talkin'', talkin''
I hear the secrets that you keep
When you''re talkin'' in your sleep
I hear the secrets that you keep, keep, keep
When you''re talk, talkin'', talkin''.

[Bridge:]
Wipe... the...
Lust from your eyes
I see that you''re not mine
I can see the lust in your eyes
You can''t hide it
You can''t be the one
I realize, we''re divided.

[Chorus:]
I hear the secrets that you keep
When you''re talkin'' in your sleep
I hear the secrets that you keep, keep, keep
When you''re talk, talkin'', talkin''
I hear the secrets that you keep
When you''re talkin'' in your sleep
I hear the secrets that you keep, keep, keep
When you''re talk, talkin'', talkin''.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'96', N'True Colors', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744439-dd4a7004/128/True%20Colors%20-%20The%20Weeknd.mp3', N'
[Verse 1:]
Tell me the truth
Baby girl, who else been with you
It''s gon'' come to my attention either way, yeah
And I understand
Baby girl, we all had a past
I''d much rather hear the truth come straight from you.

[Pre-Hook:]
So if I love you
It''d be just for you
So when I''m touching you
Can I trust in you
Can I trust in you, oh baby.

[Hook:]
Girl, come show me your true colors
Paint me a picture with your true colors
These are the questions of a new lover
True colors, true colors
Girl, come show me your true colors
Paint me a picture with your true colors
These are confessions of a new lover
True colors, true colors.

[Verse 2:]
What''s done is done
Now that I''m the only one
If you tell me I''ll accept what you''ve been through, oh yeah
And I don''t believe all this inconsistency
I''ve been hearing different stories about you.

[Pre-Hook:]
So if I love you
It''d be just for you
So when I''m touching you
Can I trust in you
Can I trust in you, oh baby.

[Hook:]
Girl, come show me your true colors
Paint me a picture with your true colors
These are the questions of a new lover
True colors, true colors
Girl, come show me your true colors
Paint me a picture with your true colors
These are confessions of a new lover
True colors.

[Bridge:]
Baby, show me you''re a keeper
It''s been hard for me to keep up
You''ve been tryna keep me in the dark
But baby girl, I see you
Baby, show me you''re a keeper
It''s been hard for me to keep up
You''ve been tryna keep me in the dark
But baby girl, I see you.

[Hook:]
Girl, come show me your true colors
Paint me a picture with your true colors
These are the questions of a new lover
True colors, true colors
Girl, come show me your true colors
Paint me a picture with your true colors
These are confessions of a new lover
True colors, true colors.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'97', N'Stargirl (Interlude)', N'The Weeknd; Lana Del Rey', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744440-55ecc436/128/Stargirl%20Interlude_%20-%20The%20Weeknd_%20Lana%20D.mp3', N'
[Lana Del Rey]
I had a vision
A vision of my nails in the kitchen
Scratching counter tops, I was screaming
My back arched like a cat, my position couldn''t stop you were hitting it
And I shouldn''t cry, but I love it, Starboy
And I shouldn''t cry, but I love it, (I love it), Starboy
And I shouldn''t cry, but I love it, Starboy
And I shouldn''t cry, but I love it, Starboy.

[The Weeknd]
I just want to see you shine ''cause I know you are a Stargirl
I just want to see you shine ''cause I know you are a Stargirl
I just want to see you shine ''cause I know you are a Stargirl
I just want to see you shine ''cause I know you are a Stargirl.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'98', N'Sidewalks', N'The Weeknd; Kendrick Lamar', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744441-3527f23e/128/Sidewalks%20-%20The%20Weeknd_%20Kendrick%20Lamar.mp3', N'
[Verse 1: The Weeknd]
I ran out of tears when I was 18
So nobody made me but the main streets
''Cause too many people think they made me
Well if they really made me then replace me
Homeless to Forbes List, these niggas bring no stress
I feel like Moses, I feel like I''m chosen
And if you ain''t my nigga then your girl single to me
I don''t give a damn if a nigga said he knew me
Grew up with no father so nobody ever "son" me
My flow too sick, Kevin Costner couldn''t touch me
I know you wish that nobody ever love me
I feel useless when I''m never making money
Well, this the life we always fantasized
Rich folk problem through a Queen Street nigga''s eyes
Every time you see me pulling up in Aventadors
Just know we been grinding on them sidewalks.

[Hook: The Weeknd]
Sidewalks saved my life
They don''t ever lie
Sidewalks saved my life
They showed me all the signs.

[Post-Hook: Sam Smith]
They don''t let me down
But they lead me on
And they don''t let me down
But they lead me on
And they lead me on.

[Verse 2: Kendrick Lamar]
Say, say say
I come from Myrtle, one brung late night melee
Say, say, say
We hung all summer, sprung mattress with bae bae
Say, say, say
Trippin'' off Dyke, and my name strike with pay day
Say, say, say
Flippin'' blue lighting, tightening, strapped with AK
Say, say, say
OG one, told me one, show me one, eight ways
How to segue
Pussy, power, profit in headache
I reminisce my life innocence
Or life innocent
Or life intimate, with fame
Like when repent
Like when we women up
Gon'' get it, good game
She wanna hang with a Starboy
The sun and the moon and star, boy
Astronomer, anonymous
I line ''em up, grind ''em up, these nine of us
And 5 of us have probably fucked
She mollied up, I tallied up all the parts boy
Twenty legs, arms, head (head)
Head, head, more head (head)
Oh God bless the dead (yeah)
I''m livin'' life high off life
I wear my chokes off to bed
I''m the greatest nigga, why you so scared to say it?
I wanna rock, I wanna rock, I wanna cop more land
I never stop
I wanna quick advance on a bill if it ain''t one
Break everything, I''m a hustler, came from.

[Hook: The Weeknd]
Sidewalks saved my life
Sidewalks saved my life
They don''t ever lie
Sidewalks saved my life
Sidewalks saved my life
They showed me all the signs.

[Post-Hook: Sam Smith]
They don''t let me down
But they lead me on
And they don''t let me down
But they lead me on
And they lead me on.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'99', N'Six Feet Under', N'The Weeknd', N'https://data.chiasenhac.com/data/cover/67/66288.jpg', N'https://data3.chiasenhac.com/downloads/1745/1/1744442-cde6d704/128/Six%20Feet%20Under%20-%20The%20Weeknd.mp3', N'
[Verse 1: The Weeknd]
Ask around about her
She don''t get emotional
Kill off all her feelings
That''s why she ain''t approachable
She know her pussy got a fanbase
A couple niggas with a suitcase
Suit and tie niggas who play roleplay
When it comes to money she play no games.

[Pre-Hook: The Weeknd]
She lick it up just like a candy
She wanna make them leave their family
She trying to live a life so fancy
She wanna pull up in a Bentley
She ain''t got time for lovin''
Louis Vuitton her husband
She rather die in lusting
She rather die in the club, till she.

[Hook: The Weeknd & Future]
Six feet under she gon'' get that fucking paper
Six feet under she gon'' get that fucking paper
Six feet under she gon'' get that fucking paper
You know how she get down, pop her for a check now
Six feet under, six
Six feet under
Six feet under, six
Six feet under
Six feet under she gon'' kill me for that paper
Not the type to fuck around, gonna turn that ass around.

[Verse 2: The Weeknd]
She don''t depend on anybody
Know just what to do with her own body
Counting all that money like a hobby
She don''t give a fuck about nobody
And she got her whole crew poppin''
And she bend it over like she got no back bone
Got a couple niggas blinging up a trap phone
She don''t need nobody waiting back home, she got it.

[Pre-Hook: The Weeknd]
She lick it up just like a candy
She wanna make them leave their family
She trying to live a life so fancy
She wanna pull up in a Bentley
She ain''t got time for lovin''
Louis Vuitton her husband
She rather die in lusting
She rather die in the club, till she.

[Hook: The Weeknd & Future]
Six feet under she gon'' get that fucking paper
Six feet under she gon'' get that fucking paper
Six feet under she gon'' get that fucking paper
You know how she get down, pop her for a check now
Six feet under, six
Six feet under
Six feet under, six
Six feet under
Six feet under she gon'' kill me for that paper
Not the type to fuck around, gonna turn that ass around
Gonna turn that ass around
Oh murder, oh murder
Gonna turn that ass around
Oh murder, oh murder.

[Bridge: The Weeknd]
Real love''s hard to find
So she don''t waste her time
So she don''t waste her time, oooh
You ain''t gon'' catch her crying
She ain''t gon'' lose her mind
She ain''t gon'' lose her mind
Till she..

[Outro: Future & The Weeknd]
Six feet under she gon'' kill me for that paper (Till she)
Six feet under she gon'' kill me for that paper (Till she)
Six feet under she gon'' kill me for that paper
Not the type to fuck around, gonna turn that ass around.', N'4', N'8')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'afiizmwlhktiwcr', N'Our First Time', N'Bruno Mars', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A10%3A27%20GMT%2B0700%20(Indochina%20Time)-2005.jpg?alt=media&token=8ab4473c-03b2-4863-804b-08bab3c67c89', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A10%3A27%20GMT%2B0700%20(Indochina%20Time)-Our%20First%20Time%20-%20Bruno%20Mars.mp3?alt=media&token=cd8ced23-f3a2-4aca-94ba-61bf439ae912', N'
[Intro:]
Don''t it feel good babe
Don''t it feel good baaby
Cause, it''s so brand new babe
It''s so brand new baaby. x2

1. And now now here we are (here we are)
In this big old empty room
Staring at each other, who''s gonna make the first move
Been doing our thing for a minute
And now both our hearts are in it
The only place to go, is all the way (ah, whoo).

[Break:]
Is that alright
Is that okay
Girl, I need to be nervous
Cause, I, got, you, all, night
Don''t you worry bout a thing (no no no).

[Chorus:]
Just go with it, go with it, go with it (and I will go real)
Slow with it, slow with it
It''s our first time
Go with it, go with it, go with it (and I will go real)
Slow with it, slow with it
It''s our first time.

2. Clothes are not required, for what we got planned
Ooo girl you''re my desire, your wish is my command
Treat you like a princess, oooh girl you''re so delicious
Like ice cream on a sunny day, gonna eat you before you melt away (babe).

[Break:]
Is that alright
Is that okay
Girl, I need to be nervous (no no no, no oooh)
Cause, I (I''ve), got (got), you (you), all, night
Don''t you worry bout a thing (no no no).

[Chorus..]

[Intro..] x2

Ooooh oooh baaby!

[Chorus...]', N'1', N'ijllvhcuxrcvdbd')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'atyldmlktmpgnpa', N'Don''t Let Me Down', N'The Chainsmokers; Daya', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2001%3A25%3A44%20GMT%2B0700%20(Indochina%20Time)-53532.jpg?alt=media&token=eab11c28-8d5c-4900-a870-994468045cd5', N'', N'
1. Crashing, hit a wall
Right now I need a miracle
Hurry up now, I need a miracle
Stranded, reaching out
I call your name but you''re not around
I say your name but you''re not around.

[Chorus:]
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
D-Don''t let me down
Don''t let me down.

2. R-r-running out of time
I really thought you were on my side
But now there''s nobody by my side.

[Bridge:]
Ooh, I think I''m losing my mind now, yeah
Ooh, I think I''m losing my mind now, yeah.

[Outro:]
Yeah, don''t let me down
Yeah, don''t let me down
Don''t let me down, oh no
Say don''t let me down
Don''t let me down, no-o
Don''t let me down
Don''t let me down, down.', N'5', N'bjndcnmpbvedzbr')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'bjukvzaatrlvnxp', N'Don''t Let Me Down', N'The Chainsmokers; Daya', N'', N'', N'Crashing, hit a wall
Right now I need a miracle
Hurry up now, I need a miracle
Stranded, reaching out
I call your name but you''re not around
I say your name but you''re not around
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
Don''t let me down
Don''t let me down
Don''t let me down, down, down
Don''t let me down, don''t let me down, down, down
Running out of time
I really thought you were on my side
But now there''s nobody by my side
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
Don''t let me down
Don''t let me down
Don''t let me down, down, down
Don''t let me down, down, down
Don''t let me down, down, down
Don''t let me down, don''t let me down, down, down
Oh, I think I''m losing my mind now, yeah, yeah, yeah
Oh, I think I''m losing my mind now, yeah, yeah
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
Don''t let me down
Yeah, don''t let me down
Yeah, don''t let me down
Don''t let me down, oh no
Said don''t let me down
Don''t let me down
Don''t let me down (down, down, down)
Don''t let me down, down, down', N'5', N'ithhfjfhcnjkrqd')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'brwbejyyekfcmim', N'Holy', N'Justin Bieber; Chance The Rapper', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A38%3A22%20GMT%2B0700%20(Indochina%20Time)-holy.jpg?alt=media&token=b8897f5b-6358-45d5-afd3-44e41b986ce1', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A38%3A22%20GMT%2B0700%20(Indochina%20Time)-Holy%20-%20Justin%20Bieber_%20Chance%20The%20Rapper.mp3?alt=media&token=ff84d6e2-9a0b-4e78-ab04-28a71f5c3f37', N'
[Verse 1: Justin Bieber]
I hear a lot about sinners
Don''t think that I''ll be a saint
But I might go down to the river
''Cause the way that the sky opens up when we touch
Yeah, it''s making me say

[Chorus: Justin Bieber]
That the way you hold me, hold me, hold me, hold me, hold me
Feels so holy, holy, holy, holy, holy
On God
Runnin'' to the altar like a track star
Can''t wait another second
''Cause the way you hold me, hold me, hold me, hold me, hold me
Feels so holy

[Verse 2: Justin Bieber]
I don''t do well with the drama
And, no, I can''t stand it being fake
(No, no, no, no, no, no, no, no)
I don''t believe in nirvana
But the way that we love in the night gave me life
Baby, I can''t explain

[Chorus: Justin Bieber]
That the way you hold me, hold me, hold me, hold me, hold me
Feels so holy, holy, holy, holy, holy
On God
Runnin'' to the altar like a track star
Can''t wait another second
''Cause the way you hold me, hold me, hold me, hold me, hold me
Feels so holy

[Bridge: Justin Bieber & Chance the Rapper]
They say we''re too young and
The pimps and the players say, "Don''t go crushin''"
Wise men say fools rush in
But I don''t know (Ah-ah-ah-ah)
They say we''re too young and
The pimps and the players say, "Don''t go crushin''"
Wise men say fools rush in
But I don''t know (Chance the Rapper)

[Verse 3: Chance the Rapper]
The first step pleases the Father
Might be the hardest to take
But when you come out of the water
I''m a believer, my heart is fleshy
Life is short with a temper like Joe Pesci
They always come and sing your praises, your name is catchy
But they don''t see you how I see you, Parlay and Desi
Cross, Tween, Tween, Hesi'' hit the jet speed
When they get messy, go lefty like Lionel Messi
Let''s take a trip and get the Vespas or rent a jetski
I know the spots that got the best weed, we goin'' next week
I wanna honor, wanna honor you
Bride''s groom, I''m my father''s child
I know when the son takes the first steps, the Father''s proud (Yes)
If you make it to the water, He''ll part the clouds (Uh)
I know He made you a snack like Oscar Proud (Mwah)
Suffer it to be so now gotta clean it up (Ooh)
Formalize the union in communion, He can trust (Woo)
I know I ain''t leavin'' you like I know He ain''t leavin'' us (Ah)
I know we believe in God, and I know God believes in us

[Chorus: Justin Bieber]
''Cause the way you hold me, hold me, hold me, hold me, hold me
Feels so holy, holy, holy, holy, holy
On God
Runnin'' to the altar like a track star
Can''t wait another second, on God
Runnin'' to the altar like a track star
Can''t wait another second, on God
Runnin'' to the altar like a track star
Can''t wait another second
''Cause the way you hold me, hold me, hold me, hold me
Feels so ho-ho-ho-holy', N'1', N'gvuwovvtjtqhkwh')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'hsmtzjjwuyoyvrm', N'Just The Way You Are', N'Bruno Mars', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A03%3A13%20GMT%2B0700%20(Indochina%20Time)-2005.jpg?alt=media&token=7e2a9349-b5b0-4c05-b1d2-41b227e5f4bc', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A03%3A13%20GMT%2B0700%20(Indochina%20Time)-Just%20The%20Way%20You%20Are%20-%20Bruno%20Mars.mp3?alt=media&token=d853ed1e-2ae0-4b8f-adc5-55d1c08568d8', N'
[Verse 1]
Oh, her eyes, her eyes
Make the stars look like they''re not shinin''
Her hair, her hair
Falls perfectly without her trying
She''s so beautiful
And I tell her every day
Yeah, I know, I know
When I compliment her she won''t believe me
And it''s so, it''s so
Sad to think that she don''t see what I see
But every time she asks me, "Do I look okay?"
I say

[Chorus]
When I see your face
There''s not a thing that I would change
''Cause you''re amazing just the way you are
And when you smile
The whole world stops and stares for a while
''Cause, girl, you''re amazing just the way you are

[Verse 2]
Her lips, her lips
I could kiss them all day if she''d let me
Her laugh, her laugh
She hates but I think it''s so sexy
She''s so beautiful, and I tell her every day
Oh you know, you know, you know
I''d never ask you to change
If perfect''s what you''re searching for
Then just stay the same
So don''t even bother asking if you look okay
You know I''ll say

[Chorus]
When I see your face
There''s not a thing that I would change
''Cause you''re amazing just the way you are
And when you smile
The whole world stops and stares for a while
''Cause, girl, you''re amazing just the way you are

[Post-Chorus]
The way you are
The way you are
Girl, you''re amazing just the way you are

[Chorus]
When I see your face
There''s not a thing that I would change
''Cause you''re amazing just the way you are
And when you smile
The whole world stops and stares for a while
''Cause, girl, you''re amazing just the way you are', N'1', N'ijllvhcuxrcvdbd')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'kdowklugrygbuzb', N'God Rest Ye Merry, Gentlemen', N'Mariah Carey', N'https://data.chiasenhac.com/data/cover/3/2692.jpg', N'https://audio.jukehost.co.uk/bEQD4Mb0f39nLsTTT1Gaa9z8CyxiO8pN', N'
God rest ye merry gentlemen
Let nothing you dismay
Remember Christ our Savior
Was born on Christmas day.

To save us all from Satan''s power
When we had gone astray
Oh tidings of comfort and joy
Comfort and joy
Oh tidings of comfort and joy.

God rest ye merry gentlemen
Let nothing you dismay
Remember Christ our Savior
Was born on Christmas day.

To save us all from Satan''s power
When we had gone astray
Oh tidings of comfort and joy
Comfort and joy
Oh tidings of comfort and joy.', N'1', N'bdejzosohazgyod')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'pblaetpsruyzbad', N'Silent Night', N'Mariah Carey', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A58%3A20%20GMT%2B0700%20(Indochina%20Time)-2692.jpg?alt=media&token=be06e373-f599-4f47-b752-06f5ba17293f', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A58%3A20%20GMT%2B0700%20(Indochina%20Time)-Silent%20Night%20-%20Mariah%20Carey.mp3?alt=media&token=4c318fb5-d792-4d69-99e0-f947753f07f6', N'
Silent night, holy night
All is calm, all is bright
Round your Virgin Mother and Child
Holy Infant so tender and mild
Sleep in heavenly peace
Sleep in heavenly peace.

Silent night, holy night
Son of God, love''s pure light
Radiant beams from Thy holy face
With the dawn of redeeming grace
Jesus, Lord, at Thy birth
Jesus, Lord, at Thy birth.

Silent night, holy night
Shepherds quake at the sight
Glories stream from heaven afar
Heavenly hosts sing alleluia
Christ, the Saviour is born
Christ, the Saviour is born.', N'1', N'qdcessbrzpodrfr')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'qgspikynaghwubk', N'Don''t Let Me Down', N'The Chainsmokers; Daya', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A31%3A43%20GMT%2B0700%20(Indochina%20Time)-53532.jpg?alt=media&token=58c719eb-1808-47d4-9cea-82be6c22d42f', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2010%3A31%3A43%20GMT%2B0700%20(Indochina%20Time)-Don_t%20Let%20Me%20Down%20-%20The%20Chainsmokers_%20Da.mp3?alt=media&token=4c929bd6-905d-4b56-84b6-802fcfa1e961', N'Crashing, hit a wall
Right now I need a miracle
Hurry up now, I need a miracle
Stranded, reaching out
I call your name but you''re not around
I say your name but you''re not around
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
Don''t let me down
Don''t let me down
Don''t let me down, down, down
Don''t let me down, don''t let me down, down, down
Running out of time
I really thought you were on my side
But now there''s nobody by my side
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
Don''t let me down
Don''t let me down
Don''t let me down, down, down
Don''t let me down, down, down
Don''t let me down, down, down
Don''t let me down, don''t let me down, down, down
Oh, I think I''m losing my mind now, yeah, yeah, yeah
Oh, I think I''m losing my mind now, yeah, yeah
I need you, I need you, I need you right now
Yeah, I need you right now
So don''t let me, don''t let me, don''t let me down
I think I''m losing my mind now
It''s in my head, darling I hope
That you''ll be here, when I need you the most
So don''t let me, don''t let me, don''t let me down
Don''t let me down
Yeah, don''t let me down
Yeah, don''t let me down
Don''t let me down, oh no
Said don''t let me down
Don''t let me down
Don''t let me down (down, down, down)
Don''t let me down, down, down', N'5', N'mgccdjturtnesdg')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'xbfyvhgauedavwf', N'Marry You', N'Bruno Mars', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2017%3A47%3A02%20GMT%2B0700%20(Indochina%20Time)-2005.jpg?alt=media&token=b4ed4da6-832c-4228-bf53-4e65d5f6719c', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2017%3A47%3A02%20GMT%2B0700%20(Indochina%20Time)-Marry%20You%20-%20Bruno%20Mars.mp3?alt=media&token=ea4b05a9-d3ee-4a63-9d23-add6a8b0fd16', N'
It''s a beautiful night
We''re looking for something dumb to do
Hey baby
I think I wanna marry you.

Is it the look in your eyes
Or is it this dancing juice
Who cares baby
I think I wanna marry you.

Well I know this little chapel on the boulevard we can go
No one will know
Come on girl
Who cares if we''re trashed got a pocket full of cash we can blow
Shots of patron
And it''s on girl.

[Chorus:]
Don''t say no, no, no, no-no
Just say yeah, yeah, yeah, yeah-yeah
And we''ll go, go, go, go-go
If you''re ready, like I''m ready.

Cause it''s a beautiful night
We''re looking for something dumb to do
Hey baby
I think I wanna marry you.

Is it the look in your eyes
Or is it this dancing juice
Who cares baby
I think I wanna marry you.

I''ll go get a ring let the choir bells sing like oooh
So whatcha wanna do
Let''s just run girl.

If we wake up and you wanna break up that''s cool
No, I won''t blame you
It was fun girl.

[Chorus:]
Don''t say no, no, no, no-no
Just say yeah, yeah, yeah, yeah-yeah
And we''ll go, go, go, go-go
If you''re ready, like I''m ready.

Cause it''s a beautiful night
We''re looking for something dumb to do
Hey baby
I think I wanna marry you.

Is it the look in your eyes
Or is it this dancing juice
Who cares baby
I think I wanna marry you.

Just say I do
Tell me right now baby
Tell me right now baby. x2

Cause it''s a beautiful night
We''re looking for something dumb to do
Hey baby
I think I wanna marry you.

Is it the look in your eyes
Or is it this dancing juice
Who cares baby
I think I wanna marry you.', N'1', N'ijllvhcuxrcvdbd')
INSERT [dbo].[Song] ([sid], [name], [artirst], [image], [audio], [lyric], [cid], [aid]) VALUES (N'zhhpsjulzzzvpwq', N'Runaway Baby', N'Bruno Mars', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A08%3A53%20GMT%2B0700%20(Indochina%20Time)-2005.jpg?alt=media&token=ce8e6970-4ed4-4488-8be9-cf2f281a4bd2', N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Tue%20Nov%2017%202020%2011%3A08%3A53%20GMT%2B0700%20(Indochina%20Time)-Runaway%20Baby%20-%20Bruno%20Mars.mp3?alt=media&token=7d6f7057-91fe-445f-8f1a-7827e8a4616c', N'
Well looky here looky here
Ah what do we have?
Another pretty thang ready for me to grab
But little does she know
That I''m a wolf in sheeps clothing
''Cause at the end of the night
It is her I''ll be holding.

[Chorus:]
I love you so
That''s what you''ll say
You''ll tell me
Baby baby please don''t go away
But when I play, I never stay.

To every girl that I meet here this is what I say
Run run run away, run away baby
Before I put my spell on you
You better get get get away get away darling
''Cause everything you heard is true
Your poor little heart will end up alone
''Cause lord knows I''m a rolling stone
So you better run run run away run away baby.

Well let me think let me think
Ah what should I do?
So many eager young bunny''s
That I''d like to pursue
Now even now they eating out the palm of my hand
There''s only one carrot and they all gotta share it.

[Chorus:]
I love you so
That''s what you''ll say
You''ll tell me
Baby baby please don''t go away
But when I play, I never stay
To every girl that I meet here this is what I say.

Run run run away, run away baby
Before I put my spell on you
You better get get get away get away darling
''Cause everything you heard is true
Your poor little heart will end up alone
''Cause lord knows I''m a rolling stone
So you better run run run away run away baby.

See I ain''t try to hurt you baby
No no, no I just wanna work you baby
Yup yup
See I ain''t try to hurt you baby
No no, no I just wanna work you baby
If you scared you better run (You better run)
You better run (You better run)
You better run (You better run)
You better you better you better.

Run run run away, run away baby
Before I put my spell on you
You better get get get away get away darling
''Cause everything you heard is true
Your poor little heart will end up alone
''Cause lord knows I''m a rolling stone
So you better run run run away run away baby!', N'1', N'ijllvhcuxrcvdbd')
GO
INSERT [dbo].[User] ([uid], [name], [password], [dob], [gender], [avatar], [email]) VALUES (N'1', N'vu ngoc thinh', N'123', CAST(N'2000-03-30' AS Date), 1, N'https://firebasestorage.googleapis.com/v0/b/web-project-e04ed.appspot.com/o/Thu%20Nov%2012%202020%2016%3A06%3A37%20GMT%2B0700%20(Indochina%20Time)-thinh.jpg?alt=media&token=d8085013-d9b9-4b42-9995-8cd9540af131', N'huanhoahong@gmail.com')
INSERT [dbo].[User] ([uid], [name], [password], [dob], [gender], [avatar], [email]) VALUES (N'thinh', N'thinh vu', N'123', CAST(N'2020-11-10' AS Date), 1, N'https://cdn.dribbble.com/users/49910/screenshots/4431133/attachments/1006783/avatar_03.png', N'thinh@gmail.com')
INSERT [dbo].[User] ([uid], [name], [password], [dob], [gender], [avatar], [email]) VALUES (N'thinhmaxdz', N'Vu Ngoc Thinh', N'123', CAST(N'2000-06-04' AS Date), 1, N'https://instagram.fhan2-6.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/82949745_1266612736861384_6254699375218144751_n.jpg?_nc_ht=instagram.fhan2-6.fna.fbcdn.net&_nc_cat=104&_nc_ohc=HvvLJAoGeHMAX_az5rJ&_nc_tp=24&oh=b651f9fa55878a4bc5ef5880fdc8839e&oe=5FCF0EE2', N'thinhmaxdz@gmail.com')
INSERT [dbo].[User] ([uid], [name], [password], [dob], [gender], [avatar], [email]) VALUES (N'thinhvu4620', N'Joe Biden', N'123', CAST(N'2000-01-12' AS Date), 1, N'https://cdn.dribbble.com/users/49910/screenshots/4431133/attachments/1006783/avatar_03.png', N'thinhvu4620@gmail.com')
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Category] FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Category]
GO
ALTER TABLE [dbo].[ChartDetail]  WITH CHECK ADD  CONSTRAINT [FK_ChartDetail_Chart] FOREIGN KEY([chartid])
REFERENCES [dbo].[Chart] ([chartid])
GO
ALTER TABLE [dbo].[ChartDetail] CHECK CONSTRAINT [FK_ChartDetail_Chart]
GO
ALTER TABLE [dbo].[ChartDetail]  WITH CHECK ADD  CONSTRAINT [FK_ChartDetail_Song] FOREIGN KEY([sid])
REFERENCES [dbo].[Song] ([sid])
GO
ALTER TABLE [dbo].[ChartDetail] CHECK CONSTRAINT [FK_ChartDetail_Song]
GO
ALTER TABLE [dbo].[CommentDetail]  WITH CHECK ADD  CONSTRAINT [FK_CommentDetail_Comment] FOREIGN KEY([cmtid])
REFERENCES [dbo].[Comment] ([cmtid])
GO
ALTER TABLE [dbo].[CommentDetail] CHECK CONSTRAINT [FK_CommentDetail_Comment]
GO
ALTER TABLE [dbo].[CommentDetail]  WITH CHECK ADD  CONSTRAINT [FK_CommentDetail_Song] FOREIGN KEY([sid])
REFERENCES [dbo].[Song] ([sid])
GO
ALTER TABLE [dbo].[CommentDetail] CHECK CONSTRAINT [FK_CommentDetail_Song]
GO
ALTER TABLE [dbo].[CommentDetail]  WITH CHECK ADD  CONSTRAINT [FK_CommentDetail_User] FOREIGN KEY([uid])
REFERENCES [dbo].[User] ([uid])
GO
ALTER TABLE [dbo].[CommentDetail] CHECK CONSTRAINT [FK_CommentDetail_User]
GO
ALTER TABLE [dbo].[NewRelease]  WITH CHECK ADD  CONSTRAINT [FK_NewRelease_Album] FOREIGN KEY([aid])
REFERENCES [dbo].[Album] ([aid])
GO
ALTER TABLE [dbo].[NewRelease] CHECK CONSTRAINT [FK_NewRelease_Album]
GO
ALTER TABLE [dbo].[PlaylistDetail]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistDetail_Playlist] FOREIGN KEY([pid])
REFERENCES [dbo].[Playlist] ([pid])
GO
ALTER TABLE [dbo].[PlaylistDetail] CHECK CONSTRAINT [FK_PlaylistDetail_Playlist]
GO
ALTER TABLE [dbo].[PlaylistDetail]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistDetail_Song] FOREIGN KEY([sid])
REFERENCES [dbo].[Song] ([sid])
GO
ALTER TABLE [dbo].[PlaylistDetail] CHECK CONSTRAINT [FK_PlaylistDetail_Song]
GO
ALTER TABLE [dbo].[PlaylistDetail]  WITH CHECK ADD  CONSTRAINT [FK_PlaylistDetail_User] FOREIGN KEY([uid])
REFERENCES [dbo].[User] ([uid])
GO
ALTER TABLE [dbo].[PlaylistDetail] CHECK CONSTRAINT [FK_PlaylistDetail_User]
GO
ALTER TABLE [dbo].[PopularAlbum]  WITH CHECK ADD  CONSTRAINT [FK_PopularAlbum_Album] FOREIGN KEY([aid])
REFERENCES [dbo].[Album] ([aid])
GO
ALTER TABLE [dbo].[PopularAlbum] CHECK CONSTRAINT [FK_PopularAlbum_Album]
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [FK_Song_Album] FOREIGN KEY([aid])
REFERENCES [dbo].[Album] ([aid])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [FK_Song_Album]
GO
ALTER TABLE [dbo].[Song]  WITH CHECK ADD  CONSTRAINT [FK_Song_Category] FOREIGN KEY([cid])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Song] CHECK CONSTRAINT [FK_Song_Category]
GO
