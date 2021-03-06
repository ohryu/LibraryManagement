USE [LibraryManagement]
GO
/****** Object:  Table [dbo].[LibRole]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibRole](
	[IdRole] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LibRole] ON
INSERT [dbo].[LibRole] ([IdRole], [NameRole]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[LibRole] ([IdRole], [NameRole]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[LibRole] OFF
/****** Object:  Table [dbo].[LibBook]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibBook](
	[IdBook] [int] IDENTITY(1,1) NOT NULL,
	[TitleOfBook] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](128) NOT NULL,
	[PublishYear] [int] NOT NULL,
	[Image] [nchar](128) NOT NULL,
	[ShortDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[IdBook] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LibBook] ON
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (1, N'Harry Potter and the Sorcerer''s Stone', N'J.K. Rowling', 2015, N'http://books.google.com/books/content?id=wrOQLV6xB-wC&printsec=frontcover&img=1&zoom=1&source=gbs_api                           ', N'Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing a coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter ''H''.')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (2, N'Harry Potter: Cinematic Guide: Albus Dumbledore', N'Scholastic', 2017, N'http://books.google.com/books/content?id=_FkqDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'This Cinematic Guide is the essential companion for fans of the Harry Potter films! Relive all the magic of Professor Dumbledore''s world with this guidebook featuring your favourite scenes and quotes from all eight Harry Potter movies!')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (3, N'The Cuckoo''s Calling', N'Robert Galbraith', 2014, N'http://books.google.com/books/content?id=BUTroQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api                           ', N'Vietnamese version of the very popular adult debut mystery/detective novel by Robert Galbraith, a.k.a J. K. Rowling, featuring PI Cormoran Strike. Veitnamese translation by Ho Thi Nhu Mai. In Vietnamese. Annotation copyright Tsai Fong Books, Inc. Distributed by Tsai Fong Books, Inc.')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (4, N'Harry Potter Places', N'C. D. Miller', 2012, N'http://books.google.com/books/content?id=LEnHs53G0j0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'Welcome to Harry Potter Places Book Three--Snitch-Seeking in Southern England and Wales, the third of five guidebooks designed to help Potterites visit all 68 UK Potterverse places: real-life places mentioned in JKR''s novels and movie film sites. Go to the website to find Book Three''s Table of Contents and learn about all the Harry Potter Places travel guidebooks."')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (5, N'Literary Allusion in Harry Potter', N'Beatrice Groves', 2017, N'http://books.google.com/books/content?id=8P8nDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'Literary Allusion in Harry Potter builds on the world-wide enthusiasm for J. K. Rowling’s series in order to introduce its readers to some of the great works of literature on which Rowling draws')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (6, N'Silent Hill', N'Bernard Perron', 2012, N'http://books.google.com/books/content?id=vc9lzxnJpccC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'The second entry in the Landmark Video Games series')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (7, N'Sir Arthur Conan Doyle', N'Conan Doyle', 2007, N'http://books.google.com/books/content?id=pvE6R9IvsXUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'This work aims to reveal Conan Doyle''s different activities. Apart from being a prolific author - his literary output included historical novels, science fiction and histories of the Boer War and the First World War, he was an early champion of the Channel Tunnel, he played cricket for the MCC, was an advocate of Spiritualism, introduced cross country skiing to Switzerland and he was acquainted with many public figures of the late Victorian and Edwardian period.')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (8, N'The Last Leaf', N'William Glennon', 1996, N'http://books.google.com/books/content?id=h52Bq1CIsDMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'Nope')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (9, N'A Game of Thrones', N'Daniel Abraham', 2012, N'http://books.google.com/books/content?id=i_SorqUvsOEC&printsec=frontcover&img=1&zoom=1&source=gbs_api                           ', N'The kingdom of the royal Stark family faces its ultimate challenge in the onset of a generation-long winter, the poisonous plots of the rival Lannisters, the emergence of the Neverborn demons and the arrival of barbarian hordes. 75,000 first printing.')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (10, N'Snow White', N'Donald Barthelme', 2013, N'http://books.google.com/books/content?id=8t7APzmuRVEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api                 ', N'An inventive, satiric modern retelling of the classic fairy tale provides an incisive and biting commentary on the absurdities and complexities of modern life. In Snow White, Donald Barthelme subjects the traditional fairy tale to postmodern aesthetics. In the novel, the seven dwarves are men who live communally with Snow White and earn a living by washing buildings and making Chinese baby food. Snow White quotes Mao and the dwarves grapple with low self-esteem in this raucous retelling of the classic tale')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (11, N'Once Upon a Time', N'Charles Knight', 1854, N'http://books.google.com/books/content?id=8l4JAAAAQAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'Beauty and da beast')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (12, N'Wuthering Heights', N'Emily Brontë', 1870, N'http://books.google.com/books/content?id=7wXy0iWQhmUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'Nope')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (14, N'Harry Potter and the Deathly Hallows', N'J. K. Rowling', 2007, N'http://books.google.com/books/content?id=GZAoAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api                           ', N'The magnificent final book in J. K. Rowling''s seven-part saga comes to readers July 21, 2007. You''ll find out July 21!')
INSERT [dbo].[LibBook] ([IdBook], [TitleOfBook], [Author], [PublishYear], [Image], [ShortDescription]) VALUES (15, N'The Last Leaf', N'William Glennon,O. Henry', 1996, N'http://books.google.com/books/content?id=h52Bq1CIsDMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api                 ', N'')
SET IDENTITY_INSERT [dbo].[LibBook] OFF
/****** Object:  Table [dbo].[Persistent_Logins]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persistent_Logins](
	[UserName] [varchar](64) NOT NULL,
	[Series] [varchar](64) NOT NULL,
	[Token] [varchar](64) NOT NULL,
	[Last_Used] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Series] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Persistent_Logins] ([UserName], [Series], [Token], [Last_Used]) VALUES (N'a@gmail.com                                                     ', N'gJxA0h7Hz8fFfydgb2zHLg==', N'JIy98+RCHBmnepx+Z+SqIw==', CAST(0x0000A8E300FC9E7D AS DateTime))
/****** Object:  Table [dbo].[LibUser]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibUser](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nchar](128) NOT NULL,
	[Password] [nchar](60) NOT NULL,
	[FullName] [nvarchar](128) NOT NULL,
	[IdRole] [int] NOT NULL,
	[LimitNumber] [int] NOT NULL,
	[BorrowedNumber] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LibUser] ON
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (1, N'hqt95na@gmail.com                                                                                                               ', N'$2a$10$NUNGhhnirTGfym6rNSH06OYeFOpn2KPOEYkP3HWU7H0cMVyaqc10K', N'Hoàng Quốc Tuân', 1, 200, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (2, N'test@gmail.com                                                                                                                  ', N'$2a$10$TKWDwYqT9Cu2Rf9fxC86I.CyzGJ6nLTB1HHrCMYENdRPon36Merle', N'Tuan', 1, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (4, N'admin@gmail.com                                                                                                                 ', N'$2a$10$qsn6hfmfJeN2yHQclrU/Cu6IhuOe0smbXjSdsvoS1QCqM0l0Lt7eO', N'DXC Team 2', 1, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (5, N'user@gmail.com                                                                                                                  ', N'$2a$10$Iz2oXky0s11/9cB/tLLWdekC5Xcq5RpliNT6f7MJ0g4yORvFRZvEe', N'DXC Viet Nam', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (10, N'dangquocan@gmail.com                                                                                                            ', N'$2a$10$xdHdSwY.qTAyphsJoI4/Buk7crOkVp.IN1j6keasnNgBikcWUtQUO', N'An Dang', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (11, N'luudao@gmail.com                                                                                                                ', N'$2a$10$C8lHwOQRnhJp6Dqk4bLY9uUGVh6mdCBQlHKemfTtZKAPZC.jHvTpW', N'Luu Dao', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (12, N'nguyenbach@gmail.com                                                                                                            ', N'$2a$10$UFzBzEOHbMEMChy8rbtqFu7Cd5aVEdfSDvEJdfCGlTj/LtXghCD4G', N'Nguyen Bach', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (13, N'thuydung@gmail.com                                                                                                              ', N'$2a$10$FjDnmIgZxuDpVbtpKIJFdemZ3A.Jv1gzs/rzZ6xKaQNTdNQJktJqi', N'Dung Thuy', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (14, N'cuongchau@gmail.com                                                                                                             ', N'$2a$10$zbnf1QzIxeYvvNO402bDG.HpNs.OjLsHGHxh5ODGeag8mlmcj9zmS', N'Cuong Chau', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (15, N'chauhoncuong@gmail.com                                                                                                          ', N'$2a$10$HdoPhkeWLVwgnSLWZ6bK1ebti3SA2WWEjgYq4Atx7Y9NJXaLide.e', N'Cuong Chau', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (16, N'team2@gmail.com                                                                                                                 ', N'$2a$10$bq7ryhqu9DNU3nCH7QnwOuZZ2nXT25vwVIFdYdtyGVORnr23nkTwO', N'Team 2 DXC', 2, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (17, N'a@gmail.com                                                                                                                     ', N'$2a$10$aaweBIhgiPHqoJIo6Cer.uzlagjZ1F86XjcbvHVFF7cotFPrWiFU.', N'aaa', 2, 3, 3)
SET IDENTITY_INSERT [dbo].[LibUser] OFF
/****** Object:  Table [dbo].[LibISBN]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibISBN](
	[ISBN] [nchar](13) NOT NULL,
	[IdBook] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[TotalBook] [int] NOT NULL,
	[NumberBooksBorrowed] [int] NOT NULL,
 CONSTRAINT [PK_ISBN] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'0521272629   ', 11, 1, 23, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'0871296918   ', 8, 1, 12, 3)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'184022570X   ', 7, 1, 96, 2)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'6041045152   ', 3, 1, 65, 1)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9780440423218', 9, 1, 20, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9780472051625', 6, 1, 69, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9780545010221', 14, 1, 50, 1)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9780871296917', 15, 0, 0, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9781351978729', 5, 1, 49, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9781407177762', 2, 1, 40, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9781439144404', 10, 1, 30, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9781621074564', 10, 1, 20, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9781781100486', 1, 1, 50, 0)
INSERT [dbo].[LibISBN] ([ISBN], [IdBook], [Status], [TotalBook], [NumberBooksBorrowed]) VALUES (N'9781937520984', 4, 0, 60, 0)
/****** Object:  Table [dbo].[LibBorrowBook]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibBorrowBook](
	[IdBorrow] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[ISBN] [nchar](13) NOT NULL,
	[DateBorrow] [date] NOT NULL,
	[DateReturn] [date] NULL,
 CONSTRAINT [PK_BorrowBook] PRIMARY KEY CLUSTERED 
(
	[IdBorrow] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LibBorrowBook] ON
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (5, 5, N'0871296918   ', CAST(0xD03C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (6, 5, N'184022570X   ', CAST(0xC53D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (7, 5, N'6041045152   ', CAST(0x773C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (8, 5, N'9780440423218', CAST(0x583C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (9, 5, N'9780472051625', CAST(0x933C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (10, 5, N'9780545010221', CAST(0xB23C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (11, 5, N'9781407177762', CAST(0xEF3C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (12, 5, N'9781351978729', CAST(0x0D3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (13, 5, N'9781439144404', CAST(0x2C3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (14, 10, N'0521272629   ', CAST(0x4B3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (15, 10, N'0871296918   ', CAST(0x693D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (16, 10, N'184022570X   ', CAST(0x883D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (17, 10, N'6041045152   ', CAST(0xA63D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (18, 10, N'9780440423218', CAST(0xC53D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (19, 10, N'9780472051625', CAST(0xE43D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (20, 10, N'9781407177762', CAST(0x003E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (21, 10, N'9781439144404', CAST(0x1F3E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (22, 10, N'9781781100486', CAST(0x2E3E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (23, 11, N'0521272629   ', CAST(0x2F3E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (24, 11, N'0871296918   ', CAST(0x563B0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (25, 11, N'184022570X   ', CAST(0x313E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (26, 11, N'6041045152   ', CAST(0x2C3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (27, 11, N'9780440423218', CAST(0x333E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (28, 11, N'9780472051625', CAST(0x2C3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (29, 11, N'9781351978729', CAST(0xC13C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (30, 11, N'9781407177762', CAST(0xC23C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (31, 11, N'9781439144404', CAST(0xC33C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (32, 13, N'0521272629   ', CAST(0xC43C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (33, 13, N'0871296918   ', CAST(0xC53C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (34, 13, N'184022570X   ', CAST(0xE03C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (35, 13, N'6041045152   ', CAST(0xE13C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (36, 13, N'9780440423218', CAST(0xE23C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (37, 13, N'9780472051625', CAST(0xE33C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (38, 13, N'9781351978729', CAST(0xE43C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (39, 13, N'9781407177762', CAST(0x103E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (40, 13, N'9781439144404', CAST(0x113E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (41, 12, N'0521272629   ', CAST(0x123E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (42, 12, N'0871296918   ', CAST(0xB03C0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (43, 12, N'184022570X   ', CAST(0x143E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (44, 12, N'6041045152   ', CAST(0xF13D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (45, 12, N'9780440423218', CAST(0xFA3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (46, 12, N'9780472051625', CAST(0xFB3D0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (47, 12, N'9781351978729', CAST(0x053E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (48, 12, N'9781407177762', CAST(0x253E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (49, 12, N'9781439144404', CAST(0x2D3E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (50, 12, N'9781781100486', CAST(0x1D3E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (51, 12, N'9781781100486', CAST(0x563B0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (52, 12, N'9781621074564', CAST(0x3C3E0B00 AS Date), CAST(0x3D3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (53, 17, N'9780545010221', CAST(0xB03C0B00 AS Date), NULL)
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (54, 17, N'0871296918   ', CAST(0x1D3E0B00 AS Date), NULL)
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (55, 17, N'0871296918   ', CAST(0x743C0B00 AS Date), NULL)
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (56, 1, N'9781621074564', CAST(0xE13D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (57, 1, N'9781621074564', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (58, 1, N'9781621074564', CAST(0xA43D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (59, 1, N'9781621074564', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (60, 1, N'9781621074564', CAST(0x3D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (61, 1, N'9781621074564', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (62, 1, N'9781621074564', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (63, 1, N'0871296918   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (64, 1, N'0871296918   ', CAST(0x2C3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (65, 1, N'0871296918   ', CAST(0x3C3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (66, 1, N'0871296918   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (67, 1, N'0871296918   ', CAST(0xA43D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (68, 1, N'0871296918   ', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (69, 1, N'184022570X   ', CAST(0xA43D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (70, 1, N'9780472051625', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (71, 1, N'9780472051625', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (72, 1, N'9780472051625', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (73, 1, N'9780472051625', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (74, 1, N'9780472051625', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (75, 1, N'9781351978729', CAST(0x7B380B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (76, 1, N'9781351978729', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (77, 1, N'9781351978729', CAST(0x3C3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (78, 1, N'9781351978729', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (79, 1, N'9781351978729', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (80, 1, N'9781351978729', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (81, 1, N'6041045152   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (82, 1, N'6041045152   ', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (83, 1, N'6041045152   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (84, 1, N'6041045152   ', CAST(0xA43D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (85, 1, N'6041045152   ', CAST(0xA43D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (86, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (87, 1, N'0521272629   ', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (88, 1, N'0521272629   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (89, 1, N'0521272629   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (90, 1, N'0521272629   ', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (91, 1, N'0521272629   ', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (92, 1, N'0521272629   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (93, 1, N'0871296918   ', CAST(0x7B380B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (94, 1, N'0871296918   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (95, 1, N'0871296918   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (96, 1, N'184022570X   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (97, 1, N'184022570X   ', CAST(0x7B380B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (98, 1, N'184022570X   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (99, 1, N'184022570X   ', CAST(0xA43D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (100, 1, N'184022570X   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (101, 1, N'184022570X   ', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (102, 1, N'6041045152   ', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (103, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (104, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
GO
print 'Processed 100 total records'
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (105, 1, N'6041045152   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (106, 1, N'6041045152   ', CAST(0x863D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (107, 1, N'6041045152   ', CAST(0x3D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (108, 1, N'6041045152   ', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (109, 1, N'6041045152   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (110, 1, N'9780440423218', CAST(0x7B380B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (111, 1, N'9780440423218', CAST(0x7B380B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (112, 1, N'9780440423218', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (113, 1, N'9780440423218', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (114, 1, N'9780440423218', CAST(0x863D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (115, 1, N'9780440423218', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (116, 1, N'9780440423218', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (117, 1, N'9780440423218', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (118, 1, N'9780472051625', CAST(0x3C3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (119, 1, N'9780472051625', CAST(0x863D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (120, 1, N'9780472051625', CAST(0x383E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (121, 1, N'9780472051625', CAST(0xE53D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (122, 1, N'9780545010221', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (123, 1, N'9780545010221', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (124, 1, N'9780545010221', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (125, 1, N'9780545010221', CAST(0x863D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (126, 1, N'9780545010221', CAST(0x3D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (127, 1, N'9780545010221', CAST(0x863D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (128, 1, N'9781351978729', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (129, 1, N'9781351978729', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (130, 1, N'9781351978729', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (131, 1, N'9781351978729', CAST(0x383E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (132, 1, N'9781781100486', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (133, 1, N'9781781100486', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (134, 1, N'9781781100486', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (135, 1, N'9781781100486', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (136, 1, N'9781781100486', CAST(0x3D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (137, 1, N'9781621074564', CAST(0x3D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (138, 1, N'9781621074564', CAST(0x0D3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (139, 1, N'9781621074564', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (140, 1, N'9781621074564', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (141, 1, N'9781621074564', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (142, 1, N'9781621074564', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (143, 1, N'9781621074564', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (144, 1, N'9781621074564', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (145, 1, N'9781407177762', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (146, 1, N'9781407177762', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (147, 1, N'9781407177762', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (148, 1, N'9781407177762', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (149, 1, N'9781407177762', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (150, 1, N'9781407177762', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (151, 1, N'9781407177762', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (152, 1, N'9781407177762', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (153, 1, N'9781407177762', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (154, 1, N'9781407177762', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (155, 1, N'9781407177762', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (156, 1, N'9781407177762', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (157, 1, N'9781407177762', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (158, 1, N'9781407177762', CAST(0x383E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (159, 1, N'9781407177762', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (160, 1, N'9781407177762', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (161, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (162, 1, N'6041045152   ', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (163, 1, N'6041045152   ', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (164, 1, N'6041045152   ', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (165, 1, N'6041045152   ', CAST(0x0D3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (166, 1, N'6041045152   ', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (167, 1, N'6041045152   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (168, 1, N'6041045152   ', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (169, 1, N'6041045152   ', CAST(0xB03C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (170, 1, N'184022570X   ', CAST(0xB03C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (171, 1, N'184022570X   ', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (172, 1, N'184022570X   ', CAST(0x0D3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (173, 1, N'184022570X   ', CAST(0x393E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (174, 1, N'184022570X   ', CAST(0xB03C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (175, 1, N'184022570X   ', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (176, 1, N'184022570X   ', CAST(0x1D3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (177, 1, N'184022570X   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (178, 1, N'184022570X   ', CAST(0x0D3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (179, 1, N'9780545010221', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (180, 1, N'9780545010221', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (181, 1, N'9780545010221', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (182, 1, N'9780545010221', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (183, 1, N'9780545010221', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (184, 1, N'9780545010221', CAST(0x563B0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (185, 1, N'9780545010221', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (186, 1, N'9780472051625', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (187, 1, N'9780472051625', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (188, 1, N'9780472051625', CAST(0x7B380B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (189, 1, N'6041045152   ', CAST(0x0D3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (190, 1, N'6041045152   ', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (191, 1, N'6041045152   ', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (192, 1, N'6041045152   ', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (193, 1, N'6041045152   ', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (194, 1, N'6041045152   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (195, 1, N'6041045152   ', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (196, 1, N'6041045152   ', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (197, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (198, 1, N'6041045152   ', CAST(0xC63D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (199, 1, N'6041045152   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (200, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (201, 1, N'6041045152   ', CAST(0xFE3D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (202, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (203, 1, N'6041045152   ', CAST(0xE8390B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (204, 1, N'6041045152   ', CAST(0x743C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (205, 1, N'6041045152   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
GO
print 'Processed 200 total records'
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (206, 1, N'6041045152   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (207, 1, N'9780440423218', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (208, 1, N'9780440423218', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (209, 1, N'9780440423218', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (210, 1, N'9780440423218', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (211, 1, N'9780440423218', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (212, 1, N'9780440423218', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (213, 1, N'9780440423218', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (214, 1, N'9780440423218', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (215, 1, N'9780440423218', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (216, 1, N'9780440423218', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (217, 1, N'9780440423218', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (218, 1, N'9780440423218', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (219, 1, N'0521272629   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (220, 1, N'0521272629   ', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (221, 1, N'0521272629   ', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (222, 1, N'0521272629   ', CAST(0x473D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (223, 1, N'0521272629   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (224, 1, N'0521272629   ', CAST(0x473D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (225, 1, N'0521272629   ', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (226, 1, N'0521272629   ', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (227, 1, N'0521272629   ', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (228, 1, N'0521272629   ', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (229, 1, N'0521272629   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (230, 1, N'0521272629   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (231, 1, N'0521272629   ', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (232, 1, N'0521272629   ', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (233, 1, N'0521272629   ', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (234, 1, N'0521272629   ', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (235, 1, N'0521272629   ', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (236, 1, N'9781351978729', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (237, 1, N'9780472051625', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (238, 1, N'9780472051625', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (239, 1, N'9780472051625', CAST(0x3A3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (240, 1, N'9780472051625', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (241, 1, N'9780472051625', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (242, 1, N'9780472051625', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (243, 1, N'9780472051625', CAST(0x283D0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (244, 1, N'9780472051625', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (245, 1, N'9780472051625', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (246, 1, N'9780472051625', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (247, 1, N'9780472051625', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (248, 1, N'9780472051625', CAST(0x3E3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (249, 1, N'9780472051625', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (250, 1, N'9780472051625', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (251, 1, N'9780472051625', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (252, 1, N'9780472051625', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (253, 1, N'9780545010221', CAST(0xEB3C0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (254, 1, N'9780545010221', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
INSERT [dbo].[LibBorrowBook] ([IdBorrow], [IdUser], [ISBN], [DateBorrow], [DateReturn]) VALUES (255, 1, N'9780545010221', CAST(0x3B3E0B00 AS Date), CAST(0x3E3E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[LibBorrowBook] OFF
/****** Object:  Trigger [TG_LibBorrowBook_Update]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE trigger [dbo].[TG_LibBorrowBook_Update]
on [dbo].[LibBorrowBook]
instead of update AS
begin
 declare @IdBorrow int;
 declare @IdUser int;
 declare @ISBN nchar(13);
 declare @DateBorrow date;
 declare @DateReturn date;
 declare @DateReturnOld date;
 
 declare @BorrowedNumber int;
 declare @NumberBooksBorrowed int;

 select @IdBorrow = I.IdBorrow, @IdUser = I.IdUser, @ISBN = I.ISBN, @DateBorrow = I.DateBorrow, @DateReturn = I.DateReturn
 from inserted I
 
 select @DateReturnOld = DateReturn from [dbo].[LibBorrowBook] where IdBorrow=@IdBorrow
 
 if(@DateReturn IS NOT NULL and @DateReturnOld IS NULL)
	 begin
		
		--select @IdUser = IdUser from [dbo].[LibBorrowBook] where IdBorrow=@IdBorrow
	 
		select @BorrowedNumber= BorrowedNumber from [dbo].[LibUser] where IdUser = @IdUser
	 
		select @NumberBooksBorrowed= NumberBooksBorrowed from [dbo].[LibISBN] where ISBN like @ISBN
		
		 begin tran
						 begin try
								 update [dbo].[LibUser]
									set BorrowedNumber = (@BorrowedNumber - 1)
									where IdUser = @IdUser

								 update [dbo].[LibISBN]
									set NumberBooksBorrowed = (@NumberBooksBorrowed - 1)
									where ISBN = @ISBN
									
								update [dbo].[LibBorrowBook] set IdUser = @IdUser, ISBN = @ISBN, DateBorrow = @DateBorrow,[DateReturn] = @DateReturn
									where IdBorrow=@IdBorrow

		commit tran
						end try

						begin catch
							rollback
						end catch
	 end
 
	else
		begin
			update [dbo].[LibBorrowBook] set IdUser = @IdUser, ISBN = @ISBN, DateBorrow = @DateBorrow,[DateReturn] = @DateReturn
					where IdBorrow=@IdBorrow
		end
 


end
GO
/****** Object:  Trigger [TG_LibBorrowBook_Insert]    Script Date: 05/17/2018 16:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE trigger [dbo].[TG_LibBorrowBook_Insert]
on [dbo].[LibBorrowBook]
instead of insert as
begin
 declare @IdBorrow int;
 declare @IdUser int;
 declare @ISBN nchar(13);
 declare @DateBorrow date;
 declare @DateReturn date;
 
 declare @BorrowedNumber int;
 declare @NumberBooksBorrowed int;

 select @IdBorrow = I.IdBorrow, @IdUser = I.IdUser, @ISBN = I.ISBN, @DateBorrow = I.DateBorrow, @DateReturn = I.DateReturn
 from inserted I
 
 select @BorrowedNumber= BorrowedNumber from [dbo].[LibUser] where IdUser = @IdUser
 
 select @NumberBooksBorrowed= NumberBooksBorrowed from [dbo].[LibISBN] where ISBN like @ISBN
 
 begin tran
	if(@DateReturn IS NULL)
		begin
	
					 begin try
							 update [dbo].[LibUser]
								set BorrowedNumber = (@BorrowedNumber + 1)
								where IdUser = @IdUser

							 update [dbo].[LibISBN]
								set NumberBooksBorrowed = (@NumberBooksBorrowed + 1)
								where ISBN = @ISBN
								
							 insert into [dbo].[LibBorrowBook] ([IdUser], [ISBN], [DateBorrow], [DateReturn])
								VALUES (@IdUser, @ISBN, @DateBorrow, @DateReturn)

commit tran

					end try

					begin catch
						rollback
					end catch
		end
	else
		begin
			insert into [dbo].[LibBorrowBook] ([IdUser],[ISBN], [DateBorrow], [DateReturn])
								VALUES ( @IdUser, @ISBN, @DateBorrow, @DateReturn)
		end
end
GO
/****** Object:  Default [DF_BorrowBook_DateReturn]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibBorrowBook] ADD  CONSTRAINT [DF_BorrowBook_DateReturn]  DEFAULT (NULL) FOR [DateReturn]
GO
/****** Object:  Default [DF_ISBN_NumberBooksBorrowed]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibISBN] ADD  CONSTRAINT [DF_ISBN_NumberBooksBorrowed]  DEFAULT ((0)) FOR [NumberBooksBorrowed]
GO
/****** Object:  Default [DF_User_LimitNumber]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibUser] ADD  CONSTRAINT [DF_User_LimitNumber]  DEFAULT ((3)) FOR [LimitNumber]
GO
/****** Object:  Default [DF_User_BorrowedNumber]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibUser] ADD  CONSTRAINT [DF_User_BorrowedNumber]  DEFAULT ((0)) FOR [BorrowedNumber]
GO
/****** Object:  ForeignKey [FK_BorrowBook_ISBN]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibBorrowBook]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBook_ISBN] FOREIGN KEY([ISBN])
REFERENCES [dbo].[LibISBN] ([ISBN])
GO
ALTER TABLE [dbo].[LibBorrowBook] CHECK CONSTRAINT [FK_BorrowBook_ISBN]
GO
/****** Object:  ForeignKey [FK_BorrowBook_User]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibBorrowBook]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBook_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[LibUser] ([IdUser])
GO
ALTER TABLE [dbo].[LibBorrowBook] CHECK CONSTRAINT [FK_BorrowBook_User]
GO
/****** Object:  ForeignKey [FK_ISBN_Book]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibISBN]  WITH CHECK ADD  CONSTRAINT [FK_ISBN_Book] FOREIGN KEY([IdBook])
REFERENCES [dbo].[LibBook] ([IdBook])
GO
ALTER TABLE [dbo].[LibISBN] CHECK CONSTRAINT [FK_ISBN_Book]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 05/17/2018 16:03:32 ******/
ALTER TABLE [dbo].[LibUser]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[LibRole] ([IdRole])
GO
ALTER TABLE [dbo].[LibUser] CHECK CONSTRAINT [FK_User_Role]
GO
