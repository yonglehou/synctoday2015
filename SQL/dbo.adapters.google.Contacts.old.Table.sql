USE [SyncToday2015]
GO
/****** Object:  Table [dbo].[adapters.google.Contacts.old]    Script Date: 26. 12. 2014 4:00:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adapters.google.Contacts.old](
	[ContactId] [int] NOT NULL,
	[ChangedOn] [datetimeoffset](7) NULL,
	[ExternalId] [nvarchar](max) NULL,
	[AdapterId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[GivenName] [nvarchar](max) NULL,
	[FamilyName] [nvarchar](max) NULL,
	[OrgDepartment] [nvarchar](max) NULL,
	[OrgJobDescription] [nvarchar](max) NULL,
	[OrgName] [nvarchar](max) NULL,
	[OrgTitle] [nvarchar](max) NULL,
	[GroupId] [int] NULL,
	[PrimaryPhonenumber] [nvarchar](max) NULL,
	[postalAddressCity] [nvarchar](max) NULL,
	[postalAddressStreet] [nvarchar](max) NULL,
	[postalAddressRegion] [nvarchar](max) NULL,
	[postalAddressPostcode] [nvarchar](max) NULL,
	[postalAddressCountry] [nvarchar](max) NULL,
	[postalAddressFormattedAddress] [nvarchar](max) NULL,
	[AccountId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
