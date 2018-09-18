USE [OSMS]
GO

/****** Object:  Table [dbo].[item]    Script Date: 05/16/2018 15:33:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](50) NULL,
	[brandname] [nvarchar](50) NULL,
	[itemName] [nvarchar](50) NULL,
	[unit] [varchar](50) NULL,
	[tax] [int] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

