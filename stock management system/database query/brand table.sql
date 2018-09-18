USE [OSMS]
GO

/****** Object:  Table [dbo].[brand]    Script Date: 05/16/2018 15:32:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[brand](
	[category] [nvarchar](50) NOT NULL,
	[brandname] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO

