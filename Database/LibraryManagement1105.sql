USE [LibraryManagement]
GO
/****** Object:  Table [dbo].[LibRole]    Script Date: 05/11/2018 12:00:42 ******/
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
INSERT [dbo].[LibRole] ([IdRole], [NameRole]) VALUES (3, N'Test Role2')
SET IDENTITY_INSERT [dbo].[LibRole] OFF
/****** Object:  Table [dbo].[LibBook]    Script Date: 05/11/2018 12:00:42 ******/
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
INSERT [dbo].[Persistent_Logins] ([UserName], [Series], [Token], [Last_Used]) VALUES (N'hqt95na@gmail.com                                               ', N'Q/bjZyjHiIvbOhchCl5Alg==', N'aHY4aZbdtMjPI6UfjrkJlQ==', CAST(0x0000A8DC01157E47 AS DateTime))
/****** Object:  Table [dbo].[LibUser]    Script Date: 05/11/2018 12:00:42 ******/
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
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (1, N'hqt95na@gmail.com                                                                                                               ', N'$2a$10$NUNGhhnirTGfym6rNSH06OYeFOpn2KPOEYkP3HWU7H0cMVyaqc10K', N'Hoàng Quốc Tuân', 1, 3, 0)
INSERT [dbo].[LibUser] ([IdUser], [UserName], [Password], [FullName], [IdRole], [LimitNumber], [BorrowedNumber]) VALUES (2, N'test@gmail.com                                                                                                                  ', N'$2a$10$TKWDwYqT9Cu2Rf9fxC86I.CyzGJ6nLTB1HHrCMYENdRPon36Merle', N'Tuan', 1, 3, 0)
SET IDENTITY_INSERT [dbo].[LibUser] OFF
/****** Object:  Table [dbo].[LibISBN]    Script Date: 05/11/2018 12:00:42 ******/
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
/****** Object:  Trigger [TG_LibBorrowBook_Insert]    Script Date: 05/11/2018 12:00:42 ******/
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
GO
/****** Object:  Default [DF_BorrowBook_DateReturn]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibBorrowBook] ADD  CONSTRAINT [DF_BorrowBook_DateReturn]  DEFAULT (NULL) FOR [DateReturn]
GO
/****** Object:  Default [DF_ISBN_NumberBooksBorrowed]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibISBN] ADD  CONSTRAINT [DF_ISBN_NumberBooksBorrowed]  DEFAULT ((0)) FOR [NumberBooksBorrowed]
GO
/****** Object:  Default [DF_User_LimitNumber]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibUser] ADD  CONSTRAINT [DF_User_LimitNumber]  DEFAULT ((3)) FOR [LimitNumber]
GO
/****** Object:  Default [DF_User_BorrowedNumber]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibUser] ADD  CONSTRAINT [DF_User_BorrowedNumber]  DEFAULT ((0)) FOR [BorrowedNumber]
GO
/****** Object:  ForeignKey [FK_BorrowBook_ISBN]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibBorrowBook]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBook_ISBN] FOREIGN KEY([ISBN])
REFERENCES [dbo].[LibISBN] ([ISBN])
GO
ALTER TABLE [dbo].[LibBorrowBook] CHECK CONSTRAINT [FK_BorrowBook_ISBN]
GO
/****** Object:  ForeignKey [FK_BorrowBook_User]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibBorrowBook]  WITH CHECK ADD  CONSTRAINT [FK_BorrowBook_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[LibUser] ([IdUser])
GO
ALTER TABLE [dbo].[LibBorrowBook] CHECK CONSTRAINT [FK_BorrowBook_User]
GO
/****** Object:  ForeignKey [FK_ISBN_Book]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibISBN]  WITH CHECK ADD  CONSTRAINT [FK_ISBN_Book] FOREIGN KEY([IdBook])
REFERENCES [dbo].[LibBook] ([IdBook])
GO
ALTER TABLE [dbo].[LibISBN] CHECK CONSTRAINT [FK_ISBN_Book]
GO
/****** Object:  ForeignKey [FK_User_Role]    Script Date: 05/11/2018 12:00:42 ******/
ALTER TABLE [dbo].[LibUser]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[LibRole] ([IdRole])
GO
ALTER TABLE [dbo].[LibUser] CHECK CONSTRAINT [FK_User_Role]
GO
