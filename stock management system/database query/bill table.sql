USE [OSMS]
GO

/****** Object:  Table [dbo].[bill]    Script Date: 05/16/2018 15:31:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[bill](
	[bill_no] [int] NOT NULL,
	[names] [varchar](50) NULL,
	[itemName] [varchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[types] [nvarchar](50) NULL,
	[category] [varchar](50) NULL,
	[brandname] [nvarchar](50) NULL,
	[tax] [int] NULL,
	[prize] [nvarchar](50) NULL,
	[qunt] [nvarchar](50) NULL,
	[total] [nvarchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

