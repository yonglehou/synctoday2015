USE [SyncToday2015]
GO
/****** Object:  Table [dbo].[adapters.google.PhoneNumbers]    Script Date: 26. 12. 2014 4:00:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.PhoneNumbers](
	[PhoneNumberId] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[Home] [bit] NULL,
	[Other] [bit] NULL,
	[Work] [bit] NULL,
	[ContactId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PhoneNumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[adapters.google.PhoneNumbers]  WITH CHECK ADD FOREIGN KEY([ContactId])
REFERENCES [dbo].[adapters.google.Contacts] ([ContactId])
GO
