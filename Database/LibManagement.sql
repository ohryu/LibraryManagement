USE [master]
GO
/****** Object:  Database [LibraryManagement]    Script Date: 04/26/2018 02:00:30 ******/
CREATE DATABASE [LibraryManagement] ON  PRIMARY 
( NAME = N'LibraryManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\LibraryManagement.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LibraryManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\LibraryManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LibraryManagement] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryManagement] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LibraryManagement] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LibraryManagement] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LibraryManagement] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LibraryManagement] SET ARITHABORT OFF
GO
ALTER DATABASE [LibraryManagement] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LibraryManagement] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LibraryManagement] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LibraryManagement] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LibraryManagement] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LibraryManagement] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LibraryManagement] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LibraryManagement] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LibraryManagement] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LibraryManagement] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LibraryManagement] SET  DISABLE_BROKER
GO
ALTER DATABASE [LibraryManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LibraryManagement] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LibraryManagement] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LibraryManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LibraryManagement] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LibraryManagement] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LibraryManagement] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LibraryManagement] SET  READ_WRITE
GO
ALTER DATABASE [LibraryManagement] SET RECOVERY FULL
GO
ALTER DATABASE [LibraryManagement] SET  MULTI_USER
GO
ALTER DATABASE [LibraryManagement] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LibraryManagement] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'LibraryManagement', N'ON'
GO
USE [LibraryManagement]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[IdTicket] [int] NOT NULL,
	[LimitNumber] [int] NOT NULL,
	[BorrowedNumber] [int] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[IdTicket] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ticket] ([IdTicket], [LimitNumber], [BorrowedNumber]) VALUES (1, 3, 0)
