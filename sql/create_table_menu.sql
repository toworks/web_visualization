USE [KRR-PA-DEV-Development]
GO

/****** Object:  Table [dbo].[menu]    Script Date: 08.08.2016 14:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[link] [nvarchar](4000) NOT NULL,
	[type] [nvarchar](20) NULL DEFAULT ('node'),
	[parent] [int] NULL DEFAULT (NULL),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[menu]  WITH CHECK ADD FOREIGN KEY([parent])
REFERENCES [dbo].[menu] ([id])
GO


