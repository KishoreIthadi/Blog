USE [master]
GO
/****** Object:  Database [N2NRELATION]    Script Date: 12/16/2017 1:14:31 PM ******/
CREATE DATABASE [N2NRELATION]
GO
USE [N2NRELATION]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [N2NRELATION]
GO
/****** Object:  Table [dbo].[tblAuthorBook]    Script Date: 12/16/2017 1:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAuthorBook](
	[BookID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
 CONSTRAINT [PK_tblAuthorBook] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC,
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblAuthors]    Script Date: 12/16/2017 1:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAuthors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblAuthors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBooks]    Script Date: 12/16/2017 1:14:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooks](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblBooks] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblAuthorBook] ([BookID], [AuthorID]) VALUES (1, 1)
INSERT [dbo].[tblAuthorBook] ([BookID], [AuthorID]) VALUES (1, 2)
INSERT [dbo].[tblAuthorBook] ([BookID], [AuthorID]) VALUES (2, 3)
SET IDENTITY_INSERT [dbo].[tblAuthors] ON 

INSERT [dbo].[tblAuthors] ([AuthorID], [Name]) VALUES (1, N'Author1')
INSERT [dbo].[tblAuthors] ([AuthorID], [Name]) VALUES (2, N'Author2')
INSERT [dbo].[tblAuthors] ([AuthorID], [Name]) VALUES (3, N'Author3')
SET IDENTITY_INSERT [dbo].[tblAuthors] OFF
SET IDENTITY_INSERT [dbo].[tblBooks] ON 

INSERT [dbo].[tblBooks] ([BookID], [Name]) VALUES (1, N'Book1')
INSERT [dbo].[tblBooks] ([BookID], [Name]) VALUES (2, N'Book2')
SET IDENTITY_INSERT [dbo].[tblBooks] OFF
ALTER TABLE [dbo].[tblAuthorBook]  WITH CHECK ADD  CONSTRAINT [FK_tblAuthorBook_tblAuthors] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[tblAuthors] ([AuthorID])
GO
ALTER TABLE [dbo].[tblAuthorBook] CHECK CONSTRAINT [FK_tblAuthorBook_tblAuthors]
GO
ALTER TABLE [dbo].[tblAuthorBook]  WITH CHECK ADD  CONSTRAINT [FK_tblAuthorBook_tblBooks] FOREIGN KEY([BookID])
REFERENCES [dbo].[tblBooks] ([BookID])
GO
ALTER TABLE [dbo].[tblAuthorBook] CHECK CONSTRAINT [FK_tblAuthorBook_tblBooks]
GO
USE [master]
GO
ALTER DATABASE [N2NRELATION] SET  READ_WRITE 
GO