INSERT [dbo].[Ticket] ([IdTicket], [LimitNumber], [BorrowedNumber]) VALUES (2, 3, 0)
/****** Object:  Table [dbo].[Role]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [int] NOT NULL,
	[NameRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (2, N'User')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (3, N'culac')
INSERT [dbo].[Role] ([IdRole], [NameRole]) VALUES (4, N'abc')
/****** Object:  Table [dbo].[Author]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[IdAuthor] [int] NOT NULL,
	[NameAuthor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[IdAuthor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (1, N'Nguyễn Nhật Ánh')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (2, N'Nam Cao')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (3, N'Hồ Chí Minh')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (4, N'Tào Đình')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (5, N'Joanne Rowling')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (6, N'Dan Brown')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (7, N'Arthur Conan Doyle')
INSERT [dbo].[Author] ([IdAuthor], [NameAuthor]) VALUES (8, N'Jules Verne')
/****** Object:  Table [dbo].[User]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nchar](50) NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
	[IdTicket] [int] NOT NULL,
 CONSTRAINT [PK_Username] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([UserName], [Password], [IdRole], [IdTicket]) VALUES (N'an                                                ', N'123                                               ', 1, 1)
INSERT [dbo].[User] ([UserName], [Password], [IdRole], [IdTicket]) VALUES (N'bach                                              ', N'123                                               ', 2, 1)
INSERT [dbo].[User] ([UserName], [Password], [IdRole], [IdTicket]) VALUES (N'dung                                              ', N'123                                               ', 1, 1)
INSERT [dbo].[User] ([UserName], [Password], [IdRole], [IdTicket]) VALUES (N'huu                                               ', N'123                                               ', 1, 1)
INSERT [dbo].[User] ([UserName], [Password], [IdRole], [IdTicket]) VALUES (N'luu                                               ', N'123                                               ', 2, 1)
INSERT [dbo].[User] ([UserName], [Password], [IdRole], [IdTicket]) VALUES (N'tuan                                              ', N'123                                               ', 2, 1)
/****** Object:  Table [dbo].[Book]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[IdBook] [int] NOT NULL,
	[TitleOfBook] [nvarchar](50) NOT NULL,
	[IdAuthor] [int] NOT NULL,
	[PublishYear] [date] NULL,
	[ShortDescription] [nvarchar](500) NULL,
	[Image] [nchar](50) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[IdBook] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (1, N'Ngồi khóc trên cây', 1, CAST(0x852B0B00 AS Date), N'truyện viết về tình yêu của thanh thiếu niên', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (2, N'Mắt biếc', 1, CAST(0x2C240B00 AS Date), N'truyện viết về tình yêu của thanh thiếu niên', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (3, N'Tôi thấy hoa vàng trên cỏ xanh', 1, CAST(0xCB280B00 AS Date), N'truyện viết về tình yêu của thanh thiếu niên', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (4, N'Còn chút gì để nhớ', 1, CAST(0x44310B00 AS Date), N'truyện viết về tình yêu của thanh thiếu niên', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (5, N'Chí Phèo', 2, CAST(0x731D0B00 AS Date), N'Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn Bi kịch của một người nông dân nghèo bị tha hóa trong xã hội.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (6, N'Nhật kí trong tù', 3, CAST(0x12D30A00 AS Date), N'Nhật ký trong tù không chỉ ghi lại những cảnh sinh hoạt trong tù, mà còn có ý nghĩa tố cáo chế độ nhà tù khắc nghiệt của chính quyền Tưởng Giới Thạch.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (7, N'Đường Cách Mệnh', 3, CAST(0x1FBC0A00 AS Date), N'Đường kách mệnh giới thiệu tính chất và kinh nghiệm các cuộc cách mạng Mỹ (1776), cách mạng Pháp (1789), Cách mạng tháng Mười Nga (1917) và khẳng định chỉ có Cách mạng tháng Mười Nga là triệt để', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (8, N'Anh trai em gái', 4, CAST(0x51300B00 AS Date), N'Tiểu thuyết cũng nói về tình yêu sâu sắc, khắc cốt ghi tâm nhưng có biết bao trớ trêu khi tình yêu của Mai Mai lại đặt nhầm người', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (9, N'Phấn hoa lầu xanh', 4, CAST(0xC8320B00 AS Date), N'Nhân vật nữ trong truyện phải chịu những nỗi đau tột cùng về cả thể xác và tâm hồn: năm mười lăm tuổi người con gá đó đã xuất giá theo chồng nhưng không sinh được con đã bị nhà chồng nhốt vào phòng riêng, khi chồng cưới được vợ mới thì bị đuổi về nhà đẻ nhưng bố mẹ cũng không còn nhìn nhận cô là con của mình', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (10, N'Yêu anh hơn cả tử thần', 4, CAST(0x36340B00 AS Date), N'" Cả em và tử thần đều muốn có anh nhưng em ưu thế hơn ông ta, vì em yêu anh sâu sắc" Đây là một trích đoạn trong tiểu thuyết của tác giả đã cho ta thấy sức mạnh của tình yêu chân chính, mạnh hơn mọi rào cản định kiến xã hội, mạnh hơn cả số mệnh hay cái chết', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (11, N'Harry Potter and The Philosopher''s Stone ', 5, CAST(0x3D310B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (12, N'Da Vinci code', 6, CAST(0xA32B0B00 AS Date), N'The Da Vinci Code is a 2003 mystery thriller novel by Dan Brown. It follows "symbologist" Robert Langdon and cryptologist Sophie Neveu after a murder in the Louvre Museum in Paris causes them to become involved in a battle between the Priory of Sion and Opus Dei over the possibility of Jesus Christ having been a companion to Mary Magdalene.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (13, N'Hai vạn dặm dưới đáy biển', 7, CAST(0xB92C0B00 AS Date), N'Hai vạn dặm dưới đáy biển: Du hành vào thế giới dưới nước (tiếng Pháp : Vingt mille lieues sous les mers: Tour du monde sous-marin) là một cuốn tiểu thuyết cổ điển về khoa học viễn tưởng của nhà văn Pháp Jules Verne xuất bản năm 1870.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (14, N'Harry Potter and the Chamber of Secrets', 5, CAST(0x6B210B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (15, N'Harry Potter and the Prisoner of Azkaban', 5, CAST(0x66240B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (16, N'Harry Potter and the Goblet of Fire ', 5, CAST(0xD3250B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (17, N'Harry Potter and the Order of the Phoenix', 5, CAST(0x3D270B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (18, N'Harry Potter and the Half-Blood Prince', 5, CAST(0x552A0B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (19, N'Harry Potter and the Deathly Hallows', 5, CAST(0x4B2B0B00 AS Date), N'This is the tale of Harry Potter, an ordinary 11-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry.', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (20, N'Cho tôi một vé về  tuổi thơ', 1, CAST(0x58310B00 AS Date), N'The story of a man looking back on his life, Ticket to Childhood captures the texture of childhood in all of its richness', NULL)
INSERT [dbo].[Book] ([IdBook], [TitleOfBook], [IdAuthor], [PublishYear], [ShortDescription], [Image]) VALUES (21, N'Cô gái đến từ hôm qua', 1, CAST(0x4A2B0B00 AS Date), N'truyện viết về tình yêu của thanh thiếu niên', NULL)
/****** Object:  Table [dbo].[ISBN]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ISBN](
	[ISBN] [nchar](50) NOT NULL,
	[IdBook] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ISBN] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-001-123-63434-2                          ', 11, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-33-2                             ', 14, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-333-2                            ', 20, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-342-2                            ', 12, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-34555-2                          ', 19, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-35566-2                          ', 18, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-523-2                            ', 15, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-75-2                             ', 17, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-002-123-763-2                            ', 16, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-379-123-4536-2                           ', 13, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-12345-2                          ', 1, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-12346-2                          ', 2, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-12375-2                          ', 5, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-2222-2                           ', 21, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-2345-2                           ', 6, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-44443-2                          ', 8, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-46467-2                          ', 9, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-53-2                             ', 10, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-53452-2                          ', 3, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-56345-2                          ', 4, 1)
INSERT [dbo].[ISBN] ([ISBN], [IdBook], [Status]) VALUES (N'ISBN-978-893-123-74333-2                          ', 7, 1)
/****** Object:  Table [dbo].[BorrowBook]    Script Date: 04/26/2018 02:00:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowBook](
	[IdBorrow] [int] NOT NULL,
	[Username] [nchar](50) NOT NULL,
	[ISBN] [nchar](50) NOT NULL,
	[DateBorrow] [date] NOT NULL,
	[DateReturn] [date] NULL,
 CONSTRAINT [PK_BorrowBook] PRIMARY KEY CLUSTERED 
(
	[IdBorrow] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BorrowBook] ([IdBorrow], [Username], [ISBN], [DateBorrow], [DateReturn]) VALUES (1, N'bach                                              ', N'ISBN-978-893-123-12346-2                          ', CAST(0x283E0B00 AS Date), NULL)
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 04/26/2018 02:00:31 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  ForeignKey [FK_Username_Ticket]    Script Date: 04/26/2018 02:00:31 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_Username_Ticket] FOREIGN KEY([IdTicket])
REFERENCES [dbo].[Ticket] ([IdTicket])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_Username_Ticket]
GO
/****** Object:  ForeignKey [FK_Book_Author]    Script Date: 04/26/2018 02:00:31 ******/
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([IdAuthor])
REFERENCES [dbo].[Author] ([IdAuthor])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
/****** Object:  ForeignKey [FK_ISBN_Book]    Script Date: 04/26/2018 02:00:31 ******/
ALTER TABLE [dbo].[ISBN]  WITH CHECK ADD  CONSTRAINT [FK_ISBN_Book] FOREIGN KEY([IdBook])
REFERENCES [dbo].[Book] ([IdBook])
GO
ALTER TABLE [dbo].[ISBN] CHECK CONSTRAINT [FK_ISBN_Book]
GO
/****** Object:  ForeignKey [FK_BorrowBook_ISBN]    Script Date: 04/26/2018 02:00:31 ******/
ALTER TABLE [dbo].[BorrowBook]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBook_ISBN] FOREIGN KEY([ISBN])
REFERENCES [dbo].[ISBN] ([ISBN])
GO
ALTER TABLE [dbo].[BorrowBook] CHECK CONSTRAINT [FK_BorrowBook_ISBN]
GO
/****** Object:  ForeignKey [FK_BorrowBook_Username]    Script Date: 04/26/2018 02:00:31 ******/
ALTER TABLE [dbo].[BorrowBook]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBook_Username] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[BorrowBook] CHECK CONSTRAINT [FK_BorrowBook_Username]
GO
