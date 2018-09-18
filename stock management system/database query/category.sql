USE [OSMS]
GO

/****** Object:  Table [dbo].[category]    Script Date: 05/16/2018 15:33:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](50) NULL
) ON [PRIMARY]

GO

