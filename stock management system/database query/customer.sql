USE [OSMS]
GO

/****** Object:  Table [dbo].[customer]    Script Date: 05/16/2018 15:33:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[customer](
	[names] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[types] [nvarchar](50) NULL,
	[addre] [nvarchar](50) NULL,
	[remark] [nvarchar](50) NULL,
	[company] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

