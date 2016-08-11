USE [KRR-PA-GLB-SERVICE]
GO

/****** Object:  Table [dbo].[visualization_menu]    Script Date: 11.08.2016 15:08:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[visualization_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NOT NULL,
	[link] [nvarchar](4000) NOT NULL,
	[type] [nvarchar](20) NOT NULL DEFAULT ('node'),
	[parent] [int] NULL DEFAULT (NULL),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[visualization_menu]  WITH CHECK ADD FOREIGN KEY([parent])
REFERENCES [dbo].[visualization_menu] ([id])
GO


CREATE NONCLUSTERED INDEX [NonClusteredIndex-20160811-150326] ON [dbo].[visualization_menu]
(
	[parent] ASC
)
INCLUDE ( 	[id],
	[name],
	[link],
	[type]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


