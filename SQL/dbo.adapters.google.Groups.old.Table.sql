USE [SyncToday2015]
GO
/****** Object:  Table [dbo].[adapters.google.Groups.old]    Script Date: 26. 12. 2014 4:00:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Groups.old](
	[GroupId] [int] NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[ExternalId] [nvarchar](max) NULL,
	[AdapterId] [int] NOT NULL,
	[Title] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
