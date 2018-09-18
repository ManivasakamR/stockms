USE [OSMS]
GO

/****** Object:  Table [dbo].[login_table]    Script Date: 05/16/2018 15:33:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[login_table](
	[users_id] [varchar](50) NOT NULL,
	[passwords] [nvarchar](50) NULL,
	[user_names] [varchar](50) NULL,
	[user_grade] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

