USE [Izenda_Config]

/****** Object:  Table [dbo].[IzendaAccessRight]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaAccessRight](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaAdvancedSetting]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaAdvancedSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](2048) NULL,
	[DefaultValue] [nvarchar](256) NULL,
	[Type] [nvarchar](50) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaCity]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaCity](
	[GeonameId] [varchar](10) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[AsciiName] [nvarchar](255) NULL,
	[AlternateNames] [nvarchar](255) NULL,
	[Latitude] [varchar](15) NULL,
	[Longitude] [varchar](15) NULL,
	[FeatureClasss] [nvarchar](255) NULL,
	[FeatureCode] [nvarchar](255) NULL,
	[CountryCode] [nvarchar](255) NULL,
	[Cc2] [nvarchar](255) NULL,
	[Admin1Code] [varchar](10) NULL,
	[Admin2Code] [nvarchar](255) NULL,
	[Admin3Code] [nvarchar](255) NULL,
	[Admin4Code] [nvarchar](255) NULL,
	[Population] [varchar](10) NULL,
	[Elevation] [varchar](10) NULL,
	[Dem] [varchar](10) NULL,
	[Timezone] [nvarchar](255) NULL,
	[ModificationDate] [datetime] NULL,
	[CountryCode3] [nvarchar](255) NULL,
	[CountryName] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaCommonFilterField]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaCommonFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](1000) NULL,
	[DisplayName] [varchar](256) NULL,
	[Value] [varchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[DataType] [nvarchar](50) NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[Position] [int] NULL,
	[FilterFieldContent] [varchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaConnection]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaConnection](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ServerTypeId] [uniqueidentifier] NOT NULL,
	[ConnectionString] [nvarchar](500) NULL,
	[Visible] [bit] NULL,
	[Deleted] [bit] NULL,
	[RelateToConnectionId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Color] [nvarchar](10) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_Connection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaCountryCode]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaCountryCode](
	[Name] [nvarchar](256) NULL,
	[Code2] [varchar](10) NULL,
	[Code3] [varchar](10) NULL,
	[Continent] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDashboard]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDashboard](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[SubCategoryId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ImageUrl] [nvarchar](2048) NULL,
	[StretchImage] [bit] NULL,
	[BackgroundColor] [nvarchar](50) NULL,
	[ShowFilterDescription] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[Owner] [nvarchar](256) NULL,
	[LastViewed] [datetime] NULL,
	[NumberOfView] [bigint] NULL,
	[RenderingTime] [float] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[SourceId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDashboardPart]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDashboardPart](
	[Id] [uniqueidentifier] NOT NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[Type] [nvarchar](50) NULL,
	[Title] [nvarchar](256) NULL,
	[ReportId] [uniqueidentifier] NULL,
	[ReportPartId] [uniqueidentifier] NULL,
	[NumberOfRecord] [int] NULL,
	[FilterDescription] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[PositionX] [int] NULL,
	[PositionY] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[SourceId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDashboardPartFilterField]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDashboardPartFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[DashboardPartId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDataFormat]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDataFormat](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Format] [nvarchar](100) NULL,
	[Description] [nvarchar](256) NULL,
	[Category] [nvarchar](100) NULL,
	[SubCategory] [nvarchar](100) NULL,
	[DataType] [nvarchar](50) NULL,
	[AllowFilter] [bit] NULL,
	[AllowFieldProperty] [bit] NULL,
	[GroupBy] [nvarchar](50) NULL,
	[FormatDataType] [nvarchar](50) NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaDataFormat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDataSourceCategory]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDataSourceCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaDataSourceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDataTypeFunctionMapping]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDataTypeFunctionMapping](
	[Id] [uniqueidentifier] NOT NULL,
	[DataType] [nvarchar](50) NOT NULL,
	[FunctionId] [uniqueidentifier] NOT NULL,
	[FormatDataType] [nvarchar](50) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaDataTypeFunctionMapping] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaDBVersion]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaDBVersion](
	[Version] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaEmailSetting]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaEmailSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[DisplayName] [nvarchar](256) NULL,
	[EmailFromAddress] [nvarchar](256) NULL,
	[UseSystemConfiguration] [bit] NULL,
	[Server] [nvarchar](256) NULL,
	[Port] [int] NULL,
	[SecureConnection] [bit] NULL,
	[Login] [nvarchar](256) NULL,
	[Password] [nvarchar](500) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaExportMarginDefaultValue]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaExportMarginDefaultValue](
	[Id] [uniqueidentifier] NOT NULL,
	[Type] [int] NOT NULL,
	[TopValue] [float] NULL,
	[BottomValue] [float] NULL,
	[LeftValue] [float] NULL,
	[RightValue] [float] NULL,
	[HeaderValue] [float] NULL,
	[FooterValue] [float] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterField]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterId] [uniqueidentifier] NULL,
	[QuerySourceFieldId] [uniqueidentifier] NULL,
	[QuerySourceId] [uniqueidentifier] NULL,
	[QuerySourceType] [nvarchar](50) NULL,
	[RelationshipId] [uniqueidentifier] NULL,
	[Position] [int] NULL,
	[Alias] [nvarchar](256) NULL,
	[ReportFieldAlias] [nvarchar](256) NULL,
	[ReportPartTitle] [nvarchar](256) NULL,
	[Visible] [bit] NULL,
	[Required] [bit] NULL,
	[Cascading] [bit] NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[Value] [nvarchar](max) NULL,
	[DataFormatId] [uniqueidentifier] NULL,
	[FontFamily] [nvarchar](50) NULL,
	[FontSize] [int] NULL,
	[TextColor] [nvarchar](10) NULL,
	[BackgroundColor] [nvarchar](10) NULL,
	[FontBold] [bit] NULL,
	[FontItalic] [bit] NULL,
	[FontUnderline] [bit] NULL,
	[SortType] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFilterField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterOperator]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterOperator](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Label] [nvarchar](256) NULL,
	[OperatorGroupId] [uniqueidentifier] NULL,
	[AllowParameter] [bit] NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFilterOperator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterOperatorGroup]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterOperatorGroup](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[DefaultOperatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_IzendaFilterOperatorGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFilterOperatorRule]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFilterOperatorRule](
	[Id] [uniqueidentifier] NOT NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[AllowNull] [bit] NULL,
	[IsPairedValues] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFilterOperatorRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaFunction]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaFunction](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Expression] [nvarchar](256) NULL,
	[SubTotal] [bit] NULL,
	[GrandTotal] [bit] NULL,
	[FieldProperty] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaFunction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaLanguage]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaLanguage](
	[Id] [uniqueidentifier] NULL,
	[Language] [nvarchar](150) NULL,
	[CultureName] [nvarchar](20) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](150) NULL,
	[Deleted] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaLicenseSetting]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaLicenseSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[Online] [bit] NULL,
	[LicenseKey] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
	[LastRefresh] [datetime] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_License] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaPasswordHistory]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaPasswordHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[PasswordSalt] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Deleted] [bit] NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaPerformanceStatsTrend]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaPerformanceStatsTrend](
	[Id] [uniqueidentifier] NOT NULL,
	[NumberOfCore] [int] NULL,
	[NumberOfServer] [int] NULL,
	[NumberOfReport] [bigint] NULL,
	[NumberOfReportCreator] [bigint] NULL,
	[NumberOfDashboard] [bigint] NULL,
	[NumberOfDashboardCreator] [bigint] NULL,
	[NumberOfReportView] [bigint] NULL,
	[NumberOfDashboardView] [bigint] NULL,
	[NumberOfActiveTenant] [bigint] NULL,
	[NumberOfInactiveTenant] [bigint] NULL,
	[NumberOfActiveUser] [bigint] NULL,
	[NumberOfInactiveUser] [bigint] NULL,
	[NumberOfCreateReportUser] [bigint] NULL,
	[NumberOfCreateDashboardUser] [bigint] NULL,
	[IzendaVersion] [nvarchar](100) NULL,
	[IzendaConfigurationDatabase] [nvarchar](256) NULL,
	[DatabaseTypesInUse] [nvarchar](max) NULL,
	[ClientLicenseKey] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaPostalCode]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaPostalCode](
	[PostalCode] [varchar](10) NOT NULL,
	[PlaceName] [nvarchar](255) NULL,
	[Province] [nvarchar](255) NULL,
	[Latitude] [varchar](15) NULL,
	[Longitude] [varchar](15) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaQuerySource]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaQuerySource](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Selected] [bit] NULL,
	[Deleted] [bit] NULL,
	[ParentQuerySourceId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[DataSourceCategoryId] [uniqueidentifier] NULL,
	[Alias] [nvarchar](256) NULL,
	[ExtendedProperties] [nvarchar](4000) NULL,
	[PhysicalChange] [int] NULL,
	[Approval] [int] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_QuerySource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaQuerySourceCategory]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaQuerySourceCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ParentCategoryId] [uniqueidentifier] NULL,
	[ConnectionId] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_QuerySourceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaQuerySourceField]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaQuerySourceField](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[DataType] [nvarchar](50) NULL,
	[IzendaDataType] [nvarchar](50) NULL,
	[AllowDistinct] [bit] NULL,
	[Alias] [nvarchar](256) NULL,
	[Visible] [bit] NULL,
	[Filterable] [bit] NULL,
	[QuerySourceId] [uniqueidentifier] NULL,
	[Deleted] [bit] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Type] [int] NULL,
	[GroupPosition] [int] NULL,
	[Position] [int] NULL,
	[FilteredValue] [nvarchar](max) NULL,
	[ExtendedProperties] [nvarchar](max) NULL,
	[MatchedTenant] [bit] NULL,
	[PhysicalChange] [int] NULL,
	[Approval] [int] NULL,
	[FunctionName] [nvarchar](256) NULL,
	[Expression] [nvarchar](500) NULL,
	[ReportId] [uniqueidentifier] NULL,
	[IsCalculated] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaQuerySourceField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaRelationship]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaRelationship](
	[Id] [uniqueidentifier] NOT NULL,
	[JoinQuerySourceId] [uniqueidentifier] NOT NULL,
	[ForeignQuerySourceId] [uniqueidentifier] NOT NULL,
	[JoinFieldId] [uniqueidentifier] NULL,
	[ForeignFieldId] [uniqueidentifier] NULL,
	[Alias] [nvarchar](256) NULL,
	[SystemRelationship] [bit] NULL,
	[JoinType] [nvarchar](50) NULL,
	[ParentRelationshipId] [uniqueidentifier] NULL,
	[ReportId] [uniqueidentifier] NULL,
	[ForeignAlias] [nvarchar](256) NULL,
	[RelationshipPosition] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[ComparisonOperator] [nvarchar](50) NULL,
 CONSTRAINT [PK_IzendaRelationship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaRelationshipKeyJoin]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaRelationshipKeyJoin](
	[Id] [uniqueidentifier] NOT NULL,
	[RelationshipId] [uniqueidentifier] NOT NULL,
	[JoinQuerySourceId] [uniqueidentifier] NOT NULL,
	[ForeignQuerySourceId] [uniqueidentifier] NULL,
	[JoinFieldId] [uniqueidentifier] NOT NULL,
	[ForeignFieldId] [uniqueidentifier] NULL,
	[Operator] [nvarchar](50) NOT NULL,
	[JoinSourceAlias] [nvarchar](256) NULL,
	[ForeignSourceAlias] [nvarchar](256) NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[ComparisonOperator] [nvarchar](50) NULL,
	[ComparisonValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_IzendaRelationshipKeyJoin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReport]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReport](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [int] NOT NULL,
	[PreviewRecord] [int] NOT NULL,
	[AdvancedMode] [bit] NOT NULL,
	[AllowNulls] [bit] NOT NULL,
	[IsDistinct] [bit] NOT NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[SubCategoryId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Description] [nvarchar](max) NULL,
	[HeaderContent] [nvarchar](max) NULL,
	[FooterContent] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[LastViewed] [datetime] NULL,
	[Owner] [nvarchar](256) NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[Title] [nvarchar](256) NULL,
	[TitleDescriptionContent] [nvarchar](max) NULL,
	[ExcludedRelationships] [nvarchar](max) NULL,
	[NumberOfView] [bigint] NULL,
	[RenderingTime] [float] NULL,
	[CreatedById] [uniqueidentifier] NULL,
	[ModifiedById] [uniqueidentifier] NULL,
	[ExportFormatSettingData] [nvarchar](max) NULL,
	[SnapToGrid] [bit] NULL,
	[UsingFields] [nvarchar](max) NULL,
	[SourceId] [uniqueidentifier] NULL,
	[Params] [nvarchar] (max) NULL,
	[Relationships] [nvarchar] (max) NULL,
	[UsingFieldNames] [nvarchar] (max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportCategory]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Type] [int] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportDataSource]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportDataSource](
	[Id] [uniqueidentifier] NOT NULL,
	[QuerySourceId] [uniqueidentifier] NOT NULL,
	[ReportId] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[QuerySourceUniqueName] [nvarchar] (256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportFilter]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportFilter](
	[Id] [uniqueidentifier] NOT NULL,
	[Logic] [nvarchar](2000) NULL,
	[Visible] [bit] NULL,
	[ReportId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaReportFilter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportHistory]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportHistory](
	[Id] [uniqueidentifier] NOT NULL,
	[ReportId] [uniqueidentifier] NOT NULL,
	[ReportName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Definition] [nvarchar](max) NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportPart]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportPart](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](256) NOT NULL,
	[PositionX] [int] NULL,
	[PositionY] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[NumberOfRecord] [int] NULL,
	[ReportId] [uniqueidentifier] NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[SourceId] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaReportSetting]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaReportSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[EnforceVersionHistory] [bit] NULL,
	[NumOfArchivedVersionToKeep] [int] NULL,
	[RemoveArchivedVersions] [bit] NULL,
	[RecurrentReportSettingData] [nvarchar](max) NULL,
	[IsScheduled] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaRole]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaRole](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[PermissionData] [nvarchar](max) NULL,
	[QuerySources] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[RoleType] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSecurityPolicy]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSecurityPolicy](
	[Id] [uniqueidentifier] NOT NULL,
	[MinNumberOfPasswordLenght] [int] NULL,
	[MaxNumberOfPasswordLenght] [int] NULL,
	[MinNumberOfSpecialCharacter] [int] NULL,
	[MaxNumberOfSpecialCharacter] [int] NULL,
	[MinNumberOfUppercaseCharacter] [int] NULL,
	[MaxNumberOfUppercaseCharacter] [int] NULL,
	[MinNumberOfLowercaseCharacter] [int] NULL,
	[MaxNumberOfLowercaseCharacter] [int] NULL,
	[MinNumberOfNumericCharacter] [int] NULL,
	[MaxNumberOfNumericCharacter] [int] NULL,
	[MaxNumberOfRepeatSequential] [int] NULL,
	[MinNumberOfPasswordAge] [int] NULL,
	[MaxNumberOfPasswordAge] [int] NULL,
	[NotifyUseDuring] [int] NULL,
	[NumberOfPasswordToKeep] [int] NULL,
	[PasswordLinkValidity] [int] NULL,
	[NumberOfQuestionProfile] [int] NULL,
	[NumberOfQuestionResetPassword] [int] NULL,
	[NumberOfFailedLogonAllowed] [int] NULL,
	[NumberOfFailedAnswerAllowed] [int] NULL,
	[LockoutPeriod] [int] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSecurityQuestion]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSecurityQuestion](
	[Id] [uniqueidentifier] NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[OrderNumber] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaServer]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaServer](
	[Id] [uniqueidentifier] NOT NULL,
	[ServerName] [nvarchar](1000) NULL,
	[ServerCore] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSubsCommonFilterField]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSubsCommonFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[CommonFilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[SubscriptionId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSubscription]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSubscription](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Schedule] [nvarchar](max) NULL,
	[FilterValueSelection] [nvarchar](max) NULL,
	[Type] [nvarchar](100) NULL,
	[TimeZoneName] [nvarchar](256) NULL,
	[TimeZoneValue] [nvarchar](256) NULL,
	[StartDate] [datetime] NULL,
	[StartDateUtc] [datetime] NULL,
	[StartTime] [datetime] NULL,
	[RecurrenceType] [int] NULL,
	[RecurrencePattern] [int] NULL,
	[RecurrencePatternValue] [nvarchar](max) NULL,
	[IsEndless] [bit] NULL,
	[IsScheduled] [bit] NULL,
	[Occurrence] [int] NULL,
	[EndDate] [datetime] NULL,
	[EndDateUtc] [datetime] NULL,
	[DeliveryType] [nvarchar](100) NULL,
	[DeliveryMethod] [nvarchar](100) NULL,
	[ExportFileType] [nvarchar](50) NULL,
	[ExportAttachmentType] [nvarchar](50) NULL,
	[EmailSubject] [nvarchar](256) NULL,
	[EmailBody] [nvarchar](max) NULL,
	[ReportId] [uniqueidentifier] NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[Recipients] [nvarchar](max) NULL,
	[LastSuccessfulRun] [nvarchar](500) NULL,
	[NextScheduledRun] [nvarchar](500) NULL,
	[LastSuccessfulRunDate] [datetime] NULL,
	[NextScheduledRunDate] [datetime] NULL,
	[IsSubscription] [bit] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[CreatedById] [uniqueidentifier] NULL,
 CONSTRAINT [PK_IzendaReportSubscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSubscriptionFilterField]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSubscriptionFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[SubscriptionId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaSubscriptionFilterField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSystemSetting]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSystemSetting](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Value] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaSystemVariable]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaSystemVariable](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[DataType] [nvarchar](50) NULL,
	[Description] [nvarchar](2000) NULL,
	[Scope] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaTemporaryData]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaTemporaryData](
	[Id] [uniqueidentifier] NOT NULL,
	[ObjectId] [uniqueidentifier] NULL,
	[ObjectData] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaTemporaryData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaTenant]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaTenant](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantID] [varchar](256) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[Modules] [nvarchar](500) NULL,
	[PermissionData] [nvarchar](max) NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_IzendaTenant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaTimePeriod]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaTimePeriod](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Type] [nvarchar](100) NULL,
	[Value] [nvarchar](256) NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsCustomFilter] [bit] NULL,
 CONSTRAINT [PK_IzendaTimePeriod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUser]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUser](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FirstName] [nvarchar](256) NULL,
	[LastName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[PasswordSalt] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[EmailAddress] [varchar](256) NULL,
	[CurrentTokenHash] [nvarchar](256) NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
	[DataOffset] [int] NULL,
	[TimestampOffset] [int] NULL,
	[InitPassword] [bit] NULL,
	[RetryLoginTime] [smallint] NULL,
	[LastTimeAccessed] [datetime] NULL,
	[PasswordLastChanged] [datetime] NULL,
	[Locked] [bit] NULL,
	[LockedDate] [datetime] NULL,
	[CultureName] [nvarchar](20) NULL,
	[DateFormat] [nvarchar](20) NULL,
	[SystemAdmin] [bit] NULL,
	[SecurityQuestionLastChanged] [datetime] NULL,
	[NumberOfFailedSecurityQuestion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUserPermission]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUserPermission](
	[Id] [uniqueidentifier] NOT NULL,
	[ReportId] [uniqueidentifier] NULL,
	[DashboardId] [uniqueidentifier] NULL,
	[AssignedTo] [nvarchar](4000) NULL,
	[AssignedType] [int] NULL,
	[AccessRightId] [uniqueidentifier] NULL,
	[Position] [int] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUserRole]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaUserSecurityQuestion]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaUserSecurityQuestion](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SecurityQuestionId] [uniqueidentifier] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspace]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspace](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CopyRoles] [bit] NULL,
	[CopyReport] [bit] NULL,
	[CopyDashboard] [bit] NULL,
	[CopyRolePermission] [bit] NULL,
	[CopyAdvancedSettings] [bit] NULL,
	[CopyDataModel] [bit] NULL,
	[CopyTenantPermissions] [bit] NULL,
	[SourceId] [uniqueidentifier] NULL,
	[SelectAllTenants] [bit] NULL,
	[SourceDataModel] [nvarchar](max) NULL,
	[SourceHashCode] [nvarchar](500) NULL,
	[CopiedRolesData] [nvarchar](max) NULL,
	[CopiedRolePermissionData] [nvarchar](max) NULL,
	[TotalHashCode] [nvarchar](500) NULL,
	[SourceReportModel] [nvarchar](max) NULL,
	[SourceTemplateModel] [nvarchar](max) NULL,
	[SourceDashboardModel] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspaceMapping]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspaceMapping](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkspaceId] [uniqueidentifier] NULL,
	[FromDatabaseName] [nvarchar](256) NULL,
	[Type] [int] NULL,
	[FromObject] [nvarchar](256) NULL,
	[ToDatabaseName] [nvarchar](256) NULL,
	[ToObject] [nvarchar](256) NULL,
	[IsGlobal] [bit] NULL,
	[FromServer] [nvarchar](256) NULL,
	[ToServer] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspaceMappingTenant]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspaceMappingTenant](
	[WorkspaceMappingId] [uniqueidentifier] NULL,
	[TenantId] [uniqueidentifier] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IzendaWorkspaceTenant]    Script Date: 5/5/2017 1:40:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IzendaWorkspaceTenant](
	[WorkspaceId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Status] [int] NULL,
	[SourceDataModel] [nvarchar](max) NULL,
	[PhysicalDataModel] [nvarchar](max) NULL,
	[DestinationHashCode] [nvarchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d001', N'Quick Edit', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d002', N'Save As', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d003', N'Locked', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d004', N'View Only', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d005', N'No Access', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d006', N'Save As', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d007', N'Locked', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d008', N'View Only', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d009', N'No Access', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d010', N'Full Access', 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAccessRight] ([Id], [Name], [Type], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13698ebf-3e8e-43e1-9e2b-ad3f17d7d011', N'Full Access', 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5b96adfc-02c6-4f06-b1ef-0556320227e9', N'SetAdditiveFieldAutoFilterable', N'0', N'0', N'Security', NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.000' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'382f900c-b5cb-43a1-9bc6-1212ed05f5d0', N'ShowIntroductionText', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5be90952-c6f7-4a13-90fd-16f47d238df5', N'SetAdditiveFieldAutoFilterable', N'0', N'0', N'Security', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:17.063' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4a40fe8b-9856-4814-8f4e-186f36309ade', N'ShowTenantField', N'1', N'1', N'Security', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:17.053' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ace76032-48a9-40bf-a7eb-2341164811a8', N'SortColumnName', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'65e76caa-9c38-487b-88d1-39ef02240308', N'TimezoneForTimestampOffset', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'630393f4-ed1d-4b6f-8440-3c37f9c0bb18', N'UseNoLock', N'1', N'1', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'93b92f7b-fb81-4039-a9b7-4bf1d0e05045', N'QueryTimeout', N'3600', N'3600', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'944264df-50ed-4187-a39a-509f1bbd453b', N'DataSourceLimit', N'1000', N'1000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de9314ab-914d-47a2-aabd-5dba9fe659a6', N'ShowTenantField', N'1', N'1', N'Security', NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.000' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd9317d91-fd6a-497f-b037-69fdcdc25427', N'TrimTimeInJoins', N'1', N'1', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'612a746a-4284-4598-83ea-703173a0e327', N'TimezoneForDataOffset', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5a2cf40d-7ae3-4a28-a323-77cf6c7acfd2', N'QueryLimit', N'100000', N'100000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'56d625e0-6a17-42a7-a08e-7f292f49ab77', N'FieldLimit', N'1000', N'1000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e4eb4c3c-c0c1-4288-b9c9-9ed1afa382a2', N'TenantField', N'', N'', N'Security', NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.000' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4d2f7f4d-ae63-4f3c-b0d1-a5498af9d21a', N'SetAdditiveFieldAutoVisible', N'0', N'0', N'Security', NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.000' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7c3282fd-ed3f-4369-8418-afd05bf6b6b5', N'SetAdditiveFieldAutoVisible', N'0', N'0', N'Security', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:17.060' AS DateTime), NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd9a062a3-cd25-4a07-b77b-b6f5145c9d36', N'PivotColumnLimit', N'100000', N'100000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9229d15a-1751-45b9-bbe3-c2be27f67fc4', N'SendToDiskPath', N'', N'', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'261d5cd6-c937-4c44-8e9c-c53db6281711', N'ShowSchemaName', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bc56ad1f-5204-46da-9b93-d07602138f55', N'FilterLimit', N'1000', N'1000', N'Performance', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'36efa5c1-7220-4ae6-854c-da5ff5aef310', N'ConvertNullToEmptyString', N'0', N'0', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3e3c49a4-17b2-4fa0-8dcc-dac1ec085092', N'IntroductionText', N'', N'', N'Others', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaAdvancedSetting] ([Id], [Name], [Value], [DefaultValue], [Type], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'87152938-73da-469b-bfa0-fadaf18b37dd', N'TenantField', N'', N'', N'Security', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:17.047' AS DateTime), NULL)
INSERT [dbo].[IzendaConnection] ([Id], [Name], [ServerTypeId], [ConnectionString], [Visible], [Deleted], [RelateToConnectionId], [TenantId], [Color], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e2d38b4c-e0dc-4d7d-88b9-3797665d2fa8', N'retail', N'572bd576-8c92-4901-ab2a-b16e38144813', N'a3dbDHL/DyxmiAL0HKF0Huv0GSmu6PLX3lxXjYSIKBuQVYYCsGLNBskFn5Xi5+21kce4Zt9w6YNGyhyFF6D2lIb7/wBBzNUXOOo4FtdAZZw=', 1, 0, NULL, N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaConnection] ([Id], [Name], [ServerTypeId], [ConnectionString], [Visible], [Deleted], [RelateToConnectionId], [TenantId], [Color], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'76fb9a34-b160-4d59-b16b-608c7a1d0217', N'retail', N'572bd576-8c92-4901-ab2a-b16e38144813', N'8sFUVxBEWRCsN0JXupg7ohbcqUFyDodBOdRGBTBVnx9o8h1/exclxLEfJeFBaFcyNx9wdc6++9mcJiJvK+PEHa3ywyLC5wPlE7LCPA2H4vM=', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4468205f-3b6b-47cf-8edb-009d56cd8eca', N'0000', N'0000', N'Positive: 15000, Negative: -15000', N'Number', N'', N'Numeric', 0, 1, N'', NULL, 94, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e02ef6b7-685e-4e17-9194-00bf9e67f17f', N'$0000', N'$0000', N'Positive: $15000, Negative: -$15000', N'Currency', N'', N'Numeric', 0, 1, N'', NULL, 99, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1bc58a6d-9137-4ff8-869b-00f7ddec4366', N'$/100', N'$/100', N'Positive: $150.00', N'Currency', N'', N'Numeric', 0, 1, N'', NULL, 100, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'58afe61e-b7e9-44b3-a6bf-01b52b1ccd5c', N'0000%', N'0000%', N'Positive: 15000%, Negative: -15000%', N'Percentage', N'', N'Numeric', 0, 1, N'', NULL, 105, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f455bb6c-ac46-4ba1-803c-01cd35f2e64e', N'% of Group', N'% of Group', N'', N'Percentage', N'', N'Numeric', 0, 1, N'', NULL, 106, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5b8dd671-24c7-4751-9d0b-02053dbe35cf', N'% of Group (with rounding)', N'% of Group (with rounding)', N'', N'Percentage', N'', N'Numeric', 0, 1, N'', NULL, 107, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dd465832-37ea-41d7-91d5-021dc4a04176', N'Page Number', N'Page Number', N'', N'', N'', N'Page Number', 0, 1, N'', NULL, 111, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7371329e-de2a-4585-b229-02549c9682fa', N'Page Number of Total Page Numbers', N'Page Number of Total Page Numbers', N'', N'', N'', N'Page Number', 0, 1, N'', NULL, 112, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3ac94ac6-b335-431a-918d-0256f2dc8e39', N'1K', N'1K', N'', N'Abbreviation', N'', N'Numeric', 0, 1, N'', NULL, 108, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'726d2bd0-c846-484c-ac24-026b5c265022', N'1M', N'1M', N'', N'Abbreviation', N'', N'Numeric', 0, 1, N'', NULL, 109, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'daf594b4-7824-494d-b353-02789380c9a7', N'1B', N'1B', N'', N'Abbreviation', N'', N'Numeric', 0, 1, N'', NULL, 110, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c7cd571e-efa9-4ec6-bee9-02e0a8afb143', N'Day', N'Day', N'16', N'Long Date', N'', N'Date & Time', 0, 1, N'day', NULL, 25, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'703c194f-c90c-4512-9b2f-0350e9241102', N'Page Number / Total Page Numbers', N'Page Number / Total Page Numbers', N'', N'', N'', N'Page Number', 0, 1, N'', NULL, 113, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7e4ed46a-c06a-4d47-b032-03aa530ab331', N'Month', N'Month', N'01', N'Long Date', N'', N'Date & Time', 0, 1, N'month', NULL, 26, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'76875180-32c1-4180-b92f-03bdb14c4f6a', N'Year', N'Year', N'2016', N'Long Date', N'', N'Date & Time', 0, 1, N'year', NULL, 27, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8e4b292a-9685-4bca-93ca-03bdeee470cc', N'Month Name', N'Month Name', N'January', N'Long Date', N'', N'Date & Time', 0, 1, N'month', NULL, 28, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1856a6e8-15f9-4602-9c80-03ccb98fd821', N'Day of Week', N'Day of Week', N'Sunday', N'Long Date', N'', N'Date & Time', 0, 1, N'weekday', NULL, 29, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fdcafa84-11d5-4e0d-a0db-04c7762d7afb', N'Date', N'Date', N'02/15/2016', N'Long Date', N'', N'Date & Time', 0, 1, N'date', NULL, 30, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'07ad61ba-02e0-4270-b541-0524f384895e', N'Week Number', N'Week Number', N'Week 07 - 2016', N'Long Date', N'', N'Date & Time', 0, 1, N'weeknumber', NULL, 31, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'06195f60-9fae-402c-ad1c-06153747d0b9', N'yyyy - Qtr', N'yyyy - Qtr', N'2016-Q1', N'Long Date', N'', N'Date & Time', 0, 1, N'yearandquarter', NULL, 32, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8bec5d4e-ce5a-4393-9aca-066d6560b546', N'Qtr', N'Qtr', N'Q1', N'Long Date', N'', N'Date & Time', 0, 1, N'quarter', NULL, 33, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8074c8aa-55c7-4326-b6cd-0d4b0f7300cb', N'MM/dd/yyyy', N'MM/dd/yyyy', N'01/01/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'99b3e614-e8b5-4029-92f4-0eb3b4567ee8', N'M/d/yyyy', N'M/d/yyyy', N'1/1/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dac64bc3-f80d-471d-9c85-108e1b4ba12f', N'MM/dd/yy', N'MM/dd/yy', N'01/01/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 3, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1a096ce2-ec61-434a-8661-111c1144d280', N'M/d/yy', N'M/d/yy', N'1/1/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 4, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'39205d97-69c0-4218-aebc-1258050ee213', N'dd/MM/yyyy', N'dd/MM/yyyy', N'01/01/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 5, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'37ea8e5a-221c-4e00-88c2-1462db60c321', N'd/M/yyyy', N'd/M/yyyy', N'1/1/2016', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 6, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'47965d0b-abc8-4e20-a588-14c45a73c3f9', N'dd/MM/yy', N'dd/MM/yy', N'01/01/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 7, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de0efa66-6346-4313-800c-1619704e1d77', N'd/M/yy', N'd/M/yy', N'1/1/16', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 8, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'aae0b97a-0b8b-4279-b6ab-172b2a5a7b94', N'yyyy/MM/dd', N'yyyy/MM/dd', N'2016/01/01', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 9, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dd8d2ffe-8df3-49b2-93e6-181b0a7d3823', N'yyyy/M/d', N'yyyy/M/d', N'2016/1/1', N'Short Date', N'', N'Date & Time', 1, 1, N'date', NULL, 10, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0833ea48-a1ec-43bc-889f-18c64165104f', N'MM-yy', N'MM-yy', N'01-16', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 11, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0549ff60-f999-4c9f-b7ce-19ca7136c108', N'M-yy', N'M-yy', N'1-16', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 12, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8428b370-13c3-444e-aace-1a6310257460', N'MM-yyyy', N'MM-yyyy', N'01-2016', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 13, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0aec04a1-c573-4858-967d-1a65899905fb', N'M-yyyy', N'M-yyyy', N'1-2016', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 14, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1f15d83b-b08f-4fef-a2b8-1af83b3d3089', N'yy-MM', N'yy-MM', N'16-01', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 15, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ce48ffc4-ba34-44b4-a6a3-1e3aa9bfb489', N'yy-M', N'yy-M', N'16-1', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 16, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a5dc228e-87be-4131-89e7-21b2942ceb6c', N'yyyy-MM', N'yyyy-MM', N'2016-01', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 17, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5cde36e7-3bc1-46be-a0aa-22578b7b3dcf', N'yyyy-M', N'yyyy-M', N'2016-1', N'Short Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 18, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b330e42b-5f3f-449c-8437-24fcb3900cdc', N'[Month Name]-yy', N'[Month Name]-yy', N'January-16', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 19, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd80cabee-2301-45e2-9923-252122708817', N'[Month Name]-yyyy', N'[Month Name]-yyyy', N'January-2016', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 20, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cd72509f-b5eb-4f6b-93c6-2631950aaad5', N'yyyy-[Month Name]', N'yyyy-[Month Name]', N'2016-January', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 21, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'565be5b0-a2ec-44e9-a2dd-2b7e46b9ab89', N'yy-[Month Name]', N'yy-[Month Name]', N'16-January', N'Long Date', N'', N'Date & Time', 1, 1, N'yearandmonth', NULL, 22, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'518ebae0-be84-410e-8d61-2c121bd5c768', N'[Day Names of the Week], [Month Name] dd, yyyy', N'[Day Names of the Week], [Month Name] dd, yyyy', N'Friday, January 01, 2016', N'Long Date', N'', N'Date & Time', 1, 1, N'date', NULL, 23, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'64742c1f-d2d0-46da-8e80-2c1cb57a55e1', N'[Day Names of the Week], [Month Name] d, yyyy', N'[Day Names of the Week], [Month Name] d, yyyy', N'Friday, January 1, 2016', N'Long Date', N'', N'Date & Time', 1, 1, N'date', NULL, 24, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'69b175fb-a3f2-40bb-9162-2eb8cf5f7169', N'HH:mm tt (12-hour time)', N'HH:mm tt (12-hour time)', N'01:05 AM', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 34, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f629aeb7-7cd5-48e9-a194-30a1c9796b55', N'H:mm tt (12-hour time)', N'H:mm tt (12-hour time)', N'1:05 PM', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 35, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2e2acfa1-02aa-42d6-872c-3188c2d423c9', N'HH:mm (24-hour time)', N'HH:mm (24-hour time)', N'13:05', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 36, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9ddf1adf-b54b-4b29-8fcf-32129371724d', N'H:mm (24-hour time)', N'H:mm (24-hour time)', N'1:05', N'Short Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 37, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'55ae7c7a-f463-43ef-ba3a-327b02c5a196', N'HH:mm:ss tt', N'HH:mm:ss tt', N'01:05:20 AM', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 38, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f0692195-e1c7-4029-89b4-32bd89250f80', N'H:mm:ss tt', N'H:mm:ss tt', N'1:05:08 PM', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 39, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c710dc48-20c8-4122-b213-3307cb096a01', N'HH:mm:ss', N'HH:mm:ss', N'13:05:08', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 40, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'987f0bc1-1348-4b04-ad50-347a200c223f', N'H:mm:ss', N'H:mm:ss', N'1:05:08', N'Long Hour', N'', N'Date & Time', 1, 1, N'time', NULL, 41, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9d33f3e0-b1ab-42fa-9b8e-356011065066', N'MM/dd/yyyy HH:mm:ss tt', N'MM/dd/yyyy HH:mm:ss tt', N'01/01/2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 42, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2a9e0025-7bc0-4cd7-bc73-364986804790', N'M/d/yyyy HH:mm:ss tt', N'M/d/yyyy HH:mm:ss tt', N'1/1/2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 43, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8a3ab3b3-f3b3-4a92-a92d-38db2f8b1642', N'MM/dd/yy HH:mm:ss tt', N'MM/dd/yy HH:mm:ss tt', N'01/01/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 44, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'617ab284-1175-4099-b0eb-3bb677630347', N'M/d/yy HH:mm:ss tt', N'M/d/yy HH:mm:ss tt', N'1/1/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 45, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0d64d305-4a30-4e1e-8598-3bedce6a6922', N'dd/MM/yyyy HH:mm:ss tt', N'dd/MM/yyyy HH:mm:ss tt', N'01/01/2016 01:05 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 46, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'936cc5c5-7f2a-4658-9623-3ca7ffc79774', N'd/M/yyyy HH:mm:ss tt', N'd/M/yyyy HH:mm:ss tt', N'1/1/2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 47, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4c1e0945-dd57-4504-b52f-3cf82366966e', N'dd/MM/yy HH:mm:ss tt', N'dd/MM/yy HH:mm:ss tt', N'01/01/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 48, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ffff1be2-d4a3-4fe3-b1b3-3cfbbc19b602', N'd/M/yy HH:mm:ss tt', N'd/M/yy HH:mm:ss tt', N'1/1/16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 49, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0c6e93f8-8d3f-4606-b06f-3d97fce22f47', N'yyyy/MM/dd HH:mm:ss tt', N'yyyy/MM/dd HH:mm:ss tt', N'2016/01/01 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 50, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa8c8ded-cb76-4c09-9e99-4005050c4c00', N'yyyy/M/d HH:mm:ss tt', N'yyyy/M/d HH:mm:ss tt', N'2016/1/1 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 51, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f396a198-335a-4ff3-bc5f-40a45bff2b2c', N'MM-yy HH:mm:ss tt', N'MM-yy HH:mm:ss tt', N'01-16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 52, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'525f7687-51ae-4df9-8308-415e4713d1ee', N'M-yy HH:mm:ss tt', N'M-yy HH:mm:ss tt', N'1-16 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 53, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'49d4e3f7-6c74-4464-bca3-454d1b97de6f', N'MM-yyyy HH:mm:ss tt', N'MM-yyyy HH:mm:ss tt', N'01-2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 54, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'90ace7c2-534c-4130-9a51-45f6d3fc1693', N'M-yyyy HH:mm:ss tt', N'M-yyyy HH:mm:ss tt', N'1-2016 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 55, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1bda7a16-2e0b-405c-b65f-465693fc47f6', N'yy-MM HH:mm:ss tt', N'yy-MM HH:mm:ss tt', N'16-01 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 56, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'27f16394-b625-43e0-a651-48069468f1be', N'yy-M HH:mm:ss tt', N'yy-M HH:mm:ss tt', N'16-1 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 57, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4f2b4b1f-44ae-4e5d-9fdb-482b35bca7ca', N'yyyy-MM HH:mm:ss tt', N'yyyy-MM HH:mm:ss tt', N'2016-01 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 58, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'43a3ccd0-1f47-450c-9ff8-489099d3f44f', N'yyyy-M HH:mm:ss tt', N'yyyy-M HH:mm:ss tt', N'2016-1 01:05:08 AM', N'Short Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 59, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8079bc9c-199f-4f26-adb4-4b6a6e667a6e', N'MM/dd/yyyy HH:mm:ss', N'MM/dd/yyyy HH:mm:ss', N'01/01/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 60, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3f1ec142-fd4b-4f6a-8f39-4d2901660360', N'M/d/yyyy HH:mm:ss', N'M/d/yyyy HH:mm:ss', N'1/1/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 61, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7844971b-6945-47d2-909c-4ee118d84b72', N'MM/dd/yy HH:mm:ss', N'MM/dd/yy HH:mm:ss', N'01/01/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 62, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5f12e0cf-b5b3-4fb8-966c-4ef10a75a211', N'M/d/yy HH:mm:ss', N'M/d/yy HH:mm:ss', N'1/1/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 63, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e33e2fd3-3fa5-4a63-a700-522c62781d62', N'dd/MM/yyyy HH:mm:ss', N'dd/MM/yyyy HH:mm:ss', N'01/01/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 64, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd91c8331-3a1e-4e1f-b1ec-558e465194b0', N'd/M/yyyy HH:mm:ss', N'd/M/yyyy HH:mm:ss', N'1/1/2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 65, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'57e7e874-f2e2-4a36-9213-56ba0400d62b', N'dd/MM/yy HH:mm:ss', N'dd/MM/yy HH:mm:ss', N'01/01/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 66, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'eefd6063-e59d-42ec-a0d6-56cfb4daf691', N'd/M/yy HH:mm:ss', N'd/M/yy HH:mm:ss', N'1/1/16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 67, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'784191b5-429d-4db3-9cd1-5764d2bd4f14', N'yyyy/MM/dd HH:mm:ss', N'yyyy/MM/dd HH:mm:ss', N'2016/01/01 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 68, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5ecab5c8-8ac7-4de7-a1b1-5a1647904941', N'yyyy/M/d HH:mm:ss', N'yyyy/M/d HH:mm:ss', N'2016/1/1 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 69, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9934ed15-4eb2-4d24-9b5b-5a967abbb2b3', N'MM-yy HH:mm:ss', N'MM-yy HH:mm:ss', N'01-16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 70, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e667285f-3b35-463f-9e74-5adb93569afe', N'M-yy HH:mm:ss', N'M-yy HH:mm:ss', N'1-16 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 71, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4745208e-4ecc-4038-aac7-5afc7319c36b', N'MM-yyyy HH:mm:ss', N'MM-yyyy HH:mm:ss', N'01-2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 72, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e85030bc-8076-4e40-80b5-5b5f1196a292', N'M-yyyy HH:mm:ss', N'M-yyyy HH:mm:ss', N'1-2016 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 73, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3dfcc6e1-2391-4cc9-b263-5dac3359602a', N'yy-MM HH:mm:ss', N'yy-MM HH:mm:ss', N'16-01 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 74, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ec708bba-7a50-4b1f-af5f-5dd8afc80110', N'yy-M HH:mm:ss', N'yy-M HH:mm:ss', N'16-1 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 75, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'353f1ebc-5d53-4802-a269-60516cd92ded', N'yyyy-MM HH:mm:ss', N'yyyy-MM HH:mm:ss', N'2016-01 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 76, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6d443fad-8764-497c-abe4-61c534e26787', N'yyyy-M HH:mm:ss', N'yyyy-M HH:mm:ss', N'2016-1 13:05:08', N'Short Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 77, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4fa8464a-d29c-44e1-9ada-647b36b6d109', N'[Month Name]-yy HH:mm:ss tt', N'[Month Name]-yy HH:mm:ss tt', N'January-16 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 78, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ec36fff8-eccb-49a1-813c-67164e64d984', N'[Month Name]-yyyy HH:mm:ss tt', N'[Month Name]-yyyy HH:mm:ss tt', N'January-2016 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 79, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cfe19542-05a0-4204-88c1-683a840bfab6', N'yyyy-[Month Name] HH:mm:ss tt', N'yyyy-[Month Name] HH:mm:ss tt', N'2016-January 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 80, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'196ca9d3-a366-45a9-9bd5-68b6fc3bddf2', N'yy-[Month Name] HH:mm:ss tt', N'yy-[Month Name] HH:mm:ss tt', N'16-January 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 81, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0523248a-c64e-498e-b0b1-69eb20b817bb', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss tt', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss tt', N'Friday, January 01, 2016 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 82, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'73420f7b-ff6d-40c5-820e-6bb3e2953b41', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss tt', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss tt', N'Friday, January 1, 2016 01:05:08 AM', N'Long Date & Long Hour', N'12-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 83, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b8ac0da6-0300-4565-ba2a-6c1980eaa25b', N'[Month Name]-yy HH:mm:ss', N'[Month Name]-yy HH:mm:ss', N'January-16 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 84, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9c544e73-32e9-4c7d-9de8-6c229bd73a3e', N'[Month Name]-yyyy HH:mm:ss', N'[Month Name]-yyyy HH:mm:ss', N'January-2016 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 85, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7d463002-30df-4046-a14d-6c687e4e7a92', N'yyyy-[Month Name] HH:mm:ss', N'yyyy-[Month Name] HH:mm:ss', N'2016-January 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 86, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c58457a6-98a1-4e69-92c9-6e093e2f58f3', N'yy-[Month Name] HH:mm:ss', N'yy-[Month Name] HH:mm:ss', N'16-January 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'yearmonthandtime', NULL, 87, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'54c32a12-c047-42f6-b256-70d389788e88', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss', N'[Day Names of the Week], [Month Name] dd, yyyy HH:mm:ss', N'Friday, January 01, 2016 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 88, NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3bd8ea56-6110-4047-9bd0-76086ec5ebcf', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss', N'[Day Names of the Week], [Month Name] d, yyyy HH:mm:ss', N'Friday, January 1, 2016 13:05:08', N'Long Date & Long Hour', N'24-hour', N'Date & Time', 1, 1, N'dateandtime', NULL, 89, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e31031c5-8be1-4266-abd9-773960317c56', N'0.00', N'0.00', N'Positive: 15000.25, Negative: -15000.25', N'Number', N'', N'Numeric', 1, 1, N'', NULL, 90, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'42b78f79-bef7-4eb1-9e5d-77d7eb79411f', N'0,000.00', N'0,000.00', N'Positive: 15,000.25, Negative: -15,000.25', N'Number', N'', N'Numeric', 1, 1, N'', NULL, 91, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83575413-69d8-445c-a36a-78c8d654aba2', N'-(0.00)', N'-(0.00)', N'Positive: 15000.25, Negative: -(15000,25)', N'Number', N'', N'Numeric', 1, 0, N'', NULL, 92, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'104a55b9-70fb-429c-a9d9-78d99cc09f53', N'-(0,000.00)', N'-(0,000.00)', N'Positive: 15,000.25, Negative: -(15,000.25)', N'Number', N'', N'Numeric', 1, 0, N'', NULL, 93, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8813d10-9860-4564-99b1-7a562c523a8e', N'$0.00', N'$0.00', N'Positive: $15000.25, Negative: -$15000.25', N'Currency', N'', N'Numeric', 1, 1, N'', NULL, 95, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'12506ff6-bef8-414d-a1c3-7b61ebbe6320', N'$0,000.00', N'$0,000.00', N'Positive: $15,000.25, Negative: -$15,000.25', N'Currency', N'', N'Numeric', 1, 1, N'', NULL, 96, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bf844ffd-ee52-4bcb-b24c-7bb29b1cd4d1', N'-($0.00)', N'-($0.00)', N'Positive: $15000.25, Negative: -($15000.25)', N'Currency', N'', N'Numeric', 1, 0, N'', NULL, 97, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9022c8dd-ad27-47fa-b25c-7df7efee0559', N'-($0,000.00)', N'-($0,000.00)', N'Positive: $15,000.25, Negative: -($15,000.25)', N'Currency', N'', N'Numeric', 1, 0, N'', NULL, 98, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c2ec0a9f-5c13-4db5-bf9a-80758c05ab0c', N'0.00%', N'0.00%', N'Positive: 15000.25%, Negative: -15000.25%', N'Percentage', N'', N'Numeric', 1, 1, N'', NULL, 101, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3b59cca3-159e-4814-8a11-8394c285ea6b', N'0,000.00%', N'0,000.00%', N'Positive: 15,000.25%, Negative: -15,000.25%', N'Percentage', N'', N'Numeric', 1, 1, N'', NULL, 102, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b5717e46-05ee-4304-8500-83d443c565ee', N'-(0.00%)', N'-(0.00%)', N'Positive: 15000.25%, Negative: -(15000.25%)', N'Percentage', N'', N'Numeric', 1, 0, N'', NULL, 103, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'be821d25-8977-4473-b0d6-8457aa43175e', N'-(0,000.00%)', N'-(0,000.00%)', N'Positive: 15,000.25%, Negative: -(15,000.25%)', N'Percentage', N'', N'Numeric', 1, 0, N'', NULL, 104, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d901', N'HH:mm tt (12-hour time)', N'HH:mm tt (12-hour time)', N'01:05 AM', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 114, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d902', N'H:mm tt (12-hour time)', N'H:mm tt (12-hour time)', N'1:05 PM', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 115, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d903', N'HH:mm (24-hour time)', N'HH:mm (24-hour time)', N'13:05', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 116, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d904', N'H:mm (24-hour time)', N'H:mm (24-hour time)', N'1:05', N'Short Hour', N'', N'Time', 1, 1, N'', NULL, 117, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d905', N'HH:mm:ss tt', N'HH:mm:ss tt', N'01:05:20 AM', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 118, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d906', N'H:mm:ss tt', N'H:mm:ss tt', N'1:05:08 PM', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 119, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d907', N'HH:mm:ss', N'HH:mm:ss', N'13:05:08', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 120, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataFormat] ([Id], [Name], [Format], [Description], [Category], [SubCategory], [DataType], [AllowFilter], [AllowFieldProperty], [GroupBy], [FormatDataType], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f2f4a45-8f39-4574-98ef-fa44eca5d908', N'H:mm:ss', N'H:mm:ss', N'1:05:08', N'Long Hour', N'', N'Time', 1, 1, N'', NULL, 121, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c02', N'Text', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c03', N'Text', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c04', N'Text', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c05', N'Text', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c06', N'Text', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4c7144d-4617-4da6-8f37-367649f52c07', N'Text', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738601', N'Time', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738602', N'Time', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738603', N'Time', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738604', N'Time', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738605', N'Time', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738606', N'Time', N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b9205cb-d2c6-4d13-a38f-64b6fe738607', N'Time', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Time', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda602', N'Money', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda603', N'Money', N'8dc8efc6-9e0a-4c3e-bea0-4daf541ceae4', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda604', N'Money', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda605', N'Money', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda606', N'Money', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda607', N'Money', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda608', N'Money', N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda609', N'Money', N'ab4bbbef-1dcf-4f15-88a1-f3bc0da6a076', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6deb5dfb-168a-46cd-8972-662377dda610', N'Money', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Money', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009602', N'Boolean', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009604', N'Boolean', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009605', N'Boolean', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7fc2e31-2af6-457f-b78e-9920b9009608', N'Boolean', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Text', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc02', N'Numeric', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc03', N'Numeric', N'8dc8efc6-9e0a-4c3e-bea0-4daf541ceae4', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc04', N'Numeric', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc05', N'Numeric', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc06', N'Numeric', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc07', N'Numeric', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc08', N'Numeric', N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc09', N'Numeric', N'ab4bbbef-1dcf-4f15-88a1-f3bc0da6a076', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3efabb59-9a55-449d-8143-d9f6cde4dc10', N'Numeric', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d702', N'Datetime', N'69e7d5ae-f396-41fc-819e-ca798d23495f', NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d703', N'Datetime', N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d704', N'Datetime', N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d705', N'Datetime', N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Datetime', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d706', N'Datetime', N'36d8f605-1242-4c43-9b46-aced94b62709', N'Datetime', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d707', N'Datetime', N'004d18e4-29ac-41dd-8fb5-96c1aff55ade', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d708', N'Datetime', N'0f74fea0-9279-46ba-818a-64c478bcf3ff', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d709', N'Datetime', N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Datetime', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d710', N'Datetime', N'6c9000d1-8900-41e8-b759-4a23c6a1ab82', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDataTypeFunctionMapping] ([Id], [DataType], [FunctionId], [FormatDataType], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9057690f-ac93-4baf-8077-f5dd9076d711', N'Datetime', N'14842527-846a-46fc-80fa-307ff0cdce8e', N'Numeric', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaDBVersion] ([Version]) VALUES (N'1.25.0')
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465601', 0, 0.75, 0.75, 0.7, 0.7, 0.3, 0.3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465602', 1, 0.75, 0.75, 0.25, 0.25, 0.3, 0.3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465603', 2, 1, 1, 1, 1, 0.5, 0.5, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465604', 3, 0.75, 0.75, 0.7, 0.7, 0.3, 0.3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465605', 4, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaExportMarginDefaultValue] ([Id], [Type], [TopValue], [BottomValue], [LeftValue], [RightValue], [HeaderValue], [FooterValue], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df2d2380-48c9-4249-aacb-8fd3a3465606', 5, 11.68, 11.68, 7.78, 7.78, 11.68, 11.68, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5522a5d7-0456-432b-b1fb-02a4283baa3d', N'Not Between (Date & Time)', N'Not Between (Date & Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 38, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cb64b1fd-6dec-4b18-b348-02b5b984e6c6', N'Equals (Date & Time)', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 1, 41, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4d68d4a2-05ac-4f24-8496-02c1cfe75460', N'Not Equal (Date & Time)', N'<>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 44, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1476ed4b-17ac-4e39-be1b-0a25f705ebea', N'...', N'', N'95051abc-70eb-4908-8d13-04032aab3c66', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f8a69ec3-bc01-40fd-8dc1-0b7a259ee83e', N'...', N'', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 2, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6bac46ba-768f-4764-9109-0bc2736bcbfd', N'Blank', N'=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 3, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ce0fda8a-4515-409c-9d00-0bf56c2b4c4d', N'Not Blank', N'=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 4, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f043b65-e45d-4c22-9634-0da9e96493bc', N'...', N'', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 11, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd7096bd5-09e5-433d-924e-0e038bdc81fb', N'Blank', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 12, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'85252e31-7588-438f-85ff-0e0e9c16df8d', N'Not Blank', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 13, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'444b32e1-5ba5-4829-a8dc-0e3a0e6a69f3', N'...', N'', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 24, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83849954-987f-4213-b5b3-0febf0251d5c', N'Blank', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 25, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'38a333fb-39cf-424c-bbaf-1043600ca055', N'Not Blank', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 26, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'27a17b83-4b6a-4700-91a7-10558ef6ab23', N'...', N'', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 31, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b', N'Blank', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 32, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'63f26c6a-f763-4947-8517-10fd79de5e2a', N'Not Blank', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 33, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'97040a0e-7c33-4088-90ac-1146428428df', N'...', N'', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 50, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c16bc286-3238-4a36-85e5-123eb989bee8', N'Blank', N'=', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 51, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'966019de-d541-4ee4-9235-125732abb75a', N'Not Blank', N'=', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 52, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a52e09eb-8867-45e5-88bc-12ba9434f16f', N'...', N'', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 57, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c77e5ab6-890d-4bf6-8773-13cc9c3bf67e', N'Blank', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 58, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8339c19-7b65-4ee7-8ef4-13e340fba2e9', N'Not Blank', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 0, 59, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b78305b3-70f4-4724-a02c-1617a0ef95d3', N'Is Less Than', N'<', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 5, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'53d73892-3a12-45cd-8b69-163ff6c41989', N'Is Greater Than', N'>', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 6, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'94c4fb2e-c5d3-4160-a2f7-173418ca4e66', N'Between', N'Between', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 7, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9fe2afd6-8fb6-4a34-b2e2-1822323af768', N'Not Less Than', N'>=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 8, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0526507d-901b-4d41-8c4b-1831f90b180c', N'Not Greater Than', N'<=', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 9, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ea8396b-49e3-4ed2-b9b6-18c1a737cffc', N'Not Between', N'Not Between', N'08b322e2-ac79-406d-8367-046437b4fcd9', 0, 10, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'737307d1-1e5f-407f-889f-1b3c9a66dd6f', N'Equals (Manual Entry)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 1, 14, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'042a04a3-dfe1-4ef9-bd27-1b657886f02e', N'Equals (Selection)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 1, 15, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bb2f8e2d-753e-4fc9-9646-1b977a043b9a', N'Equals (Popup)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 16, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'003c0e13-cc3c-412f-8fee-1cf21aa51e31', N'Equals (Tree)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 17, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5ce630bc-6615-42c4-b11e-1d09c651eaae', N'Equals (Checkbox)', N'=', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 18, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'78ba4663-e8a4-407f-bab2-1dc014a4df56', N'Not Equal (Manual Entry)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 19, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'75fcf433-81f2-4767-94b7-1e4257b826c4', N'Not Equal (Selection)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 20, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5cdacf39-8eed-4ed3-8684-1e4461e85e1b', N'Not Equal (Popup)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 21, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de9ab97b-4e57-4c8c-8415-1e5030415b50', N'Not Equal (Checkbox)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 22, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6bc89182-aa4c-4fa5-b151-208af7e8cd59', N'Not Equal (Tree)', N'<>', N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', 0, 23, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c506759f-c000-46c3-a35a-21b7d5bbd447', N'Is Less Than (Field)', N'<', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 27, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'de669d47-d040-494c-91d9-21df45009964', N'Is Greater Than (Field)', N'>', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 28, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ecd32d5d-32ce-493e-8f9f-225647357325', N'Equals (Field)', N'=', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 29, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1e9fbb61-8a77-48a6-b95e-2357646360a5', N'Not Equal (Field)', N'<>', N'6938e8a8-c810-4044-be0b-05709faa4734', 0, 30, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'78376aea-4d3c-4e8d-ab97-25c6c249be62', N'Between (Date & Time)', N'Between (Date & Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 35, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f6b2f9d3-464d-4399-bfd2-265009d3fcf1', N'In Time Period', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 46, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'05f7ea30-001d-4779-ad3b-2732ed97d61e', N'Less Than Days Old', N'<', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 47, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1c6b9fbd-6377-4c8b-9acc-286ff0e853c5', N'Greater Than Days Old', N'>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 48, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8d45242-f5f0-4839-ae98-287ddc178c96', N'Equals Days Old', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 49, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3396325a-4233-4180-8513-2bb991627800', N'Like', N'Like', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 53, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0ac3a76f-cf80-4cd7-8cfd-2c74fadb330a', N'Begins With', N'Begins With', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 54, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'09b9b1ba-21c5-4f05-808c-2cae6cca56d9', N'Ends With', N'Ends With', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 55, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'30dd377c-5217-4665-8896-2d61efc73cfc', N'Not Like', N'Not Like', N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', 0, 56, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'31d3e116-bde2-40d1-b259-2d750348299c', N'True', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 1, 60, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'086dc2fc-23e3-4b54-bc46-2e5f572d2d3f', N'False', N'=', N'7b127c0c-4996-4df8-aa72-09cf07569f5e', 1, 61, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e830fbc3-cb92-4251-ad9f-3a84fd99fcb2', N'Not Between (Date)', N'Not Between (Date)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 37, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fbd954e2-bebf-4892-9b90-4134fce1f6dc', N'Not Equal (Date)', N'<>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 43, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b8f665e9-9753-4716-9d6e-688df6dccae4', N'Not Between (Time)', N'Not Between (Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 39, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3f2378bd-4470-48f8-b951-6ca0ff2baac7', N'Between (Time)', N'Between (Time)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 36, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'26f4e86e-26cb-497a-98c0-bc194bc785ac', N'Between (Date)', N'Between (Date)', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 34, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'496be89b-305a-4b5e-a361-c2cc8124dc69', N'Equals (Date)', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 40, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ec661dc4-12bf-4ce8-8691-cb2bd94c7888', N'Not Equal (Time)', N'<>', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 45, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperator] ([Id], [Name], [Label], [OperatorGroupId], [AllowParameter], [Position], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f7e3cef8-5b60-4a72-87c7-cca6452a4c31', N'Equals (Time)', N'=', N'01076b28-8e77-4a54-95d8-060d142a77e6', 0, 42, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'95051abc-70eb-4908-8d13-04032aab3c66', N'...', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'08b322e2-ac79-406d-8367-046437b4fcd9', N'Comparison', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'e023c1f4-42b3-469b-a8d9-04684feeb4ed', N'Equivalence', NULL, 0, NULL, NULL, NULL, NULL, N'737307d1-1e5f-407f-889f-1b3c9a66dd6f')
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'6938e8a8-c810-4044-be0b-05709faa4734', N'Field Comparison', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'01076b28-8e77-4a54-95d8-060d142a77e6', N'Date & Time', NULL, 0, NULL, NULL, NULL, NULL, N'cb64b1fd-6dec-4b18-b348-02b5b984e6c6')
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'c1b10232-6c6f-4bd5-91a1-09317a2b2e67', N'String', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorGroup] ([Id], [Name], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [DefaultOperatorId]) VALUES (N'7b127c0c-4996-4df8-aa72-09cf07569f5e', N'Boolean', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5522a5d7-0456-432b-b1fb-02a4283baa3d', N'5522a5d7-0456-432b-b1fb-02a4283baa3d', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6bac46ba-768f-4764-9109-0bc2736bcbfd', N'6bac46ba-768f-4764-9109-0bc2736bcbfd', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ce0fda8a-4515-409c-9d00-0bf56c2b4c4d', N'ce0fda8a-4515-409c-9d00-0bf56c2b4c4d', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd7096bd5-09e5-433d-924e-0e038bdc81fb', N'd7096bd5-09e5-433d-924e-0e038bdc81fb', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'85252e31-7588-438f-85ff-0e0e9c16df8d', N'85252e31-7588-438f-85ff-0e0e9c16df8d', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83849954-987f-4213-b5b3-0febf0251d5c', N'83849954-987f-4213-b5b3-0febf0251d5c', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'38a333fb-39cf-424c-bbaf-1043600ca055', N'38a333fb-39cf-424c-bbaf-1043600ca055', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b', N'98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'63f26c6a-f763-4947-8517-10fd79de5e2a', N'63f26c6a-f763-4947-8517-10fd79de5e2a', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c16bc286-3238-4a36-85e5-123eb989bee8', N'c16bc286-3238-4a36-85e5-123eb989bee8', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'966019de-d541-4ee4-9235-125732abb75a', N'966019de-d541-4ee4-9235-125732abb75a', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c77e5ab6-890d-4bf6-8773-13cc9c3bf67e', N'c77e5ab6-890d-4bf6-8773-13cc9c3bf67e', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a8339c19-7b65-4ee7-8ef4-13e340fba2e9', N'a8339c19-7b65-4ee7-8ef4-13e340fba2e9', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'94c4fb2e-c5d3-4160-a2f7-173418ca4e66', N'94c4fb2e-c5d3-4160-a2f7-173418ca4e66', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ea8396b-49e3-4ed2-b9b6-18c1a737cffc', N'6ea8396b-49e3-4ed2-b9b6-18c1a737cffc', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'78376aea-4d3c-4e8d-ab97-25c6c249be62', N'78376aea-4d3c-4e8d-ab97-25c6c249be62', 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'31d3e116-bde2-40d1-b259-2d750348299c', N'31d3e116-bde2-40d1-b259-2d750348299c', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFilterOperatorRule] ([Id], [OperatorId], [AllowNull], [IsPairedValues], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'086dc2fc-23e3-4b54-bc46-2e5f572d2d3f', N'086dc2fc-23e3-4b54-bc46-2e5f572d2d3f', 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'14842527-846a-46fc-80fa-307ff0cdce8e', N'Group Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6c9000d1-8900-41e8-b759-4a23c6a1ab82', N'Sum Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8dc8efc6-9e0a-4c3e-bea0-4daf541ceae4', N'Average', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'10a6655f-6954-462d-a57e-5df3c17089d5', N'Maximum', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0f74fea0-9279-46ba-818a-64c478bcf3ff', N'Average Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e3e16575-9739-4ff3-950a-7d149f96b4f0', N'Count Distinct', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'004d18e4-29ac-41dd-8fb5-96c1aff55ade', N'Days Old', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'36d8f605-1242-4c43-9b46-aced94b62709', N'Minimum', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7f942ac7-08d8-41fa-9e89-bad96f07f102', N'Group', NULL, 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8a74f4e0-b845-4b9e-adfa-bb678a116878', N'Count', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'69e7d5ae-f396-41fc-819e-ca798d23495f', N'[Expression]', NULL, 1, 1, 0, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'902a9168-fc01-4a35-92fb-ea67942d099d', N'Sum', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaFunction] ([Id], [Name], [Expression], [SubTotal], [GrandTotal], [FieldProperty], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ab4bbbef-1dcf-4f15-88a1-f3bc0da6a076', N'Sum Distinct', NULL, 1, 1, 1, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaLanguage] ([Id], [Language], [CultureName], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [Deleted]) VALUES (N'c6e7d7b5-4e15-44b7-9538-fd1ab38783f0', N'English - United States', N'en-US', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[IzendaLanguage] ([Id], [Language], [CultureName], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [Deleted]) VALUES (N'de80459f-cd0a-4443-93c4-a3f87eb0a78f', N'French - Canada', N'fr-CA', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[IzendaLanguage] ([Id], [Language], [CultureName], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [Deleted]) VALUES (N'15f7bd94-ae10-4fd7-91ed-cae10da3bd9d', N'Arabic', N'ar', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[IzendaPerformanceStatsTrend] ([Id], [NumberOfCore], [NumberOfServer], [NumberOfReport], [NumberOfReportCreator], [NumberOfDashboard], [NumberOfDashboardCreator], [NumberOfReportView], [NumberOfDashboardView], [NumberOfActiveTenant], [NumberOfInactiveTenant], [NumberOfActiveUser], [NumberOfInactiveUser], [NumberOfCreateReportUser], [NumberOfCreateDashboardUser], [IzendaVersion], [IzendaConfigurationDatabase], [DatabaseTypesInUse], [ClientLicenseKey], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f93e4e50-d306-4d58-bc63-64c073d9e506', 4, 2, 0, 0, 0, 0, 0, 0, 3, 0, 1, 9, 1, 1, N'0.22.15.0', N'[MSSQL] SQLServer', N'[MSSQL]: 1', N'BuRQeEJMf2LD0W6BVf5YQy3AiiykHsBixfgZYYRueS7YinKurBDE23yzFIoKpFyvCssxrsHWBRmHNPYMm1YXUjkUUfOgo5DSm+TltlttV6PCvdwFwGCAe8uaGoCKOVOFQdQR04DUN9l01B+4qo8zTVEEMlmU1ILcoDQ4RDTy6SbCMzfX+Zjaaw6L41ZbvblJAUBzFyqRUSfWdfh4IdUORwarsGEHA4msityK96uRHNrWmyVxeN6Y+3eU5OSCT6tzDigucC72M8MNCFvCeb8rDxipv9n9RlES8RzLmzcAWSukR6h5JwfV9xWuVzXbU2hZdDjRbpe7XLaCoT/szEn2DtKgFZ8n2/OmcgsIBcQfK9vTNOwJMyka7qsJVw8xk9k7EdQvQIaqXRGBxQ0ZUPMPdA==', 3, 0, CAST(N'2017-01-18T09:35:04.777' AS DateTime), NULL, CAST(N'2017-01-18T10:35:04.477' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'21cceb2e-74b8-4004-8ef2-088985364757', N'Shippers', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'11bf9a12-c594-4569-9fc2-1894f9055cfa', N'Region', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd1538119-2de9-4787-b046-1c5c17f0cfe8', N'Products', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd9222eb4-1414-4abb-bd31-24daefe82a1b', N'OrdersByRegion', N'View', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e69fb5e3-17ea-405a-b6ae-2fb8a62dfd51', N'EmployeeTerritories', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd15baf22-3f76-49e0-9784-32e24afd746a', N'Customers', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7ed1e577-a605-4d91-a583-342dd388367a', N'Customers', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7827b006-21cf-4c41-97ae-39fa0dc07004', N'Order Details', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', N'Products', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0aa863d7-4a89-45dd-b579-4fb76cc2a293', N'OrderRegions', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9bce54ce-7379-4908-89af-580f0f8f7973', N'Employees', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'00504d7d-4d87-495d-9e43-6b11a4221a22', N'Categories', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.137' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'599094e5-3b5c-454a-8510-7a087bb721e8', N'Orders', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fc80b51c-167f-4d16-85ce-7c8171a6e530', N'Suppliers', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9d031265-21a8-499b-b3df-7cd544db2da7', N'Order Details', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f3645208-247d-44be-8fe5-7e39c64a61f0', N'Orders', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c14efcc9-aac3-45b5-b34e-809cb190556f', N'OrdersByRegion', N'View', 0, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.017' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9a873bc7-06aa-4aaa-bf76-9f47030efae8', N'EmployeeTerritories', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', N'Suppliers', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'674165f0-9e5a-4e38-83d1-b91937bcd7b3', N'Territories', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e81b12b9-dbcf-436a-b64e-c2712ef0f843', N'Shippers', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd57cb701-bf3b-4e20-884c-ce205f34d520', N'OrdersByRegionIdOrShipCountry', N'Stored Procedure', 0, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, N'{"Dynamic":false,"Static":false}', 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.017' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b0c74412-61cc-4135-acde-cec75679a418', N'OrderDetailsByRegion', N'View', 0, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.017' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', N'Employees', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd5416921-9815-434a-b8ee-d5e25460dc05', N'Region', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', N'OrderDetailsByRegion', N'View', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f42dff21-3577-498f-ac83-e72ad40a4113', N'Territories', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'858049e9-9651-4924-820b-ecfb5dfdf3e2', N'Categories', N'Table', 1, 0, NULL, N'99a2ab51-ebc4-4c29-9416-c26394ec8584', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:26.757' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySource] ([Id], [Name], [Type], [Selected], [Deleted], [ParentQuerySourceId], [CategoryId], [DataSourceCategoryId], [Alias], [ExtendedProperties], [PhysicalChange], [Approval], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6dc5d8c8-bbd0-4c67-8914-f6c44c54e140', N'OrderRegions', N'Table', 1, 0, NULL, N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.140' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceCategory] ([Id], [Name], [ParentCategoryId], [ConnectionId], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ef86ecc7-b553-4750-9d27-b83aa2b27dea', N'dbo', NULL, N'76fb9a34-b160-4d59-b16b-608c7a1d0217', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaQuerySourceCategory] ([Id], [Name], [ParentCategoryId], [ConnectionId], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'99a2ab51-ebc4-4c29-9416-c26394ec8584', N'dbo', NULL, N'e2d38b4c-e0dc-4d7d-88b9-3797665d2fa8', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ad9a95c2-444a-48a4-856b-01e1d97623c6', N'ReportsTo', N'int', N'Numeric', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 17, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'65349ea0-3548-4dd7-a891-02548370034e', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 1, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'996b2346-2fca-4717-a675-025bd2a1e8c8', N'Region', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'586541ce-68d2-4211-8277-029c4b20ab05', N'PostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'50b1ad3a-df61-4a14-a766-02ca887169a2', N'UnitPrice', N'money', N'Money', 1, N'', 1, 1, N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a9d13335-6103-486e-add0-0344fda9930b', N'Quantity', N'smallint', N'Numeric', 1, N'', 1, 1, N'b0c74412-61cc-4135-acde-cec75679a418', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2156fdb9-d74d-4508-925c-034fce122188', N'ProductID', N'int', N'Numeric', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1be88158-30bf-4722-af60-043cf0be6627', N'ShippedDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c71658a0-a8b2-4ea6-86cb-04552adedce9', N'ShipPostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 13, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'427b862e-a343-4018-b6f5-0535c6a10bbb', N'ReportsTo', N'int', N'Numeric', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 17, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'12dbf354-870e-49db-92af-068922ec3d29', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'9a873bc7-06aa-4aaa-bf76-9f47030efae8', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b32ebc18-9e5f-4b72-9fac-0a61e54b7853', N'CategoryName', N'nvarchar', N'Text', 1, N'', 1, 1, N'00504d7d-4d87-495d-9e43-6b11a4221a22', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'942dffa1-de84-43ac-83c4-0acbfacb4fd6', N'HomePage', N'ntext', N'Lob', 0, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fbd9eedb-f4ca-471d-bebd-0be4877a0e95', N'RequiredDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3e773cba-ab67-48d8-b482-0c30d149865c', N'CategoryID', N'int', N'Numeric', 1, N'', 1, 1, N'00504d7d-4d87-495d-9e43-6b11a4221a22', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3d503289-9c96-4713-985b-0d4e241e32e6', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5d4a7f3c-bc0a-4886-8215-0e2e712e1d60', N'TerritoryID', N'nvarchar', N'Text', 1, N'', 1, 1, N'f42dff21-3577-498f-ac83-e72ad40a4113', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bf633222-9c23-46c1-80eb-0f85b347ce29', N'Region', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dc21dbfa-42ea-47a4-a19b-10297df911f6', N'SupplierID', N'int', N'Numeric', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ad3adf37-a7bc-4b26-a81d-112df071f423', N'Quantity', N'smallint', N'Numeric', 1, N'', 1, 1, N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'426523de-3c6f-4684-9881-11434d2f5858', N'UnitPrice', N'money', N'Money', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'30180644-2210-4f84-9693-120196d0262b', N'CompanyName', N'nvarchar', N'Text', 1, N'', 1, 1, N'21cceb2e-74b8-4004-8ef2-088985364757', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'be72ac99-e3b5-4e56-b405-1a069cc9e86b', N'ShipPostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 13, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'39e2c4cf-4a70-4c2f-99d7-1b39cab50ef0', N'Region', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd782d3c8-fbb9-458e-8f97-1c105196c9ee', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 15, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'55be7986-962b-437a-96e6-1e86c037c14e', N'TitleOfCourtesy', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dbd6ef30-f27e-4605-95e5-1f071c5a7e36', N'Discount', N'real', N'Numeric', 1, N'', 1, 1, N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8a87c1de-31d0-4f93-92a9-1f65e73216ff', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'39749081-f0b7-478a-828d-1fbbf7c9416a', N'UnitPrice', N'money', N'Money', 1, N'', 1, 1, N'9d031265-21a8-499b-b3df-7cd544db2da7', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'eacc2e1a-67c4-4ac7-b10f-1fefbdf91b33', N'ShipAddress', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a77a6041-6418-4230-8253-2077d2142cb3', N'Discontinued', N'bit', N'Boolean', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6466a5e8-9dd5-4343-9ac5-214362789fd4', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a7039d79-3249-4af5-9122-235114ab008d', N'CategoryID', N'int', N'Numeric', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9d0f6f2d-8182-4ae6-92ee-24661a479823', N'ShipAddress', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8cfedd85-3caf-4ed1-afed-2468f32b2b9d', N'CountryRegionName', N'nvarchar', N'Text', 1, N'', 1, 1, N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', 0, NULL, 0, 0, 1, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd1081836-28a8-46d2-b01a-26e718b3d82e', N'RequiredDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6f4a92bf-f3ce-40e5-8a82-29cb30923984', N'OrderDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'885219e7-169a-480c-b622-29fe46c869f0', N'Phone', N'nvarchar', N'Text', 1, N'', 1, 1, N'21cceb2e-74b8-4004-8ef2-088985364757', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9424416b-c5cb-4772-ac31-2b4cf32da9b7', N'TerritoryDescription', N'nchar', N'Text', 1, N'', 1, 1, N'674165f0-9e5a-4e38-83d1-b91937bcd7b3', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7e53be7b-5f84-41ae-a934-2cfa88dc88c4', N'City', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9869ba0d-2c14-4146-8c67-2d4c476bd9f0', N'OrderDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'907d401d-c967-45fe-9965-2d75b45bb63b', N'City', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0991eec6-5432-4c3d-ba68-2e8ce1b202d7', N'RequiredDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'366c6742-1c2b-4658-afc9-2fee20da0881', N'CompanyName', N'nvarchar', N'Text', 1, N'', 1, 1, N'e81b12b9-dbcf-436a-b64e-c2712ef0f843', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9e016743-c50e-41c3-abd1-327b996f2d2d', N'Address', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9868963c-c41a-4b94-bea0-333e94ccc203', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a1028d85-7630-47d2-8f43-341ac604b589', N'ShipVia', N'int', N'Numeric', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fae0d41d-69ad-456d-9135-36c0f3f9cdd9', N'ShipperID', N'int', N'Numeric', 1, N'', 1, 1, N'21cceb2e-74b8-4004-8ef2-088985364757', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'780af321-5506-4f77-8bc6-376e5f1da25a', N'Address', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c40e8479-f566-4b49-a3b2-38023e5f6eec', N'Photo', N'image', N'Image', 0, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 15, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f2f79052-d502-4aac-93c0-3adc1fb20500', N'City', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a5737f04-4491-4b5c-a9eb-3bc039d06807', N'ShipCountry', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 14, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ed19c8a7-c309-4791-81f4-3c1c4fcd8581', N'PostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd0c5f481-b5ab-4fb3-8457-3cc40dcf683f', N'SupplierID', N'int', N'Numeric', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7029aa1b-663e-4b6a-b779-3e1fffaca87f', N'Notes', N'ntext', N'Lob', 0, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 16, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'20d5ad94-1770-4e20-8b26-3ebed9e085ff', N'CustomerID', N'nchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ffbc263-5bc0-4fd9-a819-4065a79bfb99', N'CountryRegionID', N'int', N'Numeric', 1, N'', 1, 1, N'0aa863d7-4a89-45dd-b579-4fb76cc2a293', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8b2c23a5-c900-4f4f-8e3e-4111a25c016b', N'ShippedDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5fe71dc8-99e1-4d6e-bcd0-411b8041a9b6', N'CompanyName', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'086c26a3-c3ef-4b13-89b2-4393b32abe28', N'ShipAddress', N'nvarchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dc50a915-a494-456b-9bf6-44cc52a080fe', N'Quantity', N'smallint', N'Numeric', 1, N'', 1, 1, N'7827b006-21cf-4c41-97ae-39fa0dc07004', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'51f1c072-ce12-44e3-a544-453f98853fc5', N'ShipRegion', N'nvarchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'13980161-9ad5-4da7-bb76-462d26d1a2ac', N'Freight', N'money', N'Money', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6af518e2-03c0-4285-b25b-47d886b71561', N'Address', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'69f77813-a9cf-476d-a03f-480bda007a1e', N'SupplierID', N'int', N'Numeric', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2ac53e43-c003-4d8e-93e5-49e0dd4b94c1', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'83d36be2-a9e5-4303-91b9-4ad0367385ac', N'UnitPrice', N'money', N'Money', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'405e3131-ed1c-4cc8-9afc-4d2f34c34382', N'PhotoPath', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 18, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bd44faab-0327-472f-bdce-503298898e3e', N'ShipRegion', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6372b24b-2403-41f1-8401-540b01506d80', N'Phone', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'aff84ce6-b7fc-42ab-8f70-56487cccd17b', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'334b332e-4b45-41a6-a5c8-57fc1055372d', N'ProductID', N'int', N'Numeric', 1, N'', 1, 1, N'b0c74412-61cc-4135-acde-cec75679a418', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a4999379-e880-4854-9e46-58211f2aca6e', N'Picture', N'image', N'Image', 0, N'', 1, 1, N'858049e9-9651-4924-820b-ecfb5dfdf3e2', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2d4c1ab2-aba1-446b-aec9-59082c1928f9', N'ShipPostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 13, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa4e5a62-2b1b-4c56-b74f-594a9220b85e', N'ProductID', N'int', N'Numeric', 1, N'', 1, 1, N'7827b006-21cf-4c41-97ae-39fa0dc07004', 0, NULL, 0, 0, 2, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1ad9fcae-5b59-43b2-a845-594b8475194b', N'Discount', N'real', N'Numeric', 1, N'', 1, 1, N'9d031265-21a8-499b-b3df-7cd544db2da7', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd12c0394-68b5-480a-b12b-5ab268270cf5', N'Title', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'54c82b5d-40ff-475c-b693-5b7a42302b46', N'City', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'18a2406d-8f9b-4188-b877-5cd2bc840722', N'TerritoryID', N'nvarchar', N'Text', 1, N'', 1, 1, N'9a873bc7-06aa-4aaa-bf76-9f47030efae8', 0, NULL, 0, 0, 2, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'44570244-18bd-4cfb-a264-5e81b08ec686', N'Title', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'88df2b26-2d57-4fff-9eb8-5ee098602517', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'27d1ea0d-78cd-4d76-ac17-5f8e6a0aeff2', N'Fax', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0afb1624-a98b-4273-9db1-60d8836704c6', N'RegionID', N'int', N'Numeric', 1, N'', 1, 1, N'11bf9a12-c594-4569-9fc2-1894f9055cfa', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'115d1b52-554d-4697-a80a-62ff3ab95ee6', N'Picture', N'image', N'Image', 0, N'', 1, 1, N'00504d7d-4d87-495d-9e43-6b11a4221a22', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'39d49035-0e5c-4765-9ee2-630fab2d9a00', N'CategoryID', N'int', N'Numeric', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e41c0238-77a1-4461-ab9f-634cf5c813ce', N'CompanyName', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dd796e4b-0dd7-47c4-ba93-637b342ec6ed', N'ShipCountry', N'nvarchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 14, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'604a3b17-9d42-454a-8e64-667bfb9bc50f', N'ShipCity', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'65f03540-b95f-4cb3-afe0-67aeeaa5acf4', N'PostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e7453781-0849-4012-a02b-68bf172d1629', N'ProductID', N'int', N'Numeric', 1, N'', 1, 1, N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'eb642c94-40cf-41c6-a0b7-6a5076ddaefc', N'Fax', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd5a82071-6e8a-475e-876b-6b898c6a88f5', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'd5bfa665-70fe-489f-bb4c-dc69cf71f9c2', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3bc18d0e-86d9-4c3b-a91e-6bf362df43d6', N'ShipPostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 13, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'976dbded-83d1-4359-9770-6bf7c7459841', N'ContactName', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'011e51ee-f59f-4836-a5d7-7007ffca0519', N'HomePhone', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 13, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'24a6fb43-e347-45a1-8b20-707c9bc0cfdd', N'ShipName', N'nvarchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5016c4ac-c3b7-4d56-a12a-707cac226ae0', N'ProductName', N'nvarchar', N'Text', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ca209d0-a017-46ee-8333-7397d705cf07', N'ReorderLevel', N'smallint', N'Numeric', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a1351d18-5756-40b2-a8e2-74ed2432e729', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'96c384fc-f560-4b42-b6d7-763b90e75556', N'TerritoryDescription', N'nchar', N'Text', 1, N'', 1, 1, N'f42dff21-3577-498f-ac83-e72ad40a4113', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
GO
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd24b57ec-b622-4f22-aff5-76dc2f24ab7b', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'7827b006-21cf-4c41-97ae-39fa0dc07004', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1eb0a7f6-9c94-4f9b-8f78-78207f7d62ea', N'Description', N'ntext', N'Lob', 0, N'', 1, 1, N'00504d7d-4d87-495d-9e43-6b11a4221a22', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c0c23d6d-3eeb-481d-bd05-7a8af3bd6b40', N'ShipCity', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cdd968bc-3c16-49f5-9fb5-7c2bdb4f7ec9', N'ProductID', N'int', N'Numeric', 1, N'', 1, 1, N'9d031265-21a8-499b-b3df-7cd544db2da7', 0, NULL, 0, 0, 2, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'01a8f499-6408-420f-9697-7c344c862b55', N'RegionID', N'int', N'Numeric', 1, N'', 1, 1, N'674165f0-9e5a-4e38-83d1-b91937bcd7b3', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'721be55e-b758-4ccf-9ad3-7df7262740d9', N'Discontinued', N'bit', N'Boolean', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2da6c454-fb48-4e6e-8925-7f277613f3f0', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b27b1e24-da56-4320-a8e9-7f86e1a59d8d', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'b0c74412-61cc-4135-acde-cec75679a418', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'38a04cd6-6975-4d2c-850c-82d75091d268', N'ShipAddress', N'nvarchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'cc4426dd-caea-40ec-b11e-8389d7da6675', N'OrderDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'af0539f2-6367-48f0-9b81-83b4a839e47b', N'TerritoryID', N'nvarchar', N'Text', 1, N'', 1, 1, N'674165f0-9e5a-4e38-83d1-b91937bcd7b3', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'799b2fcc-7d03-40c7-af2e-8470fbf75aaf', N'CountryRegionID', N'int', N'Numeric', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 16, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f9f57ce7-1f19-431d-b84b-85551c444e40', N'PostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9c97c34e-7098-43b9-96bf-85e1d05f980b', N'ShippedDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f0b0fa33-c657-414c-9a63-862fc84d3e76', N'Phone', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9b6dc459-05fe-4c3b-983f-870ee524bb6b', N'Address', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f1208f38-e3d6-4476-bcda-880555532324', N'FirstName', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5f1b420a-11f5-473e-a36d-893319b1b911', N'RegionID', N'int', N'Numeric', 1, N'', 1, 1, N'f42dff21-3577-498f-ac83-e72ad40a4113', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'5d39709d-f6a4-4f5b-a418-89caaca62580', N'RequiredDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd560807f-96ec-4c9b-83c6-8c44f6c2c9f9', N'PhotoPath', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 18, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'57444587-4617-4638-8566-8d8deaac924b', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'92260879-563c-4b61-8437-8e0d02b1f009', N'UnitsInStock', N'smallint', N'Numeric', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'398a8d3f-ca59-4253-887f-8e79473a8fb5', N'Extension', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 14, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8a52b43b-1533-4c25-962e-8ef1f9d772b6', N'Phone', N'nvarchar', N'Text', 1, N'', 1, 1, N'e81b12b9-dbcf-436a-b64e-c2712ef0f843', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'45d4b8d7-946a-40b9-a88f-9176c674c00d', N'Extension', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 14, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd08fd50b-1fc1-46e7-a48e-925abee40adc', N'Notes', N'ntext', N'Lob', 0, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 16, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'092670dd-109e-4002-8a91-925c367980a3', N'Description', N'ntext', N'Lob', 0, N'', 1, 1, N'858049e9-9651-4924-820b-ecfb5dfdf3e2', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'868dad1b-b32e-442c-b590-94606a6c9583', N'Freight', N'money', N'Money', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'51504e6a-de8d-46af-9fe3-9521b6ea314b', N'ShipperID', N'int', N'Numeric', 1, N'', 1, 1, N'e81b12b9-dbcf-436a-b64e-c2712ef0f843', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a91a8422-f78e-46e4-9551-957bb326e6b3', N'ContactTitle', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c3f0025c-b75a-424a-833a-970593dc3039', N'BirthDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e84bd0b8-0c1b-4d12-ada5-98213462417a', N'CountryRegionName', N'nvarchar', N'Text', 1, N'', 1, 1, N'6dc5d8c8-bbd0-4c67-8914-f6c44c54e140', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a99e4e81-9186-41b1-870e-9c6d3e1a92b5', N'CustomerID', N'nchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1a8d42c9-3a7d-4692-9ea1-9ccdd8d1b888', N'ShipName', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'84473fe8-2264-4190-8cff-9cf49ff5ad50', N'CustomerID', N'nchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c02a8381-29c9-40da-a1f2-9f88cd3fb1a2', N'HireDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ff48fedf-923c-4faa-8916-a077bc995260', N'ContactTitle', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4d7f4f5-59d9-4fea-b2a8-a1d5eca14191', N'SupplierID', N'int', N'Numeric', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4c3b32e7-7645-4059-9583-a26c58457e65', N'Fax', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bdddf965-67eb-4296-9f4b-a59fb3b1668f', N'Discount', N'real', N'Numeric', 1, N'', 1, 1, N'b0c74412-61cc-4135-acde-cec75679a418', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'061b31a4-5a6a-4a3f-b442-ab64603d642c', N'CustomerID', N'nchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e591cd73-2c8b-4a0a-8d1e-abf46e4005b4', N'CategoryName', N'nvarchar', N'Text', 1, N'', 1, 1, N'858049e9-9651-4924-820b-ecfb5dfdf3e2', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'253a8bc3-4c07-4975-9b86-ac178e010291', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'6dc5d8c8-bbd0-4c67-8914-f6c44c54e140', 0, NULL, 0, 0, 1, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa18976d-8944-4bd6-b71e-ae3cc6c4b0a8', N'ShipVia', N'int', N'Numeric', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e0b2879e-eb62-42e4-94e5-ae9f792588cf', N'ShipCountry', N'nvarchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 14, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dee5c392-36fa-4816-b014-aea7ead0474a', N'@RegionId', N'nchar', N'Text', 0, N'', 1, 1, N'd57cb701-bf3b-4e20-884c-ce205f34d520', 0, NULL, 1, 0, 1, N'', NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f85a9bf4-7248-4330-b12a-b02188ca144c', N'UnitPrice', N'money', N'Money', 1, N'', 1, 1, N'b0c74412-61cc-4135-acde-cec75679a418', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e324ecbc-540f-4fe2-8419-b0fe43f60dc0', N'Freight', N'money', N'Money', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c0a10490-3d03-4e84-96b9-b18213698e8f', N'RegionDescription', N'nchar', N'Text', 1, N'', 1, 1, N'11bf9a12-c594-4569-9fc2-1894f9055cfa', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8609f518-251f-43a5-81b5-b25574ccd2c1', N'ContactTitle', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c94dbe8e-8292-4842-b8fe-b49713bcfbcd', N'HomePhone', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 13, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f6c89741-172f-482d-af08-b5526a132fb3', N'Photo', N'image', N'Image', 0, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 15, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c0bc9344-8ba0-41db-9d5c-b71348b98dbd', N'Region', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'52cbe36d-b264-4710-b477-b88b7ad9e480', N'CompanyName', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'01d1d9c1-a6ea-44c7-ae84-b8bfa9f820ee', N'CountryRegionName', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 17, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1b24848c-c144-4dbe-b4cc-bcac8163215b', N'ShippedDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bd27d940-c116-4c27-be81-bcee7b954db0', N'CountryRegionID', N'int', N'Numeric', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 16, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'98447e4f-151b-4f3a-9fde-bda33e1653d7', N'OrderDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa07a421-131b-41d4-8e40-c086f1bc99af', N'ShipVia', N'int', N'Numeric', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'36b5cb21-be42-4ed7-a5ce-c169be151913', N'CategoryID', N'int', N'Numeric', 1, N'', 1, 1, N'858049e9-9651-4924-820b-ecfb5dfdf3e2', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b75d1531-a79e-4b6c-b4e8-c26a7a84e09c', N'CountryRegionName', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 17, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'53cb0960-ba36-4179-b4f6-c44e24d3bd21', N'PostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'01856057-a830-4572-8a78-c46cbe652c09', N'ShipName', N'nvarchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3e411eb2-6bbd-4a7e-b3ec-c9f4d3bdc7ee', N'CountryRegionID', N'int', N'Numeric', 1, N'', 1, 1, N'6dc5d8c8-bbd0-4c67-8914-f6c44c54e140', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2f9de0d5-ce06-4a45-9a12-cb2fe5894eb4', N'Discount', N'real', N'Numeric', 1, N'', 1, 1, N'7827b006-21cf-4c41-97ae-39fa0dc07004', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f57192e9-bd4e-438a-8076-cb589e032d1f', N'UnitsOnOrder', N'smallint', N'Numeric', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3c77e739-a329-47d4-a5e0-cdde10e0d9e4', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'77b4c3fa-4409-4501-bb62-ce6d9b1ef395', N'Address', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b3c7573b-cc5b-42b2-a44b-cf0b02a44559', N'Region', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9b18d56b-cb44-4982-9dae-d2aadb16d224', N'ShipCountry', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 14, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'04e4b36b-c2ac-4a0b-a2d6-d3639a9dcd78', N'ShipRegion', N'nvarchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3c3d0c1c-e4f3-452d-96cc-d5aa8467c4e1', N'ShipName', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'db447017-8d9b-49a6-b12b-d687ae271475', N'HomePage', N'ntext', N'Lob', 0, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9198b45e-c1ac-44b4-8472-d6a9b154aa74', N'Fax', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'aec6ad82-6b03-4506-8dc7-d6fe574c2a44', N'TitleOfCourtesy', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dfe52b41-c774-4a06-84a4-d981e867ae95', N'Address', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'976f1960-ee5c-4f9f-a43d-db8138d3f08d', N'CountryRegionName', N'nvarchar', N'Text', 1, N'', 1, 1, N'b0c74412-61cc-4135-acde-cec75679a418', 0, NULL, 0, 0, 1, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'80515a85-b725-4478-9ebe-db85e8973bc3', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dbdf3a53-c30a-4e00-873f-dc1ce63df9a4', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 1, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e20e7b7e-8286-42c2-a53f-dc373cd738e3', N'CustomerID', N'nchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'993d2a37-806c-4b42-9b96-dce6fc660517', N'PostalCode', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'df832454-472a-4d6c-ae55-df0d7a515d58', N'RegionDescription', N'nchar', N'Text', 1, N'', 1, 1, N'd5416921-9815-434a-b8ee-d5e25460dc05', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f9c5f40c-425a-436a-bc8f-dfef879ba819', N'LastName', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'77bc8de6-03f7-44f9-8756-e0227bc1172a', N'UnitPrice', N'money', N'Money', 1, N'', 1, 1, N'7827b006-21cf-4c41-97ae-39fa0dc07004', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'85f81934-b462-48ad-a8ed-e1851a2643a9', N'ContactTitle', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'50dee3d3-e39a-4684-9e7a-e2c805d5cd96', N'QuantityPerUnit', N'nvarchar', N'Text', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'80bc3799-dd6a-4846-9188-e31e7475ed61', N'Region', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b5eb5254-57e5-4dc5-8e5b-e3364ac24b6f', N'Quantity', N'smallint', N'Numeric', 1, N'', 1, 1, N'9d031265-21a8-499b-b3df-7cd544db2da7', 0, NULL, 0, 0, 4, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0d1c2101-cdad-4a1a-9a1a-e3a77ae0b8c5', N'UnitsOnOrder', N'smallint', N'Numeric', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c77588f5-7620-49b1-ac69-e3e1a8751c94', N'ShipCity', N'nvarchar', N'Text', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6e71c5ff-1d74-4f74-bdad-e57683a16fc3', N'ReorderLevel', N'smallint', N'Numeric', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0bbf7899-10b2-4283-b14b-e66f86efe6b7', N'City', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4494b0d5-5306-47a7-8e2b-e7702214b637', N'CompanyName', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e928ef90-a3b5-4459-bdc9-e7876dc602f0', N'LastName', N'nvarchar', N'Text', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c9ec184f-bbbe-4ae5-bfe4-e8395988a96f', N'ShipVia', N'int', N'Numeric', 1, N'', 1, 1, N'599094e5-3b5c-454a-8510-7a087bb721e8', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'152764a1-a114-408c-a2b3-e87ca1edd311', N'ContactName', N'nvarchar', N'Text', 1, N'', 1, 1, N'7ed1e577-a605-4d91-a583-342dd388367a', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'30589971-8aba-450f-b124-e9d56fe6ed57', N'QuantityPerUnit', N'nvarchar', N'Text', 1, N'', 1, 1, N'd1538119-2de9-4787-b046-1c5c17f0cfe8', 0, NULL, 0, 0, 5, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'22056219-8878-4663-8e90-eb4bd47bc31c', N'Freight', N'money', N'Money', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 8, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'930de933-c3c6-4c65-8ff8-ec32b8a183bc', N'ProductID', N'int', N'Numeric', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c1f0e9aa-e2f5-4b65-a030-eee0d6f49a34', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'0aa863d7-4a89-45dd-b579-4fb76cc2a293', 0, NULL, 0, 0, 1, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
GO
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'dfb49ea4-b3d7-42ea-af96-eefbc14b3ca5', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'94f3618e-b606-46de-982b-ef9411e8a929', N'TerritoryID', N'nvarchar', N'Text', 1, N'', 1, 1, N'e69fb5e3-17ea-405a-b6ae-2fb8a62dfd51', 0, NULL, 0, 0, 2, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e6e92e92-36be-4a46-bbd2-f0cf14e6f80e', N'ContactName', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd2a6e10b-7f8f-4c9f-b336-f18095942cf4', N'HireDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'67337b24-3cb6-4cf9-ac29-f2b5a2d7ede0', N'ShipRegion', N'nvarchar', N'Text', 1, N'', 1, 1, N'c14efcc9-aac3-45b5-b34e-809cb190556f', 0, NULL, 0, 0, 12, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fac31468-4e3c-4f0a-9738-f39cc2cad265', N'ProductName', N'nvarchar', N'Text', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'120d6a00-0a67-41ac-8b91-f498a6ebdac7', N'OrderID', N'int', N'Numeric', 1, N'', 1, 1, N'9d031265-21a8-499b-b3df-7cd544db2da7', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9be72b33-2b29-4c4e-ae08-f824072b9883', N'UnitsInStock', N'smallint', N'Numeric', 1, N'', 1, 1, N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', 0, NULL, 0, 0, 7, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4a980e7b-56a5-4ae3-a5f6-f860596e568c', N'ShipCity', N'nvarchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 11, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'53ba1236-ef67-4a26-9bf8-f87e06bf903a', N'CountryRegionName', N'nvarchar', N'Text', 1, N'', 1, 1, N'0aa863d7-4a89-45dd-b579-4fb76cc2a293', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'010ba584-c3a3-425b-a288-f95318a5ab0e', N'BirthDate', N'datetime', N'Datetime', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6f614062-60e7-401e-9fca-fa49d92c586b', N'RegionID', N'int', N'Numeric', 1, N'', 1, 1, N'd5416921-9815-434a-b8ee-d5e25460dc05', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'0a3e73de-f11a-4c33-9a91-fa949588fed0', N'@ShipCountry', N'nchar', N'Text', 0, N'', 1, 1, N'd57cb701-bf3b-4e20-884c-ce205f34d520', 0, NULL, 1, 0, 2, N'', NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fc43f363-c93c-4481-ac94-fab7626546d3', N'Phone', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'429ac4f2-45bd-4b0b-ae0b-faef1b64e045', N'FirstName', N'nvarchar', N'Text', 1, N'', 1, 1, N'9bce54ce-7379-4908-89af-580f0f8f7973', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd0cdc6f6-4f59-47f5-97d5-fb26338b0138', N'City', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 6, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b29154e9-3a30-4e80-9e0a-fb7f34604bf1', N'CustomerID', N'nchar', N'Text', 1, N'', 1, 1, N'f3645208-247d-44be-8fe5-7e39c64a61f0', 0, NULL, 0, 0, 2, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'11942674-2326-4e80-be59-fba7d05cf812', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'fc80b51c-167f-4d16-85ce-7c8171a6e530', 0, NULL, 0, 0, 9, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd445078f-86ce-462b-a58d-fcdba917eea5', N'ContactName', N'nvarchar', N'Text', 1, N'', 1, 1, N'd15baf22-3f76-49e0-9784-32e24afd746a', 0, NULL, 0, 0, 3, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'4d9ede20-1be4-4ff9-b285-fd959175a04c', N'Phone', N'nvarchar', N'Text', 1, N'', 1, 1, N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', 0, NULL, 0, 0, 10, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-01-18T10:24:16.347' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7c86040d-ad56-4ce2-bc38-fe6eebaea97d', N'Country', N'nvarchar', N'Text', 1, N'', 1, 1, N'd9222eb4-1414-4abb-bd31-24daefe82a1b', 0, NULL, 0, 0, 15, N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaQuerySourceField] ([Id], [Name], [DataType], [IzendaDataType], [AllowDistinct], [Alias], [Visible], [Filterable], [QuerySourceId], [Deleted], [ParentId], [Type], [GroupPosition], [Position], [FilteredValue], [ExtendedProperties], [MatchedTenant], [PhysicalChange], [Approval], [FunctionName], [Expression], [ReportId], [IsCalculated], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'c483e846-8377-4ed5-9420-ff2e5443ec67', N'EmployeeID', N'int', N'Numeric', 1, N'', 1, 1, N'e69fb5e3-17ea-405a-b6ae-2fb8a62dfd51', 0, NULL, 0, 0, 1, N'', N'{"PrimaryKey":true}', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, CAST(N'2017-05-04T18:58:56.460' AS DateTime), NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'2d6a0e77-9a88-49d5-841e-071978c52107', N'e69fb5e3-17ea-405a-b6ae-2fb8a62dfd51', N'f42dff21-3577-498f-ac83-e72ad40a4113', N'94f3618e-b606-46de-982b-ef9411e8a929', N'5d4a7f3c-bc0a-4886-8215-0e2e712e1d60', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'be9b9def-6a59-44af-9922-0bfa44a3b2d7', N'e69fb5e3-17ea-405a-b6ae-2fb8a62dfd51', N'9bce54ce-7379-4908-89af-580f0f8f7973', N'c483e846-8377-4ed5-9420-ff2e5443ec67', N'57444587-4617-4638-8566-8d8deaac924b', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'76ca4ae8-4328-4620-9fed-0d3339f9a7bf', N'9bce54ce-7379-4908-89af-580f0f8f7973', N'9bce54ce-7379-4908-89af-580f0f8f7973', N'427b862e-a343-4018-b6f5-0535c6a10bbb', N'57444587-4617-4638-8566-8d8deaac924b', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'03d09fa3-faa4-49ba-bfee-1b0258f8643d', N'7827b006-21cf-4c41-97ae-39fa0dc07004', N'd1538119-2de9-4787-b046-1c5c17f0cfe8', N'fa4e5a62-2b1b-4c56-b74f-594a9220b85e', N'2156fdb9-d74d-4508-925c-034fce122188', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'd4649da1-87a1-4343-9556-2b28cd2ae700', N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', N'ad9a95c2-444a-48a4-856b-01e1d97623c6', N'2da6c454-fb48-4e6e-8925-7f277613f3f0', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'8d6bd4b7-8b64-4f94-b1c8-2d9180843c4d', N'd1538119-2de9-4787-b046-1c5c17f0cfe8', N'7db6229a-6fa2-4ee9-9b47-a67076f6c469', N'69f77813-a9cf-476d-a03f-480bda007a1e', N'dc21dbfa-42ea-47a4-a19b-10297df911f6', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'c633acad-59cb-4f4e-a96d-3b65e3fb3de0', N'f42dff21-3577-498f-ac83-e72ad40a4113', N'd5416921-9815-434a-b8ee-d5e25460dc05', N'5f1b420a-11f5-473e-a36d-893319b1b911', N'6f614062-60e7-401e-9fca-fa49d92c586b', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'c2b51e13-97c2-44e0-a676-56fbaeb00044', N'f3645208-247d-44be-8fe5-7e39c64a61f0', N'7ed1e577-a605-4d91-a583-342dd388367a', N'b29154e9-3a30-4e80-9e0a-fb7f34604bf1', N'e20e7b7e-8286-42c2-a53f-dc373cd738e3', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'85c64082-6273-430f-b4df-5b7df9f955ba', N'599094e5-3b5c-454a-8510-7a087bb721e8', N'21cceb2e-74b8-4004-8ef2-088985364757', N'c9ec184f-bbbe-4ae5-bfe4-e8395988a96f', N'fae0d41d-69ad-456d-9135-36c0f3f9cdd9', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'0598c359-acf4-452a-920d-63861fc49332', N'7827b006-21cf-4c41-97ae-39fa0dc07004', N'f3645208-247d-44be-8fe5-7e39c64a61f0', N'd24b57ec-b622-4f22-aff5-76dc2f24ab7b', N'dfb49ea4-b3d7-42ea-af96-eefbc14b3ca5', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'36bc2001-01b0-40a0-bd6d-6fd27d253e36', N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', N'00504d7d-4d87-495d-9e43-6b11a4221a22', N'a7039d79-3249-4af5-9122-235114ab008d', N'3e773cba-ab67-48d8-b482-0c30d149865c', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'ba0f93cc-be4b-4f81-895b-7950c97dad73', N'599094e5-3b5c-454a-8510-7a087bb721e8', N'9bce54ce-7379-4908-89af-580f0f8f7973', N'8a87c1de-31d0-4f93-92a9-1f65e73216ff', N'57444587-4617-4638-8566-8d8deaac924b', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'c086d139-1dcf-4a71-bf85-8339db28c9f0', N'674165f0-9e5a-4e38-83d1-b91937bcd7b3', N'11bf9a12-c594-4569-9fc2-1894f9055cfa', N'01a8f499-6408-420f-9697-7c344c862b55', N'0afb1624-a98b-4273-9db1-60d8836704c6', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'92647043-9644-453b-80ab-8b9f2e4cf506', N'9a873bc7-06aa-4aaa-bf76-9f47030efae8', N'674165f0-9e5a-4e38-83d1-b91937bcd7b3', N'18a2406d-8f9b-4188-b877-5cd2bc840722', N'af0539f2-6367-48f0-9b81-83b4a839e47b', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'0988fd5b-ac5e-465b-9231-957add8f184b', N'599094e5-3b5c-454a-8510-7a087bb721e8', N'd15baf22-3f76-49e0-9784-32e24afd746a', N'84473fe8-2264-4190-8cff-9cf49ff5ad50', N'20d5ad94-1770-4e20-8b26-3ebed9e085ff', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'5f4ed07e-af12-4f9c-aaba-9ba3c8e7bac8', N'f3645208-247d-44be-8fe5-7e39c64a61f0', N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', N'aff84ce6-b7fc-42ab-8f70-56487cccd17b', N'2da6c454-fb48-4e6e-8925-7f277613f3f0', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'41c7a589-a7ed-4ecf-a075-a01c26ac9fc2', N'9a873bc7-06aa-4aaa-bf76-9f47030efae8', N'7096c978-59e4-48d1-b5a8-d52104d4cb9f', N'12dbf354-870e-49db-92af-068922ec3d29', N'2da6c454-fb48-4e6e-8925-7f277613f3f0', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'bbe5e228-80c7-4894-a64f-adcc89d32514', N'9d031265-21a8-499b-b3df-7cd544db2da7', N'599094e5-3b5c-454a-8510-7a087bb721e8', N'120d6a00-0a67-41ac-8b91-f498a6ebdac7', N'a1351d18-5756-40b2-a8e2-74ed2432e729', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'2aedca57-25f3-4b5d-a5d9-c1ef3c847f29', N'd1538119-2de9-4787-b046-1c5c17f0cfe8', N'858049e9-9651-4924-820b-ecfb5dfdf3e2', N'39d49035-0e5c-4765-9ee2-630fab2d9a00', N'36b5cb21-be42-4ed7-a5ce-c169be151913', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'12059119-5ee3-4c4e-a8a9-c3e50329cd16', N'f3645208-247d-44be-8fe5-7e39c64a61f0', N'e81b12b9-dbcf-436a-b64e-c2712ef0f843', N'fa18976d-8944-4bd6-b71e-ae3cc6c4b0a8', N'51504e6a-de8d-46af-9fe3-9521b6ea314b', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-01-18T10:24:26.953' AS DateTime), NULL, N'= (Field)')
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'9e8abce1-3ebe-46ae-967d-c63f9a39a693', N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', N'fc80b51c-167f-4d16-85ce-7c8171a6e530', N'd4d7f4f5-59d9-4fea-b2a8-a1d5eca14191', N'd0c5f481-b5ab-4fb3-8457-3cc40dcf683f', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaRelationship] ([Id], [JoinQuerySourceId], [ForeignQuerySourceId], [JoinFieldId], [ForeignFieldId], [Alias], [SystemRelationship], [JoinType], [ParentRelationshipId], [ReportId], [ForeignAlias], [RelationshipPosition], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [ComparisonOperator]) VALUES (N'65e63479-82bd-4ef0-9149-caaea0e47d51', N'9d031265-21a8-499b-b3df-7cd544db2da7', N'18483fe5-0914-46eb-8ee2-3e0afea84ce1', N'cdd968bc-3c16-49f5-9fb5-7c2bdb4f7ec9', N'930de933-c3c6-4c65-8ff8-ec32b8a183bc', NULL, 1, N'Inner', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, CAST(N'2017-05-04T18:58:56.497' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaReport] ([Id], [Name], [Type], [PreviewRecord], [AdvancedMode], [AllowNulls], [IsDistinct], [CategoryId], [SubCategoryId], [TenantId], [Description], [HeaderContent], [FooterContent], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [LastViewed], [Owner], [OwnerId], [Title], [TitleDescriptionContent], [ExcludedRelationships], [NumberOfView], [RenderingTime], [CreatedById], [ModifiedById], [ExportFormatSettingData], [SnapToGrid], [UsingFields], [SourceId], [Params], [Relationships], [UsingFieldNames]) VALUES (N'94939c1f-36f8-486d-87a7-179ccb2509d6', N'Demo-Customers', 0, 10, 1, 0, 0, NULL, NULL, NULL, N'', N'{"visible":false,"items":[{"isDirty":false,"type":"image","label":"Image","id":"formatDetails_42","positionX":0,"positionY":0,"width":6,"height":6,"name":"Logo Image","value":"","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageUrl":"http://","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_43","positionX":20,"positionY":0,"width":12,"height":2,"name":"Report Name","value":"{reportName}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"thinHorizontalRule","label":"Horizontal Rule","id":"formatDetails_44","positionX":20,"positionY":4,"width":12,"height":1,"name":"Upper Separator Line","value":"{horizontalRule}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":2,"isSelected":false},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_45","positionX":20,"positionY":5,"width":6,"height":2,"name":"Report Generated","value":"Report Generated:","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_46","positionX":20,"positionY":7,"width":6,"height":2,"name":"User","value":"User:","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_47","positionX":20,"positionY":9,"width":6,"height":2,"name":"Tenant","value":"Tenant:","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"dateTime","label":"Date Time","id":"formatDetails_48","positionX":26,"positionY":5,"width":6,"height":2,"name":"Current Date Time","value":"{currentDateTime}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_49","positionX":26,"positionY":7,"width":6,"height":2,"name":"Current User Name","value":"{currentUserName}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_50","positionX":26,"positionY":9,"width":6,"height":2,"name":"Tenant Name","value":"{tenantName}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"horizontalRule","label":"Horizontal Rule","id":"formatDetails_51","positionX":0,"positionY":11,"width":32,"height":1,"name":"Lower Separator Line","value":"{horizontalRule}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":4,"isSelected":false}]}', N'{"visible":false,"items":[{"isDirty":false,"type":"horizontalRule","label":"Horizontal Rule","id":"formatDetails_52","positionX":0,"positionY":0,"width":32,"height":1,"name":"Separator Line","value":"{horizontalRule}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":4,"isSelected":false},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_53","positionX":0,"positionY":1,"width":10,"height":2,"name":"Footer Text","value":"Footer Text","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_54","positionX":20,"positionY":1,"width":4,"height":2,"name":"Page","value":"Page","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"pageNumber","label":"Page Number","id":"formatDetails_55","positionX":24,"positionY":1,"width":8,"height":2,"name":"Page Number","value":"{pageNumber}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2}]}', 1, 0, CAST(N'2020-10-09T18:07:03.937' AS DateTime), N'System Admin', CAST(N'2020-10-09T18:07:03.937' AS DateTime), N'System Admin', CAST(N'2020-10-09T20:34:43.140' AS DateTime), N'System Admin', N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'', N'{"visible":false,"items":[{"isDirty":false,"type":"title","label":"Title","id":"formatDetails_56","name":"Title","value":"","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false},{"isDirty":false,"type":"description","label":"Description","id":"formatDetails_57","name":"Description","value":"","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false}]}', N'', 1, 1163, N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'{"Orientation":0,"Margins":0,"CenterOnPage":{"Horizontally":false,"Vertically":false},"PageBreakAfterReportPart":false,"MarginSettings":[{"Type":3,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.7,"RightValue":0.7,"HeaderValue":0.3,"FooterValue":0.3},{"Type":0,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.7,"RightValue":0.7,"HeaderValue":0.3,"FooterValue":0.3},{"Type":1,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.25,"RightValue":0.25,"HeaderValue":0.3,"FooterValue":0.3},{"Type":2,"TopValue":1.0,"BottomValue":1.0,"LeftValue":1.0,"RightValue":1.0,"HeaderValue":0.5,"FooterValue":0.5}]}', 0, NULL, NULL, N'[{"Categories":[{"QuerySourceNames":["Customers"],"Id":"ef86ecc7-b553-4750-9d27-b83aa2b27dea","Name":"dbo"}],"Id":"76fb9a34-b160-4d59-b16b-608c7a1d0217","Name":"Retail"}]', N'[]', N'["[con;#0].[cat;#0].[Customers].[CompanyName]","[con;#0].[cat;#0].[Customers].[City]","[con;#0].[cat;#0].[Customers].[Address]","[con;#0].[cat;#0].[Customers].[ContactName]","[con;#0].[cat;#0].[Customers].[ContactTitle]","[con;#0].[cat;#0].[Customers].[Country]","[con;#0].[cat;#0].[Customers].[PostalCode]"]')
INSERT [dbo].[IzendaReport] ([Id], [Name], [Type], [PreviewRecord], [AdvancedMode], [AllowNulls], [IsDistinct], [CategoryId], [SubCategoryId], [TenantId], [Description], [HeaderContent], [FooterContent], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [LastViewed], [Owner], [OwnerId], [Title], [TitleDescriptionContent], [ExcludedRelationships], [NumberOfView], [RenderingTime], [CreatedById], [ModifiedById], [ExportFormatSettingData], [SnapToGrid], [UsingFields], [SourceId], [Params], [Relationships], [UsingFieldNames]) VALUES (N'dcb731c4-6e93-4fb0-abb5-de59f8a42e3c', N'Demo-Orders', 0, 10, 1, 0, 0, NULL, NULL, NULL, N'', N'{"visible":false,"items":[{"isDirty":false,"type":"image","label":"Image","id":"formatDetails_189","positionX":0,"positionY":0,"width":6,"height":6,"name":"Logo Image","value":"","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageUrl":"http://","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_190","positionX":20,"positionY":0,"width":12,"height":2,"name":"Report Name","value":"{reportName}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"thinHorizontalRule","label":"Horizontal Rule","id":"formatDetails_191","positionX":20,"positionY":4,"width":12,"height":1,"name":"Upper Separator Line","value":"{horizontalRule}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":2,"isSelected":false},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_192","positionX":20,"positionY":5,"width":6,"height":2,"name":"Report Generated","value":"Report Generated:","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_193","positionX":20,"positionY":7,"width":6,"height":2,"name":"User","value":"User:","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_194","positionX":20,"positionY":9,"width":6,"height":2,"name":"Tenant","value":"Tenant:","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"dateTime","label":"Date Time","id":"formatDetails_195","positionX":26,"positionY":5,"width":6,"height":2,"name":"Current Date Time","value":"{currentDateTime}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_196","positionX":26,"positionY":7,"width":6,"height":2,"name":"Current User Name","value":"{currentUserName}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_197","positionX":26,"positionY":9,"width":6,"height":2,"name":"Tenant Name","value":"{tenantName}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"horizontalRule","label":"Horizontal Rule","id":"formatDetails_198","positionX":0,"positionY":11,"width":32,"height":1,"name":"Lower Separator Line","value":"{horizontalRule}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":4,"isSelected":false}]}', N'{"visible":false,"items":[{"isDirty":false,"type":"horizontalRule","label":"Horizontal Rule","id":"formatDetails_199","positionX":0,"positionY":0,"width":32,"height":1,"name":"Separator Line","value":"{horizontalRule}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":4,"isSelected":false},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_200","positionX":0,"positionY":1,"width":10,"height":2,"name":"Footer Text","value":"Footer Text","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_201","positionX":20,"positionY":1,"width":4,"height":2,"name":"Page","value":"Page","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2},{"isDirty":false,"type":"pageNumber","label":"Page Number","id":"formatDetails_202","positionX":24,"positionY":1,"width":8,"height":2,"name":"Page Number","value":"{pageNumber}","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false,"minHeight":2}]}', 2, 0, CAST(N'2020-10-09T20:29:43.303' AS DateTime), N'System Admin', CAST(N'2020-10-09T20:34:07.977' AS DateTime), N'System Admin', NULL, N'System Admin', N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'', N'{"visible":false,"items":[{"isDirty":false,"type":"title","label":"Title","id":"formatDetails_203","name":"Title","value":"","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false},{"isDirty":false,"type":"description","label":"Description","id":"formatDetails_204","name":"Description","value":"","font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageDimensions":{"imageWidth":1,"imageHeight":1,"isConstrainProportions":true},"dashStyle":"solid","thickness":1,"isSelected":false}]}', N'', 0, 0, N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'{"Orientation":0,"Margins":0,"CenterOnPage":{"Horizontally":false,"Vertically":false},"PageBreakAfterReportPart":false,"MarginSettings":[{"Type":3,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.7,"RightValue":0.7,"HeaderValue":0.3,"FooterValue":0.3},{"Type":0,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.7,"RightValue":0.7,"HeaderValue":0.3,"FooterValue":0.3},{"Type":1,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.25,"RightValue":0.25,"HeaderValue":0.3,"FooterValue":0.3},{"Type":2,"TopValue":1.0,"BottomValue":1.0,"LeftValue":1.0,"RightValue":1.0,"HeaderValue":0.5,"FooterValue":0.5}]}', 0, NULL, NULL, N'[{"Categories":[{"QuerySourceNames":["Orders"],"Id":"ef86ecc7-b553-4750-9d27-b83aa2b27dea","Name":"dbo"}],"Id":"76fb9a34-b160-4d59-b16b-608c7a1d0217","Name":"Retail"}]', N'[]', N'["[con;#0].[cat;#0].[Orders].[OrderID]","[con;#0].[cat;#0].[Orders].[ShipName]","[con;#0].[cat;#0].[Orders].[OrderDate]","[con;#0].[cat;#0].[Orders].[RequiredDate]","[con;#0].[cat;#0].[Orders].[ShipAddress]","[con;#0].[cat;#0].[Orders].[ShipCity]","[con;#0].[cat;#0].[Orders].[ShipCountry]","[con;#0].[cat;#0].[Orders].[ShipPostalCode]"]')
INSERT [dbo].[IzendaReportCategory] ([Id], [Name], [Type], [ParentId], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'063ae899-45ce-4cd2-a849-f4bbd2049516', N'DemoReport', 0, NULL, N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaReportDataSource] ([Id], [QuerySourceId], [ReportId], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [QuerySourceUniqueName]) VALUES (N'0ba3736b-be74-48c8-bc04-36c8a4ec3377', 'F3379C8E-7AE7-4841-B9B1-C11AAD4F4323', N'94939c1f-36f8-486d-87a7-179ccb2509d6', 0, 1, CAST(N'2020-10-09T18:07:03.990' AS DateTime), N'System Admin', CAST(N'2020-10-09T18:07:03.990' AS DateTime), N'System Admin', N'[con;#0].[cat;#0].[Customers]')
INSERT [dbo].[IzendaReportDataSource] ([Id], [QuerySourceId], [ReportId], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [QuerySourceUniqueName]) VALUES (N'b36a9247-7e2f-4ce6-8d18-4cd8e67fba9e', 'F3379C8E-7AE7-4841-B9B1-C11AAD4F4323', N'dcb731c4-6e93-4fb0-abb5-de59f8a42e3c', 0, 1, CAST(N'2020-10-09T20:34:08.087' AS DateTime), N'System Admin', CAST(N'2020-10-09T20:34:08.087' AS DateTime), N'System Admin', N'[con;#0].[cat;#0].[Orders]')
INSERT [dbo].[IzendaReportFilter] ([Id], [Logic], [Visible], [ReportId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'520870ed-1055-4b57-bda0-d5fbf3ef951c', N'', 1, N'94939c1f-36f8-486d-87a7-179ccb2509d6', 2, 0, CAST(N'2017-01-18T10:47:19.973' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:48:35.007' AS DateTime), NULL)
INSERT [dbo].[IzendaReportFilter] ([Id], [Logic], [Visible], [ReportId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'520870ed-1055-4b57-bda0-d5fbf3ef951c', N'', 1, N'dcb731c4-6e93-4fb0-abb5-de59f8a42e3c', 2, 0, CAST(N'2017-01-18T10:47:19.973' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:48:35.007' AS DateTime), NULL)
INSERT [dbo].[IzendaReportPart] ([Id], [Title], [PositionX], [PositionY], [Width], [Height], [Content], [NumberOfRecord], [ReportId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [SourceId]) VALUES (N'f565f05e-a560-47fe-821d-3b060604ab30', N'Grid', 0, 0, 13, 6, N'{"customContainers":[],"columns":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[{"name":"OrderID","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":1,"field":{"fieldId":"a1351d18-5756-40b2-a8e2-74ed2432e729","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[OrderID]","originalName":null,"fieldName":"OrderID","fieldNameAlias":"OrderID","dataFieldType":"Numeric","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ShipName","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":2,"field":{"fieldId":"01856057-a830-4572-8a78-c46cbe652c09","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[ShipName]","originalName":null,"fieldName":"ShipName","fieldNameAlias":"ShipName","dataFieldType":"Text","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"OrderDate","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":3,"field":{"fieldId":"9869ba0d-2c14-4146-8c67-2d4c476bd9f0","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[OrderDate]","originalName":null,"fieldName":"OrderDate","fieldNameAlias":"OrderDate","dataFieldType":"Datetime","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"RequiredDate","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":4,"field":{"fieldId":"0991eec6-5432-4c3d-ba68-2e8ce1b202d7","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[RequiredDate]","originalName":null,"fieldName":"RequiredDate","fieldNameAlias":"RequiredDate","dataFieldType":"Datetime","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ShipAddress","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":5,"field":{"fieldId":"38a04cd6-6975-4d2c-850c-82d75091d268","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[ShipAddress]","originalName":null,"fieldName":"ShipAddress","fieldNameAlias":"ShipAddress","dataFieldType":"Text","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ShipCity","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":6,"field":{"fieldId":"c77588f5-7620-49b1-ac69-e3e1a8751c94","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[ShipCity]","originalName":null,"fieldName":"ShipCity","fieldNameAlias":"ShipCity","dataFieldType":"Text","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ShipCountry","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":7,"field":{"fieldId":"dd796e4b-0dd7-47c4-ba93-637b342ec6ed","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[ShipCountry]","originalName":null,"fieldName":"ShipCountry","fieldNameAlias":"ShipCountry","dataFieldType":"Text","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}}]},"rows":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"values":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"separators":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"paginable":true,"type":"3","drilldownType":0,"properties":{"generalInfo":{"gridStyle":"Vertical","separatorStyle":"Comma"},"table":{"border":{"top":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"right":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"bottom":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"midVer":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"left":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"midHor":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1}},"backgroundColor":"#fff","alternativeBackgroundColor":"#EFEFEF"},"columns":{"width":{"value":150},"alterBackgroundColor":false,"wordWrap":false,"alignment":"left","verticalAlignment":"middle"},"rows":{"alterBackgroundColor":false},"headers":{"font":{"family":"Proxima Nova","size":14,"bold":true,"italic":false,"underline":false,"color":"#45525c","backgroundColor":"#f6f8fa"},"alignment":"left","verticalAlignment":"middle","wordWrap":false,"removeHeaderForExport":false,"removeHeaderForViewer":false,"freezeHeaders":null},"grouping":{"useSeparator":true},"view":{"dataRefreshInterval":{"enable":false,"updateInterval":0,"isAll":true,"latestRecord":0},"conditionalFormatting":{"rules":[]},"usePagination":true,"expanderRowsSpacing":false,"collapseDrilldownByDefault":false,"pageSize":10,"pivotColumnsPerExportedPage":""},"printing":{"usePageBreakAfterSeparator":false},"isDirty":true},"selectedMetric":null,"settings":{},"title":{"text":"","properties":{},"settings":{"font":{"family":"Proxima Nova","size":14,"bold":true,"italic":false,"underline":false,"color":"","highlightColor":""},"alignment":{"alignment":""}},"collapsableList":[],"elements":[]},"description":{"text":"","properties":{},"settings":{"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","highlightColor":""},"alignment":{"alignment":""}},"collapsableList":[],"elements":[]},"expandedLevel":-1,"selectedExpandedLevel":0,"isCrossFiltering":false,"isFormatted":false,"hasTheme":false}', NULL, N'dcb731c4-6e93-4fb0-abb5-de59f8a42e3c', 2, 0, CAST(N'2020-10-09T20:29:43.597' AS DateTime), N'System Admin', CAST(N'2020-10-09T20:34:08.113' AS DateTime), NULL, NULL)
INSERT [dbo].[IzendaReportPart] ([Id], [Title], [PositionX], [PositionY], [Width], [Height], [Content], [NumberOfRecord], [ReportId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [SourceId]) VALUES (N'b94cfd1c-1e29-4532-8230-3dae45f71d23', N'Countries', 0, 7, 5, 6, N'{"customContainers":[],"columns":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[{"name":"ShipCountry","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":1,"field":{"fieldId":"dd796e4b-0dd7-47c4-ba93-637b342ec6ed","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[ShipCountry]","originalName":null,"fieldName":"ShipCountry","fieldNameAlias":"ShipCountry","dataFieldType":"Text","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ShipPostalCode","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":2,"field":{"fieldId":"be72ac99-e3b5-4e56-b405-1a069cc9e86b","fieldUniqueName":"[con;#0].[cat;#0].[Orders].[ShipPostalCode]","originalName":null,"fieldName":"ShipPostalCode","fieldNameAlias":"ShipPostalCode","dataFieldType":"Text","querySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","querySourceUniqueName":"[con;#0].[cat;#0].[Orders]","querySourceType":"Table","sourceAlias":"Orders","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}}]},"rows":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"values":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"separators":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"paginable":true,"type":"3","drilldownType":0,"properties":{"generalInfo":{"gridStyle":"Vertical","separatorStyle":"Comma"},"table":{"border":{"top":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"right":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"bottom":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"midVer":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"left":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"midHor":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1}},"backgroundColor":"#fff","alternativeBackgroundColor":"#EFEFEF"},"columns":{"width":{"value":150},"alterBackgroundColor":false,"wordWrap":false,"alignment":"left","verticalAlignment":"middle"},"rows":{"alterBackgroundColor":false},"headers":{"font":{"family":"Proxima Nova","size":14,"bold":true,"italic":false,"underline":false,"color":"#45525c","backgroundColor":"#f6f8fa"},"alignment":"left","verticalAlignment":"middle","wordWrap":false,"removeHeaderForExport":false,"removeHeaderForViewer":false,"freezeHeaders":null},"grouping":{"useSeparator":true},"view":{"dataRefreshInterval":{"enable":false,"updateInterval":0,"isAll":true,"latestRecord":0},"conditionalFormatting":{"rules":[]},"usePagination":true,"expanderRowsSpacing":false,"collapseDrilldownByDefault":false,"pageSize":10,"pivotColumnsPerExportedPage":""},"printing":{"usePageBreakAfterSeparator":false},"isDirty":true},"selectedMetric":null,"settings":{},"title":{"text":"","properties":{},"settings":{"font":{"family":"Proxima Nova","size":14,"bold":true,"italic":false,"underline":false,"color":"","highlightColor":""},"alignment":{"alignment":""}},"collapsableList":[],"elements":[]},"description":{"text":"","properties":{},"settings":{"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","highlightColor":""},"alignment":{"alignment":""}},"collapsableList":[],"elements":[]},"expandedLevel":-1,"selectedExpandedLevel":0,"isCrossFiltering":false,"isFormatted":false,"hasTheme":false}', NULL, N'dcb731c4-6e93-4fb0-abb5-de59f8a42e3c', 1, 0, CAST(N'2020-10-09T20:34:08.107' AS DateTime), N'System Admin', CAST(N'2020-10-09T20:34:08.107' AS DateTime), N'System Admin', NULL)
INSERT [dbo].[IzendaReportPart] ([Id], [Title], [PositionX], [PositionY], [Width], [Height], [Content], [NumberOfRecord], [ReportId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [SourceId]) VALUES (N'da94c39c-734d-4313-a47b-4f0cd85e9014', N'Grid', 0, 0, 0, 0, N'{"customContainers":[],"columns":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[{"name":"CompanyName","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":1,"field":{"fieldId":"5fe71dc8-99e1-4d6e-bcd0-411b8041a9b6","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[CompanyName]","originalName":null,"fieldName":"CompanyName","fieldNameAlias":"CompanyName","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"City","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[],"fieldDataType":"Text","previewRecord":10},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","fieldDataType":"Text","previewRecord":10}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":2,"field":{"fieldId":"f2f79052-d502-4aac-93c0-3adc1fb20500","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[City]","originalName":null,"fieldName":"City","fieldNameAlias":"City","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"Address","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":3,"field":{"fieldId":"9b6dc459-05fe-4c3b-983f-870ee524bb6b","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[Address]","originalName":null,"fieldName":"Address","fieldNameAlias":"Address","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ContactName","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":4,"field":{"fieldId":"d445078f-86ce-462b-a58d-fcdba917eea5","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[ContactName]","originalName":null,"fieldName":"ContactName","fieldNameAlias":"ContactName","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"ContactTitle","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":5,"field":{"fieldId":"a91a8422-f78e-46e4-9551-957bb326e6b3","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[ContactTitle]","originalName":null,"fieldName":"ContactTitle","fieldNameAlias":"ContactTitle","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"Country","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":6,"field":{"fieldId":"3c77e739-a329-47d4-a5e0-cdde10e0d9e4","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[Country]","originalName":null,"fieldName":"Country","fieldNameAlias":"Country","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}},{"name":"PostalCode","properties":{"isDirty":false,"fieldItemVisible":true,"dataFormattings":{"function":"","functionInfo":{"id":null,"name":""},"format":{"createNewHiddenPercenOfGroupField":false},"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","backgroundColor":""},"width":{"value":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"sort":"Unsorted","color":{"textColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null},"cellColor":{"rangePercent":null,"rangeValue":null,"value":null,"allValues":null}},"alternativeText":{"rangePercent":null,"rangeValue":null,"value":null},"customURL":{"url":"","option":"LINK_NEW_WINDOW"},"embeddedJavascript":{"script":""},"subTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":"","levels":[]},"grandTotal":{"label":"","function":"","expression":"","dataType":"","format":{},"previewResult":""}},"headerFormating":{"font":{"family":null,"size":null,"bold":null,"italic":null,"underline":null,"color":null,"backgroundColor":null},"alignment":null,"verticalAlignment":null,"wordWrap":null,"columnGroup":"","verticalHeader":false,"verticalHeaderHeight":{"value":null}},"drillDown":{"subReport":{"selectedReport":null,"style":null,"reportPartUsed":null,"reportFilter":true,"mappingFields":[],"selectedIconValue":{"icon":null,"value":null},"viewSettingByLink":null}},"otherProps":{}},"settings":{},"chartType":null,"showTotal":false,"position":7,"field":{"fieldId":"53cb0960-ba36-4179-b4f6-c44e24d3bd21","fieldUniqueName":"[con;#0].[cat;#0].[Customers].[PostalCode]","originalName":null,"fieldName":"PostalCode","fieldNameAlias":"PostalCode","dataFieldType":"Text","querySourceId":"d15baf22-3f76-49e0-9784-32e24afd746a","querySourceUniqueName":"[con;#0].[cat;#0].[Customers]","querySourceType":"Table","sourceAlias":"Customers","relationData":{"fieldId":"00000000-0000-0000-0000-000000000000","fieldUniqueName":null,"originalName":null,"fieldName":null,"fieldNameAlias":null,"dataFieldType":null,"querySourceId":null,"querySourceUniqueName":null,"querySourceType":null,"sourceAlias":null,"relationData":null,"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":false,"filterable":false,"reportId":null,"fieldFunctionExpression":null,"expression":null,"grandTotalExpression":null,"grandTotalFormat":null,"subTotalExpression":null,"subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":null,"formating":null,"functionDataType":null,"isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null},"querySourceAlias":null,"runningDeep":-1,"isRunningField":false,"isCompositeField":false,"builtRunningField":false,"relationshipId":"00000000-0000-0000-0000-000000000000","visible":true,"filterable":false,"reportId":null,"fieldFunctionExpression":"","expression":null,"grandTotalExpression":"","grandTotalFormat":null,"subTotalExpression":"","subtotalFormat":null,"sort":"Unsorted","autoSort":false,"function":"","formating":{"format":null,"createNewHiddenPercenOfGroupField":false},"functionDataType":"","isCalculated":false,"hasAggregatedFunction":false,"invalidField":0,"isCrossFilter":false,"isFilterField":false,"isPredicated":false,"modelName":null,"relationColumn":null}}]},"rows":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"values":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"separators":{"text":null,"properties":{},"settings":{},"collapsableList":[],"elements":[]},"paginable":true,"type":"3","drilldownType":0,"properties":{"generalInfo":{"gridStyle":"Vertical","separatorStyle":"Comma"},"table":{"border":{"top":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"right":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"bottom":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"midVer":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"left":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1},"midHor":{"color":"#dbdcdd","dashStyle":"solid","thinkness":1}},"backgroundColor":"#fff","alternativeBackgroundColor":"#EFEFEF"},"columns":{"width":{"value":150},"alterBackgroundColor":false,"wordWrap":false,"alignment":"left","verticalAlignment":"middle"},"rows":{"alterBackgroundColor":false},"headers":{"font":{"family":"Proxima Nova","size":14,"bold":true,"italic":false,"underline":false,"color":"#45525c","backgroundColor":"#f6f8fa"},"alignment":"left","verticalAlignment":"middle","wordWrap":false,"removeHeaderForExport":false,"removeHeaderForViewer":false,"freezeHeaders":null},"grouping":{"useSeparator":true},"view":{"dataRefreshInterval":{"enable":false,"updateInterval":0,"isAll":true,"latestRecord":0},"conditionalFormatting":{"rules":[]},"usePagination":true,"expanderRowsSpacing":false,"collapseDrilldownByDefault":false,"pageSize":10,"pivotColumnsPerExportedPage":""},"printing":{"usePageBreakAfterSeparator":false},"isDirty":true},"selectedMetric":null,"settings":{},"title":{"text":"","properties":{},"settings":{"font":{"family":"Proxima Nova","size":14,"bold":true,"italic":false,"underline":false,"color":"","highlightColor":""},"alignment":{"alignment":""}},"collapsableList":[],"elements":[]},"description":{"text":"","properties":{},"settings":{"font":{"family":"Proxima Nova","size":14,"bold":false,"italic":false,"underline":false,"color":"","highlightColor":""},"alignment":{"alignment":""}},"collapsableList":[],"elements":[]},"expandedLevel":-1,"selectedExpandedLevel":0,"isCrossFiltering":false,"isFormatted":false,"hasTheme":false}', NULL, N'94939c1f-36f8-486d-87a7-179ccb2509d6', 1, 0, CAST(N'2020-10-09T18:07:04.003' AS DateTime), N'System Admin', CAST(N'2020-10-09T18:07:04.003' AS DateTime), N'System Admin', NULL)
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'30029181-34bb-4179-870e-0c4f21d1d937', N'Employee', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":false,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', 1, 0, 1, CAST(N'2017-01-18T10:19:34.623' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:19:34.623' AS DateTime), N'System Admin', N'BasicReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'ae3b0326-9dde-42a3-919b-417faf8a5313', N'Manager', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":false,"advancedDataSources":true,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', 1, 0, 1, CAST(N'2017-01-18T10:11:53.227' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:11:53.227' AS DateTime), N'System Admin', N'AdvReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'8bca651c-892a-418b-a654-5e2602983eb9', N'Employee', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":false,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', 1, 0, 1, CAST(N'2017-01-18T10:19:01.773' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:19:01.773' AS DateTime), N'System Admin', N'BasicReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'ee8fb4ee-7349-47d6-9e7c-7c0e79dd9d85', N'Employee', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":false,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'f273613f-dc00-4550-a91f-041eb6546e1b', 1, 0, 1, CAST(N'2017-01-18T10:09:03.763' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:09:03.763' AS DateTime), N'System Admin', N'BasicReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'a1ee5831-8d4b-41b6-82b3-875cc130a6b7', N'VP', N'{"systemAdmin":true,"fullReportAndDashboardAccess":true,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":true,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":true,"tenantAccess":0},"dataModel":{"customView":{"create":true,"edit":true,"delete":true,"tenantAccess":0},"value":true,"tenantAccess":0},"advancedSettings":{"category":true,"others":true,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":true,"tenantAccess":0},"actions":{"create":true,"edit":true,"del":true,"configureSecurityOptions":true,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":0},"dataModelAccess":{"value":true,"tenantAccess":0},"permissions":{"value":true,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":true,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":true,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":true,"tenantAccess":0},"reportPartTypes":{"chart":true,"form":true,"gauge":true,"map":true,"tenantAccess":0,"isFullReportPartTypesPermission":true,"isEnableGoogleAddress":true},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":true,"crossFiltering":true,"tenantAccess":0,"isFullFilterPropertiesPermission":true},"fieldProperties":{"customURL":true,"embeddedJavaScript":true,"subreport":true,"tenantAccess":0,"isFullFieldPropertiesPermission":true},"actions":{"schedule":true,"email":true,"viewReportHistory":true,"del":true,"registerForAlerts":true,"print":true,"unarchiveReportVersions":true,"overwriteExistingReport":true,"subscribe":true,"exporting":true,"configureAccessRights":true,"tenantAccess":0,"isFullPermission":true},"tenantAccess":0},"tenantSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":0},"permissions":{"value":true,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":true,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":true,"email":true,"del":true,"subscribe":true,"print":true,"exporting":true,"overwriteExistingDashboard":true,"configureAccessRights":true,"tenantAccess":0,"isFullActionsPermission":true},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":true,"externalUsers":true,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":true,"embeddedHTML":true,"attachment":true,"tenantAccess":0},"attachmentType":{"word":true,"excel":true,"pdf":true,"csv":true,"xml":true,"json":true,"definition":true,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":true,"excel":true,"pdf":true,"iframe":true,"csv":true,"xml":true,"json":true,"queryExecution":true,"definition":true,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":true,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', 1, 0, 1, CAST(N'2017-01-18T10:13:18.557' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:13:18.557' AS DateTime), N'System Admin', N'Administrator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'38cc1643-9144-4582-ab1f-9b8957217fea', N'Manager', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":false,"advancedDataSources":true,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', 1, 0, 1, CAST(N'2017-01-18T10:14:14.990' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:14:14.990' AS DateTime), N'System Admin', N'AdvReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'801639d2-5c72-4131-a46d-ab9229cfb071', N'Employee', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":false,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', 1, 0, 1, CAST(N'2017-01-18T09:58:05.403' AS DateTime), N'System Admin', CAST(N'2017-01-18T09:58:05.403' AS DateTime), N'System Admin', N'BasicReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'40c2ecc3-2023-4a18-8977-ad2e94f589f1', N'Manager', N'{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":false,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":false,"tenantAccess":0},"dataModel":{"customView":{"create":false,"edit":false,"delete":false,"tenantAccess":0},"value":false,"tenantAccess":0},"advancedSettings":{"category":false,"others":false,"tenantAccess":0},"import":{"value":false,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":false,"tenantAccess":0},"actions":{"create":false,"edit":false,"del":false,"configureSecurityOptions":false,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"dataModelAccess":{"value":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":false,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":false,"tenantAccess":0},"dataSources":{"simpleDataSources":false,"advancedDataSources":true,"tenantAccess":0},"reportPartTypes":{"chart":false,"form":false,"gauge":false,"map":false,"tenantAccess":0,"isFullReportPartTypesPermission":false,"isEnableGoogleAddress":false},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":false,"crossFiltering":false,"tenantAccess":0,"isFullFilterPropertiesPermission":false},"fieldProperties":{"customURL":false,"embeddedJavaScript":false,"subreport":false,"tenantAccess":0,"isFullFieldPropertiesPermission":false},"actions":{"schedule":false,"email":false,"viewReportHistory":false,"del":false,"registerForAlerts":false,"print":false,"unarchiveReportVersions":false,"overwriteExistingReport":false,"subscribe":false,"exporting":false,"configureAccessRights":false,"tenantAccess":0,"isFullPermission":false},"tenantAccess":0},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":0},"permissions":{"value":false,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":false,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":false,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":false,"email":false,"del":false,"subscribe":false,"print":false,"exporting":false,"overwriteExistingDashboard":false,"configureAccessRights":false,"tenantAccess":0,"isFullActionsPermission":false},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":false,"externalUsers":false,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":false,"embeddedHTML":false,"attachment":false,"tenantAccess":0},"attachmentType":{"word":false,"excel":false,"pdf":false,"csv":false,"xml":false,"json":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":false,"excel":false,"pdf":false,"iframe":false,"csv":false,"xml":false,"json":false,"queryExecution":false,"definition":false,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":false,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', 1, 0, 1, CAST(N'2017-01-18T10:10:17.130' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:10:17.130' AS DateTime), N'System Admin', N'AdvReportCreator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'98610244-a53a-42e8-ad8c-c6441b1d8cf7', N'VP', N'{"systemAdmin":true,"fullReportAndDashboardAccess":true,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":true,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":true,"tenantAccess":0},"dataModel":{"customView":{"create":true,"edit":true,"delete":true,"tenantAccess":0},"value":true,"tenantAccess":0},"advancedSettings":{"category":true,"others":true,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":true,"tenantAccess":0},"actions":{"create":true,"edit":true,"del":true,"configureSecurityOptions":true,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":0},"dataModelAccess":{"value":true,"tenantAccess":0},"permissions":{"value":true,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":true,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":true,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":true,"tenantAccess":0},"reportPartTypes":{"chart":true,"form":true,"gauge":true,"map":true,"tenantAccess":0,"isFullReportPartTypesPermission":true,"isEnableGoogleAddress":true},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":true,"crossFiltering":true,"tenantAccess":0,"isFullFilterPropertiesPermission":true},"fieldProperties":{"customURL":true,"embeddedJavaScript":true,"subreport":true,"tenantAccess":0,"isFullFieldPropertiesPermission":true},"actions":{"schedule":true,"email":true,"viewReportHistory":true,"del":true,"registerForAlerts":true,"print":true,"unarchiveReportVersions":true,"overwriteExistingReport":true,"subscribe":true,"exporting":true,"configureAccessRights":true,"tenantAccess":0,"isFullPermission":true},"tenantAccess":0},"tenantSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":0},"permissions":{"value":true,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":true,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":true,"email":true,"del":true,"subscribe":true,"print":true,"exporting":true,"overwriteExistingDashboard":true,"configureAccessRights":true,"tenantAccess":0,"isFullActionsPermission":true},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":true,"externalUsers":true,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":true,"embeddedHTML":true,"attachment":true,"tenantAccess":0},"attachmentType":{"word":true,"excel":true,"pdf":true,"csv":true,"xml":true,"json":true,"definition":true,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":true,"excel":true,"pdf":true,"iframe":true,"csv":true,"xml":true,"json":true,"queryExecution":true,"definition":true,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":true,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', 1, 0, 1, CAST(N'2017-01-18T10:10:53.300' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:10:53.300' AS DateTime), N'System Admin', N'Administrator')
INSERT [dbo].[IzendaRole] ([Id], [Name], [PermissionData], [QuerySources], [TenantId], [Active], [Deleted], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [RoleType]) VALUES (N'58970b43-aa4e-4b9d-8231-f0b0beecf6a8', N'VP', N'{"systemAdmin":true,"fullReportAndDashboardAccess":true,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":true,"tenantAccess":0},"tenantAccess":0},"dataSetup":{"dataConnectors":{"value":true,"tenantAccess":0},"dataModel":{"customView":{"create":true,"edit":true,"delete":true,"tenantAccess":0},"value":true,"tenantAccess":0},"advancedSettings":{"category":true,"others":true,"tenantAccess":0},"tenantAccess":0},"userSetup":{"userRoleAssociation":{"value":true,"tenantAccess":0},"actions":{"create":true,"edit":true,"del":true,"configureSecurityOptions":true,"tenantAccess":0},"tenantAccess":0},"roleSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":0},"dataModelAccess":{"value":true,"tenantAccess":0},"permissions":{"value":true,"tenantAccess":0},"grantRoleWithFullReportAndDashboardAccess":{"value":true,"tenantAccess":0},"tenantAccess":0},"reports":{"canCreateNewReport":{"value":true,"tenantAccess":0},"dataSources":{"simpleDataSources":true,"advancedDataSources":true,"tenantAccess":0},"reportPartTypes":{"chart":true,"form":true,"gauge":true,"map":true,"tenantAccess":0,"isFullReportPartTypesPermission":true,"isEnableGoogleAddress":true},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"filterProperties":{"filterLogic":true,"crossFiltering":true,"tenantAccess":0,"isFullFilterPropertiesPermission":true},"fieldProperties":{"customURL":true,"embeddedJavaScript":true,"subreport":true,"tenantAccess":0,"isFullFieldPropertiesPermission":true},"actions":{"schedule":true,"email":true,"viewReportHistory":true,"del":true,"registerForAlerts":true,"print":true,"unarchiveReportVersions":true,"overwriteExistingReport":true,"subscribe":true,"exporting":true,"configureAccessRights":true,"tenantAccess":0,"isFullPermission":true},"tenantAccess":0},"tenantSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":0},"permissions":{"value":true,"tenantAccess":0},"tenantAccess":0},"dashboards":{"canCreateNewDashboard":{"value":true,"tenantAccess":0},"displayDashboardTileHeader":{"value":true,"tenantAccess":0},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":0},"categoryAccessibility":{"categories":[],"tenantAccess":0}},"actions":{"schedule":true,"email":true,"del":true,"subscribe":true,"print":true,"exporting":true,"overwriteExistingDashboard":true,"configureAccessRights":true,"tenantAccess":0,"isFullActionsPermission":true},"tenantAccess":0},"access":{"accessLimits":{"value":[],"tenantAccess":0},"accessDefaults":{"value":[],"tenantAccess":0},"tenantAccess":0},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":0},"schedulingScope":{"systemUsers":true,"externalUsers":true,"tenantAccess":0},"tenantAccess":0},"emailing":{"deliveryMethod":{"link":true,"embeddedHTML":true,"attachment":true,"tenantAccess":0},"attachmentType":{"word":true,"excel":true,"pdf":true,"csv":true,"xml":true,"json":true,"definition":true,"tenantAccess":0},"tenantAccess":0},"exporting":{"exportingFormat":{"word":true,"excel":true,"pdf":true,"iframe":true,"csv":true,"xml":true,"json":true,"queryExecution":true,"definition":true,"tenantAccess":0},"tenantAccess":0},"systemwide":{"canSeeSystemMessages":{"value":true,"tenantAccess":0},"tenantAccess":0},"accessLimitsTree":null,"schedulingLimitsTree":null}', N'', N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', 1, 0, 1, CAST(N'2017-01-18T10:15:08.577' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:15:08.577' AS DateTime), N'System Admin', N'Administrator')
INSERT [dbo].[IzendaSecurityPolicy] ([Id], [MinNumberOfPasswordLenght], [MaxNumberOfPasswordLenght], [MinNumberOfSpecialCharacter], [MaxNumberOfSpecialCharacter], [MinNumberOfUppercaseCharacter], [MaxNumberOfUppercaseCharacter], [MinNumberOfLowercaseCharacter], [MaxNumberOfLowercaseCharacter], [MinNumberOfNumericCharacter], [MaxNumberOfNumericCharacter], [MaxNumberOfRepeatSequential], [MinNumberOfPasswordAge], [MaxNumberOfPasswordAge], [NotifyUseDuring], [NumberOfPasswordToKeep], [PasswordLinkValidity], [NumberOfQuestionProfile], [NumberOfQuestionResetPassword], [NumberOfFailedLogonAllowed], [NumberOfFailedAnswerAllowed], [LockoutPeriod], [TenantId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'fa528971-a8af-45ab-a0b3-d539104e1b0d', 1, 10, 1, 10, 1, 10, 1, 10, 1, 10, 10, 1, 10, 4, 3, 10, 3, 2, 3, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'5784ece5-d2e7-42b1-89bb-859737b7b2a9', N'Question_Number_1', 1, 0, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'3771bdc2-1add-481a-9649-18a7e494860b', N'Question_Number_2', 1, 0, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'1704f7c3-0911-40cc-88c5-3c496613f96a', N'Question_Number_3', 1, 0, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'c054397d-e371-4694-ad71-162174f39b2f', N'Question_Number_4', 1, 0, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'bf8e6807-6dbf-48a7-a5d9-121a46014d41', N'Question_Number_5', 1, 0, NULL, NULL, NULL, NULL, NULL, 5)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'036e00b9-09e9-411a-9b9b-74f90f9a1289', N'Question_Number_6', 1, 0, NULL, NULL, NULL, NULL, NULL, 6)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'732fc020-8ac2-40ae-9d22-00d36f034552', N'Question_Number_7', 1, 0, NULL, NULL, NULL, NULL, NULL, 7)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'89eed492-d117-4c42-a4b2-ab88cfb109df', N'Question_Number_8', 1, 0, NULL, NULL, NULL, NULL, NULL, 8)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'2042a60d-1894-49e7-a194-77c24917f2c1', N'Question_Number_9', 1, 0, NULL, NULL, NULL, NULL, NULL, 9)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'470bae4e-0cb4-443d-9d75-ca91fdd81ce8', N'Question_Number_10', 1, 0, NULL, NULL, NULL, NULL, NULL, 10)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'c57e2ec2-4114-43c4-99fe-80ef9e0b8c11', N'Question_Number_11', 1, 0, NULL, NULL, NULL, NULL, NULL, 11)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'fd247bfd-3269-4425-a9a9-1239901611b7', N'Question_Number_12', 1, 0, NULL, NULL, NULL, NULL, NULL, 12)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'087a3c5b-ebff-4f96-ba7d-ffede847e09c', N'Question_Number_13', 1, 0, NULL, NULL, NULL, NULL, NULL, 13)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'a8201224-ddd8-4fc1-9573-82e754eb5ce1', N'Question_Number_14', 1, 0, NULL, NULL, NULL, NULL, NULL, 14)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'e30524f4-5799-4fcd-ac86-9098571303a6', N'Question_Number_15', 1, 0, NULL, NULL, NULL, NULL, NULL, 15)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'c48320ec-763f-48be-a689-8840f26cb5d6', N'Question_Number_16', 1, 0, NULL, NULL, NULL, NULL, NULL, 16)
INSERT [dbo].[IzendaSecurityQuestion] ([Id], [Question], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [TenantId], [OrderNumber]) VALUES (N'20cfa68c-5398-46cf-acf8-b1c2bff297c5', N'Question_Number_17', 1, 0, NULL, NULL, NULL, NULL, NULL, 17)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'f887cbd0-5ba0-4345-bcb7-02acd600cffe', N'WebAPIUrl', N'http://localhost:9999/api/', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9670328e-505a-46de-9226-0303afadde6a', N'FiscalYear', N'10/01', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'aa099dbc-da5c-5ea1-cba3-100d3ecf6e31', N'LicenseExpiredWarningTrial', N'4', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e834da5d-6a19-485b-95e1-2190df0f545c', N'HelpSystemUrl', N'http://www.izenda.com', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e834da5d-6a19-485b-95e1-2190df0f545d', N'TokenTimeout', N'20', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'463f5f94-9895-490e-8a7c-611c9487262c', N'DeploymentMode', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'463f5f94-9895-490e-8a7c-611c9487262e', N'AuthValidateAccessTokenUrl', N'http://localhost:3358/api/Account/validateIzendaAuthToken', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'463f5f94-9895-490e-8a7c-611c9487262f', N'AuthGetAccessTokenUrl', N'http://localhost:3358/api/Account/GetIzendaAccessToken', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'bb408fec-ec4b-4ef3-bbe2-702a2faa9c64', N'LicenseExpiredWarningPeriod', N'14', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ed4ed91-7c3e-4200-ad2c-77d7f25a139a', N'CommonFilterSetting', N'0', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6ed4ed91-7c3e-4200-ad2c-77d7f25a139b', N'TracingType', N'3', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'88b9161a-d411-45f4-b5cd-793853f2dfb0', N'LicenseWebAPIUrl', N'https://licensing.izenda.com/', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd4b18b29-5c8b-4ccf-95cc-8241acb5ca75', N'ExportConversionDelay', N'5', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'b08778b0-28a2-449c-a859-8966a34cb45d', N'WebUrl', N'http://localhost:4200', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8d721bfc-2dac-460f-ac9e-90e288d1dd87', N'SubscriptionJobInterval', N'5', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8d721bfc-2dac-460f-ac9e-90e288d1dd89', N'ApiSecretToken', N'FF388608-8BE6-45E4-AC43-F11D6454161D', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1f9c13ca-fea4-467b-9a76-a17122821fe6', N'AuthRSAPublicKey', N'<RSAKeyValue><Modulus>rF0xAx3elTdRSt4Bk6c0wRalhjejr00XLIv3T8Wagcx9QqboU46+l+BXD1xmBm0WCmxjsZSpnjTAIAigWQ7EhPnZGD/kNHIuFnGW0HsorGA/E9+6FQXYAQMeF6iclI+JUKgsNQm8p8QRFG93pllMQalnePbdF/cR/5d0XXq8Jec=</Modulus><Exponent>AQAB</Exponent></RSAKeyValue>', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'deb69225-e4a1-4533-9b29-a44f2eea8487', N'AllowDuplicateUser', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'deb69225-e4a1-4533-9b29-a44f2eea8488', N'StoredProcParamDelimiter', N',', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2afc3bac-2daf-4487-9a90-a5c65ccd7a14', N'PageSize', N'A4', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'391617ea-f8d5-4325-b5cd-b385422a1e28', N'SystemMode', N'0', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e285bfd1-f8d5-4beb-a345-b3d2ef5a3de9', N'LostConnectionAllowPeriod', N'96', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'6f526e3e-057b-41d5-bcc9-b7ca12f6feb3', N'CustomFunctionFilePath', N'', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'373747ea-bc6f-4806-b8f6-bb5d422a1942', N'RefreshTokenPeriod', N'60', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'939ee27b-8919-4af0-809a-bc59484e420f', N'ReportAdvancedMode', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'852a16e9-bcff-42f4-95b4-cee36342887a', N'InsertBatchSize', N'10000', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'422c180e-315d-400f-94d1-d4a11ed08c31', N'CommandTimeout', N'500', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'95bd32f7-44f6-4a19-b8f4-d54c160389e0', N'ReportSettingJobInterval', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'a3c4a8c2-9f6b-4035-8f3b-d6c2a7b9ec7a', N'EvoLicenseKey', N'mhQHFQAFFQMMFQMbBRUGBBsEBxsMDAwMFQU=', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'2f0984b3-2b68-49fb-b807-d969af6057cf', N'HasCreatePermissionOnReportingDatabase', N'1', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'921bac25-be9c-4b5f-a58a-f60390a2e481', N'ExportNavigationTimeout', N'60', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemSetting] ([Id], [Name], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'ad563930-216e-4a3a-b866-fd6d0dadcd89', N'ProvisionStaticDataStatus', N'0', NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'e6992cf1-0977-4d46-89c5-00627345a785', N'{dashboardLink}', N'Text', N'', 3)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'9499412c-8a0d-4b0c-81c0-009f830f3f3f', N'{embedDashboardHTML}', N'Lob', N'', 3)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'1b2d9a6e-2e78-4ad8-a4a8-0232277b8c6c', N'{dashboardName}', N'Text', N'', 3)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'5cd4d4be-96d9-4c30-8680-04bd602bccd7', N'{reportName}', N'Text', N'', 2)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'b22170b0-48a6-45fa-8254-04be7843b9f9', N'{currentDateTime}', N'Text', N'', 0)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'18a820bf-9c48-465d-83ef-05511ab491cf', N'{currentUserName}', N'Text', N'', 0)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'e3dcd547-d9ac-417d-b42e-056358bf508c', N'{tenantName}', N'Text', N'', 0)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'0645098c-cb7c-4da5-aa98-059eb8fbdc16', N'{reportLink}', N'Text', N'', 2)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'6e204246-c212-4115-805b-0628d89c8ce2', N'{embedReportHTML}', N'Lob', N'', 2)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'673ad95a-7cc3-4a7e-b3d0-0643913359de', N'{recipientName}', N'Text', N'', 1)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'd557fbd4-a9f4-4c5a-9ca5-068d7c01dd53', N'{pageNumber}', N'', N'', 4)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'4809565f-b163-46f6-9f3a-069b6a21d2d7', N'{horizontalRule}', N'', N'', 4)
INSERT [dbo].[IzendaSystemVariable] ([Id], [Name], [DataType], [Description], [Scope]) VALUES (N'feed98d6-5860-473d-a6d3-06f87ad7d549', N'{verticalRule}', N'', N'', 4)
INSERT [dbo].[IzendaTemporaryData] ([Id], [ObjectId], [ObjectData], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'38b55984-624a-4f0b-8bf9-bcf2b61f0ac8', N'38b55984-624a-4f0b-8bf9-bcf2b61f0ac8', N'{"Inaccessible":false,"Category":{"Name":"","Type":1,"ParentId":null,"TenantId":null,"CanDelete":false,"Editable":false,"Savable":false,"SubCategories":[],"Checked":false,"Reports":null,"Dashboards":null,"Id":null,"State":0,"Deleted":false,"Inserted":true,"Version":null,"Created":null,"CreatedBy":"System Admin","Modified":null,"ModifiedBy":null},"SubCategory":{"Name":"","Type":1,"ParentId":null,"TenantId":null,"CanDelete":false,"Editable":false,"Savable":false,"SubCategories":[],"Checked":false,"Reports":null,"Dashboards":null,"Id":null,"State":0,"Deleted":false,"Inserted":true,"Version":null,"Created":null,"CreatedBy":"System Admin","Modified":null,"ModifiedBy":null},"ReportRelationship":[],"ReportPart":[],"ReportFilter":{"FilterFields":[],"Logic":"","Visible":false,"ReportId":"38b55984-624a-4f0b-8bf9-bcf2b61f0ac8","Id":"f5dfef80-1fa1-427a-bd13-dc2f4b7df89e","State":0,"Deleted":false,"Inserted":true,"Version":null,"Created":null,"CreatedBy":"System Admin","Modified":null,"ModifiedBy":null},"CalculatedFields":[],"Accesses":[],"Schedules":[],"DynamicQuerySourceFields":[],"Name":"Example Report Name","ReportDataSource":[{"ReportId":"38b55984-624a-4f0b-8bf9-bcf2b61f0ac8","QuerySourceId":"599094e5-3b5c-454a-8510-7a087bb721e8","QuerySourceCategoryId":null,"ConnectionId":null,"Selected":true,"Id":"a8ddb2d8-d1c4-483e-9286-1305f4750525","State":1,"Deleted":false,"Inserted":false,"Version":null,"Created":null,"CreatedBy":"System Admin","Modified":null,"ModifiedBy":null}],"Type":1,"PreviewRecord":10,"AdvancedMode":true,"AllowNulls":false,"IsDistinct":false,"CategoryId":null,"CategoryName":null,"SubCategoryId":null,"SubCategoryName":null,"TenantId":null,"TenantName":null,"Description":"","Title":"","LastViewed":null,"Owner":"System Admin","OwnerId":"9d2f1d51-0e3d-44db-bfc7-da94a7581bfe","ExcludedRelationships":"","NumberOfView":0,"RenderingTime":0.0,"CreatedById":"9d2f1d51-0e3d-44db-bfc7-da94a7581bfe","ModifiedById":"9d2f1d51-0e3d-44db-bfc7-da94a7581bfe","SnapToGrid":false,"UsingFields":null,"HasDeletedObjects":false,"Header":{"visible":false,"items":[{"isDirty":false,"type":"image","label":"Image","id":"formatDetails_41","positionX":0,"positionY":0,"width":6,"height":6,"name":"Logo Image","value":"","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","imageUrl":"http://","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_42","positionX":20,"positionY":0,"width":12,"height":2,"name":"Report Name","value":"{reportName}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"thinHorizontalRule","label":"Horizontal Rule","id":"formatDetails_43","positionX":20,"positionY":4,"width":12,"height":1,"name":"Upper Separator Line","value":"{horizontalRule}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":2},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_44","positionX":20,"positionY":5,"width":6,"height":2,"name":"Report Generated","value":"Report Generated:","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_45","positionX":20,"positionY":7,"width":6,"height":2,"name":"User","value":"User:","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_46","positionX":20,"positionY":9,"width":6,"height":2,"name":"Tenant","value":"Tenant:","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"dateTime","label":"Date Time","id":"formatDetails_47","positionX":26,"positionY":5,"width":6,"height":2,"name":"Current Date Time","value":"{currentDateTime}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_48","positionX":26,"positionY":7,"width":6,"height":2,"name":"Current User Name","value":"{currentUserName}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_49","positionX":26,"positionY":9,"width":6,"height":2,"name":"Tenant Name","value":"{tenantName}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"horizontalRule","label":"Horizontal Rule","id":"formatDetails_50","positionX":0,"positionY":11,"width":32,"height":1,"name":"Lower Separator Line","value":"{horizontalRule}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":4}]},"Footer":{"visible":false,"items":[{"isDirty":false,"type":"horizontalRule","label":"Horizontal Rule","id":"formatDetails_51","positionX":0,"positionY":0,"width":32,"height":1,"name":"Separator Line","value":"{horizontalRule}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":4},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_52","positionX":0,"positionY":1,"width":10,"height":2,"name":"Footer Text","value":"Footer Text","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"text","label":"Text","id":"formatDetails_53","positionX":20,"positionY":1,"width":4,"height":2,"name":"Page","value":"Page","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"pageNumber","label":"Page Number","id":"formatDetails_54","positionX":24,"positionY":1,"width":8,"height":2,"name":"Page Number","value":"{pageNumber}","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1}]},"TitleDescription":{"visible":false,"items":[{"isDirty":false,"type":"title","label":"Title","id":"formatDetails_55","name":"Title","value":"","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1},{"isDirty":false,"type":"description","label":"Description","id":"formatDetails_56","name":"Description","value":"","font":{"family":"Roboto","size":14,"bold":false,"italic":false,"underline":false,"color":"#000","backgroundColor":"#fff"},"color":"#000","dashStyle":"solid","thickness":1}]},"SourceId":null,"Checked":false,"CopyDashboard":false,"ExportFormatSetting":{"Orientation":0,"Margins":0,"CenterOnPage":{"Horizontally":false,"Vertically":false},"PageBreakAfterReportPart":false,"MarginSettings":[{"Type":3,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.7,"RightValue":0.7,"HeaderValue":0.3,"FooterValue":0.3},{"Type":0,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.7,"RightValue":0.7,"HeaderValue":0.3,"FooterValue":0.3},{"Type":1,"TopValue":0.75,"BottomValue":0.75,"LeftValue":0.25,"RightValue":0.25,"HeaderValue":0.3,"FooterValue":0.3},{"Type":2,"TopValue":1.0,"BottomValue":1.0,"LeftValue":1.0,"RightValue":1.0,"HeaderValue":0.5,"FooterValue":0.5}]},"Deletable":false,"Editable":false,"Movable":false,"Copyable":false,"AccessPriority":0,"Active":false,"Id":"38b55984-624a-4f0b-8bf9-bcf2b61f0ac8","State":1,"Deleted":false,"Inserted":false,"Version":0,"Created":null,"CreatedBy":"System Admin","Modified":null,"ModifiedBy":"System Admin"}', 2, 0, CAST(N'2017-05-04T18:59:16.607' AS DateTime), N'System Admin', CAST(N'2017-05-04T18:59:16.850' AS DateTime), NULL)
INSERT [dbo].[IzendaTenant] ([Id], [TenantID], [Name], [Description], [Active], [Deleted], [Modules], [PermissionData], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', N'NATWR', N'NATWR', NULL, 1, 0, N'BmZhwZ3vKEtTmgObjTle1H1APHMVXW+vb4fZ91rzIWhuYuh4QkvOJq/fuN0suj431MyuPtnX2p8HtLKDMxfdYIVrSjoQfg1V45TC/R1Afk8/vftc+kLSx0ZTrJGMXOgVARYkzU2alGteCdp2V8AilNrs/50V9yxtuStcZfLMPB5VytfV1b0CgAgVQ2wE/Cdv', '{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":true,"tenantAccess":1},"tenantAccess":1},"dataSetup":{"dataConnectors":{"value":true,"tenantAccess":1},"dataModel":{"customView":{"create":true,"edit":true,"delete":true,"tenantAccess":1},"value":true,"tenantAccess":1},"advancedSettings":{"category":true,"others":true,"tenantAccess":1},"import":{"value":true,"tenantAccess":1},"tenantAccess":1},"userSetup":{"userRoleAssociation":{"value":true,"tenantAccess":1},"actions":{"create":true,"edit":true,"del":true,"configureSecurityOptions":true,"tenantAccess":1},"tenantAccess":1},"roleSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":1},"dataModelAccess":{"value":true,"tenantAccess":1},"permissions":{"value":true,"tenantAccess":1},"grantRoleWithFullReportAndDashboardAccess":{"value":true,"tenantAccess":1},"tenantAccess":1},"reports":{"canCreateNewReport":{"value":true,"tenantAccess":1},"dataSources":{"simpleDataSources":false,"advancedDataSources":true,"tenantAccess":1},"reportPartTypes":{"chart":true,"form":true,"gauge":true,"map":true,"tenantAccess":1,"isFullReportPartTypesPermission":true,"isEnableGoogleAddress":true},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":1},"categoryAccessibility":{"categories":[],"tenantAccess":1}},"filterProperties":{"filterLogic":true,"crossFiltering":true,"tenantAccess":1,"isFullFilterPropertiesPermission":true},"fieldProperties":{"customURL":true,"embeddedJavaScript":true,"subreport":true,"tenantAccess":1,"isFullFieldPropertiesPermission":true},"actions":{"schedule":true,"email":true,"viewReportHistory":true,"del":true,"registerForAlerts":true,"print":true,"unarchiveReportVersions":true,"overwriteExistingReport":true,"subscribe":true,"exporting":true,"configureAccessRights":true,"tenantAccess":1,"isFullPermission":true},"tenantAccess":1},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":1},"permissions":{"value":false,"tenantAccess":1},"tenantAccess":1},"dashboards":{"canCreateNewDashboard":{"value":true,"tenantAccess":1},"displayDashboardTileHeader":{"value":true,"tenantAccess":1},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":1},"categoryAccessibility":{"categories":[],"tenantAccess":1}},"actions":{"schedule":true,"email":true,"del":true,"subscribe":true,"print":true,"exporting":true,"overwriteExistingDashboard":true,"configureAccessRights":true,"tenantAccess":1,"isFullActionsPermission":true},"tenantAccess":1},"access":{"accessLimits":{"value":[],"tenantAccess":1},"accessDefaults":{"value":[],"tenantAccess":1},"tenantAccess":1},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":1},"schedulingScope":{"systemUsers":true,"externalUsers":true,"tenantAccess":1},"tenantAccess":1},"emailing":{"deliveryMethod":{"link":true,"embeddedHTML":true,"attachment":true,"tenantAccess":1},"attachmentType":{"word":true,"excel":true,"pdf":true,"csv":true,"xml":true,"json":true,"definition":true,"tenantAccess":1},"tenantAccess":1},"exporting":{"exportingFormat":{"word":true,"excel":true,"pdf":true,"iframe":true,"csv":true,"xml":true,"json":true,"queryExecution":true,"definition":true,"tenantAccess":1},"tenantAccess":1},"systemwide":{"canSeeSystemMessages":{"value":true,"tenantAccess":1},"tenantAccess":1},"accessLimitsTree":[],"schedulingLimitsTree":[]}', 1, CAST(N'2017-01-18T09:52:32.040' AS DateTime), N'System Admin', CAST(N'2017-01-18T09:52:32.040' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaTenant] ([Id], [TenantID], [Name], [Description], [Active], [Deleted], [Modules], [PermissionData], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', N'DELDG', N'DELDG', NULL, 1, 0, N'BmZhwZ3vKEtTmgObjTle1H1APHMVXW+vb4fZ91rzIWhuYuh4QkvOJq/fuN0suj431MyuPtnX2p8HtLKDMxfdYIVrSjoQfg1V45TC/R1Afk8/vftc+kLSx0ZTrJGMXOgVARYkzU2alGteCdp2V8AilNrs/50V9yxtuStcZfLMPB5VytfV1b0CgAgVQ2wE/Cdv', '{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":true,"tenantAccess":1},"tenantAccess":1},"dataSetup":{"dataConnectors":{"value":true,"tenantAccess":1},"dataModel":{"customView":{"create":true,"edit":true,"delete":true,"tenantAccess":1},"value":true,"tenantAccess":1},"advancedSettings":{"category":true,"others":true,"tenantAccess":1},"import":{"value":true,"tenantAccess":1},"tenantAccess":1},"userSetup":{"userRoleAssociation":{"value":true,"tenantAccess":1},"actions":{"create":true,"edit":true,"del":true,"configureSecurityOptions":true,"tenantAccess":1},"tenantAccess":1},"roleSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":1},"dataModelAccess":{"value":true,"tenantAccess":1},"permissions":{"value":true,"tenantAccess":1},"grantRoleWithFullReportAndDashboardAccess":{"value":true,"tenantAccess":1},"tenantAccess":1},"reports":{"canCreateNewReport":{"value":true,"tenantAccess":1},"dataSources":{"simpleDataSources":false,"advancedDataSources":true,"tenantAccess":1},"reportPartTypes":{"chart":true,"form":true,"gauge":true,"map":true,"tenantAccess":1,"isFullReportPartTypesPermission":true,"isEnableGoogleAddress":true},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":1},"categoryAccessibility":{"categories":[],"tenantAccess":1}},"filterProperties":{"filterLogic":true,"crossFiltering":true,"tenantAccess":1,"isFullFilterPropertiesPermission":true},"fieldProperties":{"customURL":true,"embeddedJavaScript":true,"subreport":true,"tenantAccess":1,"isFullFieldPropertiesPermission":true},"actions":{"schedule":true,"email":true,"viewReportHistory":true,"del":true,"registerForAlerts":true,"print":true,"unarchiveReportVersions":true,"overwriteExistingReport":true,"subscribe":true,"exporting":true,"configureAccessRights":true,"tenantAccess":1,"isFullPermission":true},"tenantAccess":1},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":1},"permissions":{"value":false,"tenantAccess":1},"tenantAccess":1},"dashboards":{"canCreateNewDashboard":{"value":true,"tenantAccess":1},"displayDashboardTileHeader":{"value":true,"tenantAccess":1},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":1},"categoryAccessibility":{"categories":[],"tenantAccess":1}},"actions":{"schedule":true,"email":true,"del":true,"subscribe":true,"print":true,"exporting":true,"overwriteExistingDashboard":true,"configureAccessRights":true,"tenantAccess":1,"isFullActionsPermission":true},"tenantAccess":1},"access":{"accessLimits":{"value":[],"tenantAccess":1},"accessDefaults":{"value":[],"tenantAccess":1},"tenantAccess":1},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":1},"schedulingScope":{"systemUsers":true,"externalUsers":true,"tenantAccess":1},"tenantAccess":1},"emailing":{"deliveryMethod":{"link":true,"embeddedHTML":true,"attachment":true,"tenantAccess":1},"attachmentType":{"word":true,"excel":true,"pdf":true,"csv":true,"xml":true,"json":true,"definition":true,"tenantAccess":1},"tenantAccess":1},"exporting":{"exportingFormat":{"word":true,"excel":true,"pdf":true,"iframe":true,"csv":true,"xml":true,"json":true,"queryExecution":true,"definition":true,"tenantAccess":1},"tenantAccess":1},"systemwide":{"canSeeSystemMessages":{"value":true,"tenantAccess":1},"tenantAccess":1},"accessLimitsTree":[],"schedulingLimitsTree":[]}', 1, CAST(N'2017-01-18T09:43:57.917' AS DateTime), N'System Admin', CAST(N'2017-01-18T09:43:57.917' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaTenant] ([Id], [TenantID], [Name], [Description], [Active], [Deleted], [Modules], [PermissionData], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', N'RETCL', N'RETCL', NULL, 1, 0, N'BmZhwZ3vKEtTmgObjTle1H1APHMVXW+vb4fZ91rzIWhuYuh4QkvOJq/fuN0suj431MyuPtnX2p8HtLKDMxfdYIVrSjoQfg1V45TC/R1Afk8/vftc+kLSx0ZTrJGMXOgVARYkzU2alGteCdp2V8AilNrs/50V9yxtuStcZfLMPB5VytfV1b0CgAgVQ2wE/Cdv', '{"systemAdmin":false,"fullReportAndDashboardAccess":false,"limitedAccess":false,"systemConfiguration":{"scheduledInstances":{"value":true,"tenantAccess":1},"tenantAccess":1},"dataSetup":{"dataConnectors":{"value":true,"tenantAccess":1},"dataModel":{"customView":{"create":true,"edit":true,"delete":true,"tenantAccess":1},"value":true,"tenantAccess":1},"advancedSettings":{"category":true,"others":true,"tenantAccess":1},"import":{"value":true,"tenantAccess":1},"tenantAccess":1},"userSetup":{"userRoleAssociation":{"value":true,"tenantAccess":1},"actions":{"create":true,"edit":true,"del":true,"configureSecurityOptions":true,"tenantAccess":1},"tenantAccess":1},"roleSetup":{"actions":{"create":true,"edit":true,"del":true,"tenantAccess":1},"dataModelAccess":{"value":true,"tenantAccess":1},"permissions":{"value":true,"tenantAccess":1},"grantRoleWithFullReportAndDashboardAccess":{"value":true,"tenantAccess":1},"tenantAccess":1},"reports":{"canCreateNewReport":{"value":true,"tenantAccess":1},"dataSources":{"simpleDataSources":false,"advancedDataSources":true,"tenantAccess":1},"reportPartTypes":{"chart":true,"form":true,"gauge":true,"map":true,"tenantAccess":1,"isFullReportPartTypesPermission":true,"isEnableGoogleAddress":true},"reportCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":1},"categoryAccessibility":{"categories":[],"tenantAccess":1}},"filterProperties":{"filterLogic":true,"crossFiltering":true,"tenantAccess":1,"isFullFilterPropertiesPermission":true},"fieldProperties":{"customURL":true,"embeddedJavaScript":true,"subreport":true,"tenantAccess":1,"isFullFieldPropertiesPermission":true},"actions":{"schedule":true,"email":true,"viewReportHistory":true,"del":true,"registerForAlerts":true,"print":true,"unarchiveReportVersions":true,"overwriteExistingReport":true,"subscribe":true,"exporting":true,"configureAccessRights":true,"tenantAccess":1,"isFullPermission":true},"tenantAccess":1},"tenantSetup":{"actions":{"create":false,"edit":false,"del":false,"tenantAccess":1},"permissions":{"value":false,"tenantAccess":1},"tenantAccess":1},"dashboards":{"canCreateNewDashboard":{"value":true,"tenantAccess":1},"displayDashboardTileHeader":{"value":true,"tenantAccess":1},"dashboardCategoriesSubcategories":{"canCreateNewCategory":{"value":true,"tenantAccess":1},"categoryAccessibility":{"categories":[],"tenantAccess":1}},"actions":{"schedule":true,"email":true,"del":true,"subscribe":true,"print":true,"exporting":true,"overwriteExistingDashboard":true,"configureAccessRights":true,"tenantAccess":1,"isFullActionsPermission":true},"tenantAccess":1},"access":{"accessLimits":{"value":[],"tenantAccess":1},"accessDefaults":{"value":[],"tenantAccess":1},"tenantAccess":1},"scheduling":{"schedulingLimits":{"value":[],"tenantAccess":1},"schedulingScope":{"systemUsers":true,"externalUsers":true,"tenantAccess":1},"tenantAccess":1},"emailing":{"deliveryMethod":{"link":true,"embeddedHTML":true,"attachment":true,"tenantAccess":1},"attachmentType":{"word":true,"excel":true,"pdf":true,"csv":true,"xml":true,"json":true,"definition":true,"tenantAccess":1},"tenantAccess":1},"exporting":{"exportingFormat":{"word":true,"excel":true,"pdf":true,"iframe":true,"csv":true,"xml":true,"json":true,"queryExecution":true,"definition":true,"tenantAccess":1},"tenantAccess":1},"systemwide":{"canSeeSystemMessages":{"value":true,"tenantAccess":1},"tenantAccess":1},"accessLimitsTree":[],"schedulingLimitsTree":[]}', 1, CAST(N'2017-01-18T09:57:33.943' AS DateTime), N'System Admin', CAST(N'2017-01-18T09:57:33.943' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'b8ef8ad0-7a90-4f70-b3f3-52cbaf518335', N'In the Future', N'Long-term Period', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'dae256be-21d4-45c1-8d34-52cf05ba7cf5', N'In the Past', N'Long-term Period', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'1559a72d-22a1-4c8e-b3b4-53414e5b7ff5', N'Current Fiscal Year', N'Fiscal Year', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'4c35be45-4b5e-4fc2-931f-53acf34bf7dd', N'Previous Fiscal Year', N'Fiscal Year', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'7aad066f-fbcc-4494-9343-54a803244fa0', N'Next Fiscal Year', N'Fiscal Year', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'6bc051a5-85a1-401e-b5bb-55480ec6485e', N'Current and Previous Fiscal Year', N'Fiscal Year', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'f1e19c1e-0970-4b3a-b1fa-5561efc783e5', N'Current and Next Fiscal Year', N'Fiscal Year', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'52cc45ab-3d7c-4814-a237-55d43b41b385', N'Current Fiscal Quarter', N'Fiscal Quarter', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'f64ee3b3-0f5d-4ac4-a0db-561cfed6d00c', N'Current and Next Fiscal Quarter', N'Fiscal Quarter', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'4a689982-d21e-41a8-9ee6-565b6e23985a', N'Current and Previous Fiscal Quarter', N'Fiscal Quarter', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'eaae70a0-ce64-45df-9a43-5737bb110bd4', N'Next Fiscal Quarter', N'Fiscal Quarter', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'35e57b59-a63b-47bb-80d8-574b9e7fd4b0', N'Previous Fiscal Quarter', N'Fiscal Quarter', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'd41cf2a0-41ec-4e62-a9bd-57916b9ea6bc', N'Current & Next 3 Fiscal Quarter', N'Fiscal Quarter', N'0&1&2&3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'fa1b763b-206f-42f7-a99b-597d7c97582e', N'Current Year', N'Calendar Year', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'eedd820b-3a54-47a1-8c6e-59fc077464dd', N'Previous Year', N'Calendar Year', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'bfd892b0-f905-48e1-9766-5a894da73115', N'Current Calendar Quarter', N'Calendar Quarter', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'ebe01191-9c66-4324-9fc2-5aa7497ba130', N'Current & Next Calendar Quarter', N'Calendar Quarter', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'12a7ff3a-cbe0-437b-b0f0-5bb731c69a40', N'Current & Previous Calendar Quarter', N'Calendar Quarter', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'ad5dcad5-cf2f-4207-82f1-5bcdde289ed1', N'Next Calendar Quarter', N'Calendar Quarter', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'5497b872-bf2f-4e2a-9e69-5c6b4a5917ce', N'Previous Calendar Quarter', N'Calendar Quarter', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'66716758-155f-46a2-a03d-5ca2e2d31894', N'Current & Next 3 Calendar Quarter', N'Calendar Quarter', N'0&1&2&3', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'007f892b-1de2-4bcb-b0c4-5d0a91007a54', N'Last Month', N'Calendar Month', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'3a94dc2b-e390-4226-b28b-5d20cdd07d17', N'This Month', N'Calendar Month', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'39e5d006-df2b-4c53-b137-5d930a527247', N'Next Month', N'Calendar Month', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'115a294e-e0ed-405b-82fc-5ee4083bb7bc', N'Current & Previous Month', N'Calendar Month', N'0&-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'36552d12-b977-433f-a5ed-5f052abe5d94', N'Current & Next Month', N'Calendar Month', N'0&1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'1773cbcb-7b8b-4e08-a0dd-5f27cb0eb0d8', N'Last Week', N'Calendar Week', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'de89026f-f5f2-4914-98d8-5fbb626d5ec6', N'This Week', N'Calendar Week', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'edab4b2d-86c9-415b-8c9f-60cab8356ba6', N'Next Week', N'Calendar Week', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'607596fd-1e09-4dba-a929-611b0e729522', N'Today', N'Day', N'0', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'110ac414-0c3b-4b16-879e-6249bbdc7751', N'Yesterday', N'Day', N'-1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'fe7e33d7-3b51-4727-b759-62f891153987', N'Tomorrow', N'Day', N'1', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'fac2ee3e-0a31-4322-876c-642e4cbb17a6', N'Last 7 Days', N'Day', N'-7', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'10c3733c-6743-4e94-b78a-651da8594689', N'Last 30 Days', N'Day', N'-30', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'655b7087-cf4d-4065-ad5b-65296e678db9', N'Last 60 Days', N'Day', N'-60', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'94290104-b096-48a1-90d2-657e0fd6fc22', N'Last 90 Days', N'Day', N'-90', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'cbf65ffb-5fd4-499c-8034-65c709af533c', N'Last 120 Days', N'Day', N'-120', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'20b7a28b-6a09-4bb1-9400-65c863f19c56', N'Next 7 Days', N'Day', N'7', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'013781da-925b-4cd7-a75b-67ef1f58252a', N'Next 30 Days', N'Day', N'30', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'bc00ee20-b7c6-47eb-8233-686e9813da32', N'Next 60 Days', N'Day', N'60', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'2cb2bd5b-5228-470c-8ef7-68e8cc030f61', N'Next 90 Days', N'Day', N'90', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'5a0b0b87-e153-4047-97d7-6934bd0742e2', N'Next 120 Days', N'Day', N'120', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaTimePeriod] ([Id], [Name], [Type], [Value], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsCustomFilter]) VALUES (N'923fc0dd-6d08-483b-a9f9-6a2997698f1b', N'Next and Last 30 Days', N'Day', N'-30&30', NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'e0222644-a1d3-4be2-b198-371a10b4405e', N'manager@retcl.com', N'RETCL', N'manager', NULL, NULL, N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', 1, CAST(N'2017-01-18T10:14:15.063' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:14:15.063' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'75d7fad0-bc12-4bf2-9da3-845defb20c4c', N'manager@deldg.com', N'DELDG', N'manager', NULL, NULL, N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', 1, CAST(N'2017-01-18T10:10:17.183' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:10:17.183' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'964380f8-c160-420b-8014-9e7a30c4133c', N'employee@deldg.com', N'DELDG', N'employee', NULL, NULL, N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', 1, CAST(N'2017-01-18T10:19:01.830' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:19:01.830' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'f5cdcb20-acf3-4885-9523-bdcd5a241532', N'employee@natwr.com', N'NATWR', N'employee', NULL, NULL, N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', 1, CAST(N'2017-01-18T10:19:34.693' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:19:34.693' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'43f3ef07-6e8f-4063-945e-cd95a24f16f6', N'VP@natwr.com', N'NATWR', N'VP', NULL, NULL, N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', 1, CAST(N'2017-01-18T10:13:18.610' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:13:18.610' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'9d2f1d51-0e3d-44db-bfc7-da94a7581bfe', N'IzendaAdmin@system.com', N'System', N'Admin', N'Ni44BUzGHfooivlGlIa6KSvWgH8V17dTCzled+nfTo2WNns6JJRa8dDT+KTWawe5veauvEB/NAiwnZA6KfdfJQ==', N'shKEvBNweSW0VLSX6Q==', NULL, 1, NULL, NULL, CAST(N'2017-05-04T17:25:56.410' AS DateTime), NULL, NULL, N'q6B65LsmzjOdVIqzGsxLDixLWI8G6HLJxoNqTRKBASiLPw/EWD82OtyYUyc9VCEY/PkT5a7z1pGa6hJP16EHMA==', 1, 0, 0, 0, 1, 0, CAST(N'2017-05-04T17:25:56.410' AS DateTime), NULL, NULL, NULL, NULL, N'MM/DD/YYYY', 1, NULL, 0)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'6df0a31a-edfb-4946-a68c-e09bef0b9986', N'vp@retcl.com', N'RETCL', N'vp', NULL, NULL, N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', 1, CAST(N'2017-01-18T10:15:08.637' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:15:08.637' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'1c9c159d-6b9a-4573-a359-fc442f0479e2', N'employee@retcl.com', N'RETCL', N'employee', NULL, NULL, N'1fd07dcd-509d-403c-a8c5-9f82e06c7994', 1, CAST(N'2017-01-18T09:58:05.473' AS DateTime), N'System Admin', CAST(N'2017-01-18T09:58:05.473' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'238c21c4-9d58-44b2-9b80-fe0b43985ca3', N'vp@deldg.com', N'DELDG', N'vp', NULL, NULL, N'9dd5ae29-bdb9-4520-ba35-643d4ccc1708', 1, CAST(N'2017-01-18T10:10:53.373' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:10:53.373' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUser] ([Id], [UserName], [FirstName], [LastName], [PasswordHash], [PasswordSalt], [TenantId], [Version], [Created], [CreatedBy], [Modified], [ModifiedBy], [EmailAddress], [CurrentTokenHash], [Active], [Deleted], [DataOffset], [TimestampOffset], [InitPassword], [RetryLoginTime], [LastTimeAccessed], [PasswordLastChanged], [Locked], [LockedDate], [CultureName], [DateFormat], [SystemAdmin], [SecurityQuestionLastChanged], [NumberOfFailedSecurityQuestion]) VALUES (N'e6a26135-c2c4-4f1d-b73a-fe3f60d528e6', N'manager@natwr.com', N'NATWR', N'manager', NULL, NULL, N'314bf0e1-1e69-4e2d-870e-4829bb4aa46c', 1, CAST(N'2017-01-18T10:11:53.280' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:11:53.280' AS DateTime), N'System Admin', NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'295b333e-1c17-4b9f-8552-01a47724bd7c', N'43f3ef07-6e8f-4063-945e-cd95a24f16f6', N'a1ee5831-8d4b-41b6-82b3-875cc130a6b7', 1, 0, CAST(N'2017-01-18T10:13:18.620' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:13:18.620' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'3ee1bb81-0fbb-4899-bd64-1ef1717700b6', N'238c21c4-9d58-44b2-9b80-fe0b43985ca3', N'98610244-a53a-42e8-ad8c-c6441b1d8cf7', 1, 0, CAST(N'2017-01-18T10:10:53.393' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:10:53.393' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'04a1e738-1e69-47dd-bd1e-32099c10f59e', N'6df0a31a-edfb-4946-a68c-e09bef0b9986', N'58970b43-aa4e-4b9d-8231-f0b0beecf6a8', 1, 0, CAST(N'2017-01-18T10:15:08.643' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:15:08.643' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'e4e12a71-1865-4ca3-921c-381ae8334728', N'964380f8-c160-420b-8014-9e7a30c4133c', N'8bca651c-892a-418b-a654-5e2602983eb9', 1, 0, CAST(N'2017-01-18T10:19:01.873' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:19:01.873' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'7ecee832-a92a-4962-a01d-3971abac696b', N'75d7fad0-bc12-4bf2-9da3-845defb20c4c', N'40c2ecc3-2023-4a18-8977-ad2e94f589f1', 1, 0, CAST(N'2017-01-18T10:10:17.197' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:10:17.197' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'8e905bf2-f227-4640-ba84-4993cfcdc25d', N'6e74060d-d5a1-42f7-885c-9935e0205c6b', N'ee8fb4ee-7349-47d6-9e7c-7c0e79dd9d85', 1, 0, CAST(N'2017-01-18T10:09:03.847' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:09:03.847' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'18f08642-70a2-47aa-80d5-58269407c52f', N'e6a26135-c2c4-4f1d-b73a-fe3f60d528e6', N'ae3b0326-9dde-42a3-919b-417faf8a5313', 1, 0, CAST(N'2017-01-18T10:11:53.290' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:11:53.290' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'253293ec-809d-4b78-a3d8-7a8ecec8b28e', N'1c9c159d-6b9a-4573-a359-fc442f0479e2', N'801639d2-5c72-4131-a46d-ab9229cfb071', 1, 0, CAST(N'2017-01-18T09:58:05.480' AS DateTime), N'System Admin', CAST(N'2017-01-18T09:58:05.480' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'18621979-2e15-4535-9480-a2c52506b9fb', N'f5cdcb20-acf3-4885-9523-bdcd5a241532', N'30029181-34bb-4179-870e-0c4f21d1d937', 1, 0, CAST(N'2017-01-18T10:19:34.703' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:19:34.703' AS DateTime), N'System Admin')
INSERT [dbo].[IzendaUserRole] ([Id], [UserId], [RoleId], [Version], [Deleted], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'd07b14c8-294d-4888-bd88-ebc49f5c5583', N'e0222644-a1d3-4be2-b198-371a10b4405e', N'38cc1643-9144-4582-ab1f-9b8957217fea', 1, 0, CAST(N'2017-01-18T10:14:15.070' AS DateTime), N'System Admin', CAST(N'2017-01-18T10:14:15.070' AS DateTime), N'System Admin')
/****** Object:  Index [QuerySourceFieldIndex]    Script Date: 5/5/2017 1:40:38 PM ******/
CREATE NONCLUSTERED INDEX [QuerySourceFieldIndex] ON [dbo].[IzendaQuerySourceField]
(
	[Deleted] ASC,
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IzendaFilterField]  WITH CHECK ADD  CONSTRAINT [FK_IzendaFilterField_IzendaFilterOperator] FOREIGN KEY([OperatorId])
REFERENCES [dbo].[IzendaFilterOperator] ([Id])
GO
ALTER TABLE [dbo].[IzendaFilterField] CHECK CONSTRAINT [FK_IzendaFilterField_IzendaFilterOperator]
GO
ALTER TABLE [dbo].[IzendaFilterField]  WITH CHECK ADD  CONSTRAINT [FK_IzendaFilterField_IzendaReportFilter] FOREIGN KEY([FilterId])
REFERENCES [dbo].[IzendaReportFilter] ([Id])
GO
ALTER TABLE [dbo].[IzendaFilterField] CHECK CONSTRAINT [FK_IzendaFilterField_IzendaReportFilter]
GO
ALTER TABLE [dbo].[IzendaFilterOperator]  WITH CHECK ADD  CONSTRAINT [FK_IzendaFilterOperator_IzendaFilterOperatorGroup] FOREIGN KEY([OperatorGroupId])
REFERENCES [dbo].[IzendaFilterOperatorGroup] ([Id])
GO
ALTER TABLE [dbo].[IzendaFilterOperator] CHECK CONSTRAINT [FK_IzendaFilterOperator_IzendaFilterOperatorGroup]
GO
ALTER TABLE [dbo].[IzendaQuerySource]  WITH CHECK ADD  CONSTRAINT [FK_IzendaQuerySource_IzendaDataSourceCategory] FOREIGN KEY([DataSourceCategoryId])
REFERENCES [dbo].[IzendaDataSourceCategory] ([Id])
GO
ALTER TABLE [dbo].[IzendaQuerySource] CHECK CONSTRAINT [FK_IzendaQuerySource_IzendaDataSourceCategory]
GO
ALTER TABLE [dbo].[IzendaQuerySource]  WITH CHECK ADD  CONSTRAINT [FK_QuerySource_QuerySourceCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[IzendaQuerySourceCategory] ([Id])
GO
ALTER TABLE [dbo].[IzendaQuerySource] CHECK CONSTRAINT [FK_QuerySource_QuerySourceCategory]
GO
ALTER TABLE [dbo].[IzendaQuerySourceCategory]  WITH CHECK ADD  CONSTRAINT [FK_QuerySourceCategory_Connection] FOREIGN KEY([ConnectionId])
REFERENCES [dbo].[IzendaConnection] ([Id])
GO
ALTER TABLE [dbo].[IzendaQuerySourceCategory] CHECK CONSTRAINT [FK_QuerySourceCategory_Connection]
GO
ALTER TABLE [dbo].[IzendaReportFilter]  WITH CHECK ADD  CONSTRAINT [FK_IzendaReportFilter_IzendaReport] FOREIGN KEY([ReportId])
REFERENCES [dbo].[IzendaReport] ([Id])
GO
ALTER TABLE [dbo].[IzendaReportFilter] CHECK CONSTRAINT [FK_IzendaReportFilter_IzendaReport]
GO
ALTER TABLE [dbo].[IzendaWorkspaceMapping]  WITH CHECK ADD  CONSTRAINT [FK_IzendaWorkspaceMapping_IzendaWorkspace] FOREIGN KEY([WorkspaceId])
REFERENCES [dbo].[IzendaWorkspace] ([Id])
GO
ALTER TABLE [dbo].[IzendaWorkspaceMapping] CHECK CONSTRAINT [FK_IzendaWorkspaceMapping_IzendaWorkspace]
GO
ALTER TABLE [dbo].[IzendaWorkspaceMappingTenant]  WITH CHECK ADD  CONSTRAINT [FK_WorkspaceMappingTenant_IzendaWorkspaceMapping] FOREIGN KEY([WorkspaceMappingId])
REFERENCES [dbo].[IzendaWorkspaceMapping] ([Id])
GO
ALTER TABLE [dbo].[IzendaWorkspaceMappingTenant] CHECK CONSTRAINT [FK_WorkspaceMappingTenant_IzendaWorkspaceMapping]
GO
ALTER TABLE [dbo].[IzendaWorkspaceTenant]  WITH CHECK ADD  CONSTRAINT [FK_IzendaWorkspaceTenant_IzendaWorkspace] FOREIGN KEY([WorkspaceId])
REFERENCES [dbo].[IzendaWorkspace] ([Id])
GO
ALTER TABLE [dbo].[IzendaWorkspaceTenant] CHECK CONSTRAINT [FK_IzendaWorkspaceTenant_IzendaWorkspace]
GO
USE [master]
GO
ALTER DATABASE [Izenda_Config] SET  READ_WRITE 
GO

-- ##################################
-- Izenda Schema Migration Script From v1.25.0 To v2.4.4
-- Database Type: [MSSQL] SQLServer
-- ##################################

USE [Izenda_Config]
GO

-- ========================================================
-- v1.25.1
-- ========================================================
UPDATE IzendaDBVersion SET Version= '1.25.1';


-- ========================================================
-- v1.25.2
-- ========================================================
UPDATE IzendaDBVersion SET Version= '1.25.2';


-- ========================================================
-- v1.25.3
-- ========================================================
UPDATE IzendaDBVersion SET Version= '1.25.3';


-- ========================================================
-- v1.25.4
-- ========================================================
-- Remove ar, fr languages
DELETE IzendaLanguage WHERE Id = '15f7bd94-ae10-4fd7-91ed-cae10da3bd9d';

DELETE IzendaLanguage WHERE Id = 'de80459f-cd0a-4443-93c4-a3f87eb0a78f';

UPDATE IzendaDBVersion SET Version= '1.25.4';


-- ========================================================
-- v2.0.0
-- ========================================================
------ Table Report -----------------
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaReport' AND COLUMN_NAME='Params')
BEGIN
	ALTER TABLE IzendaReport ADD Params nvarchar (max) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaReport' AND COLUMN_NAME='Relationships')
BEGIN
	ALTER TABLE IzendaReport ADD Relationships nvarchar (max) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaReport' AND COLUMN_NAME='UsingFieldNames')
BEGIN
	ALTER TABLE IzendaReport ADD UsingFieldNames nvarchar (max) NULL
END

---------- Table IzendaReportDataSource --------------
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaReportDataSource' AND COLUMN_NAME='QuerySourceUniqueName')
BEGIN
	ALTER TABLE IzendaReportDataSource ADD QuerySourceUniqueName nvarchar (256) NULL
END

ALTER TABLE IzendaReportDataSource ALTER COLUMN QuerySourceId uniqueidentifier NULL

------------- Table IzendaFilterField --------------------------

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaFilterField' AND COLUMN_NAME='QuerySourceUniqueName')
BEGIN
	ALTER TABLE IzendaFilterField ADD QuerySourceUniqueName nvarchar (256) NULL
END


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaFilterField' AND COLUMN_NAME='QuerySourceFieldName')
BEGIN
	ALTER TABLE IzendaFilterField ADD QuerySourceFieldName nvarchar (256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaFilterField' AND COLUMN_NAME='ComparisonFieldUniqueName')
BEGIN
	ALTER TABLE IzendaFilterField ADD ComparisonFieldUniqueName nvarchar (256) NULL
END

----------------------------------------------------------------

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaReport' AND COLUMN_NAME='IsGlobal')
BEGIN
	ALTER TABLE IzendaReport ADD IsGlobal bit NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaReportCategory' AND COLUMN_NAME='IsGlobal')
BEGIN
	ALTER TABLE IzendaReportCategory ADD IsGlobal bit NULL
END

GO

Update IzendaReport SET IsGlobal ='0' WHERE IsGlobal IS NULL
Update IzendaReportCategory SET IsGlobal ='0' WHERE IsGlobal IS NULL AND (Type = '0' OR Type ='1')


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaReportSetting' AND COLUMN_NAME='LocalCategoryName')
BEGIN
	ALTER TABLE IzendaReportSetting ADD LocalCategoryName nvarchar(256) NULL
END


IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaReportSetting' AND COLUMN_NAME='GlobalCategoryName')
BEGIN
	ALTER TABLE IzendaReportSetting ADD GlobalCategoryName nvarchar(256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaDashboard' AND COLUMN_NAME='IsGlobal')
BEGIN
	ALTER TABLE IzendaDashboard ADD IsGlobal bit NULL
END

GO

Update IzendaDashboard SET IsGlobal ='0' WHERE IsGlobal IS NULL
Update IzendaReportCategory SET IsGlobal ='0' WHERE IsGlobal IS NULL AND Type = '2'

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaUserPermission' AND COLUMN_NAME='AssignedToNames')
BEGIN
	ALTER TABLE IzendaUserPermission ADD AssignedToNames nvarchar(max) NULL
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaGlobalDatabaseMapping]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaGlobalDatabaseMapping]
	(
		[Id] [uniqueidentifier] PRIMARY KEY,
		[FromServer] [nvarchar](256) NULL,
		[ToServer] [nvarchar](256) NULL,
		[FromDatabaseName] [nvarchar](256) NULL,
		[Type] [int] NULL,
		[FromObject] [nvarchar](256) NULL,
		[ToDatabaseName] [nvarchar](256) NULL,
		[ToObject] [nvarchar](256) NULL,
		[SelectAllTenants] [bit] NULL,		
		[TenantIds] [nvarchar](max) NULL,
		[Version] [int] NULL,
		[Deleted] [bit] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	)
END

IF EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData DROP CONSTRAINT PK_IzendaTemporaryData
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
	WHERE  TABLE_NAME='IzendaTemporaryData' AND COLUMN_NAME='TenantId')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD TenantId uniqueidentifier NULL
END

-- Remove ar, fr languages
DELETE IzendaLanguage WHERE Id = '15f7bd94-ae10-4fd7-91ed-cae10da3bd9d'

DELETE IzendaLanguage WHERE Id = 'de80459f-cd0a-4443-93c4-a3f87eb0a78f'


UPDATE IzendaDBVersion SET Version= '2.0.0';


-- ========================================================
-- v2.0.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.0.1';


-- ========================================================
-- v2.0.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.0.2';


-- ========================================================
-- v2.0.3
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JointField_ForeignField' /* Index */
	)
	PRINT 'IX_Relationship_JointField_ForeignField exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JointField_ForeignField] ON [dbo].[IzendaRelationship]
	(
		[JoinFieldId] ASC,
		[ForeignFieldId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JQS_FQS_RPT_DEL_SR' /* Index */
	)
	PRINT 'IX_Relationship_JQS_FQS_RPT_DEL_SR exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JQS_FQS_RPT_DEL_SR] ON [dbo].[IzendaRelationship]
	(
		[JoinQuerySourceId] ASC,
		[ForeignQuerySourceId] ASC,
		[SystemRelationship] ASC,
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_Report_DEL' /* Index */
	)
	PRINT 'IX_Relationship_Report_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_Report_DEL] ON [dbo].[IzendaRelationship]
	(
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Reletionship_Alias' /* Index */
	)
	PRINT 'IX_Reletionship_Alias exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Reletionship_Alias] ON [dbo].[IzendaRelationship]
	(
		[Alias] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Name_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Name_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Name_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[Name] ASC,
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportHistory' /* Table */
        AND si.name='IX_ReportHistory_Modified_DEL' /* Index */
	)
	PRINT 'IX_ReportHistory_Modified_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportHistory_Modified_DEL] ON [dbo].[IzendaReportHistory]
	(
		[Modified] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportPart' /* Table */
        AND si.name='IX_ReportPart_RPT' /* Index */
	)
	PRINT 'IX_ReportPart_RPT exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportPart_RPT] ON [dbo].[IzendaReportPart]
	(
		[ReportID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.0.3';


-- ========================================================
-- v2.0.4
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JointField_ForeignField' /* Index */
	)
	PRINT 'IX_Relationship_JointField_ForeignField exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JointField_ForeignField] ON [dbo].[IzendaRelationship]
	(
		[JoinFieldId] ASC,
		[ForeignFieldId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JQS_FQS_RPT_DEL_SR' /* Index */
	)
	PRINT 'IX_Relationship_JQS_FQS_RPT_DEL_SR exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JQS_FQS_RPT_DEL_SR] ON [dbo].[IzendaRelationship]
	(
		[JoinQuerySourceId] ASC,
		[ForeignQuerySourceId] ASC,
		[SystemRelationship] ASC,
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_Report_DEL' /* Index */
	)
	PRINT 'IX_Relationship_Report_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_Report_DEL] ON [dbo].[IzendaRelationship]
	(
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Reletionship_Alias' /* Index */
	)
	PRINT 'IX_Reletionship_Alias exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Reletionship_Alias] ON [dbo].[IzendaRelationship]
	(
		[Alias] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Name_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Name_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Name_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[Name] ASC,
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportHistory' /* Table */
        AND si.name='IX_ReportHistory_Modified_DEL' /* Index */
	)
	PRINT 'IX_ReportHistory_Modified_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportHistory_Modified_DEL] ON [dbo].[IzendaReportHistory]
	(
		[Modified] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportPart' /* Table */
        AND si.name='IX_ReportPart_RPT' /* Index */
	)
	PRINT 'IX_ReportPart_RPT exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportPart_RPT] ON [dbo].[IzendaReportPart]
	(
		[ReportID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.0.4';


-- ========================================================
-- v2.0.5
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JointField_ForeignField' /* Index */
	)
	PRINT 'IX_Relationship_JointField_ForeignField exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JointField_ForeignField] ON [dbo].[IzendaRelationship]
	(
		[JoinFieldId] ASC,
		[ForeignFieldId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JQS_FQS_RPT_DEL_SR' /* Index */
	)
	PRINT 'IX_Relationship_JQS_FQS_RPT_DEL_SR exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JQS_FQS_RPT_DEL_SR] ON [dbo].[IzendaRelationship]
	(
		[JoinQuerySourceId] ASC,
		[ForeignQuerySourceId] ASC,
		[SystemRelationship] ASC,
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_Report_DEL' /* Index */
	)
	PRINT 'IX_Relationship_Report_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_Report_DEL] ON [dbo].[IzendaRelationship]
	(
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Reletionship_Alias' /* Index */
	)
	PRINT 'IX_Reletionship_Alias exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Reletionship_Alias] ON [dbo].[IzendaRelationship]
	(
		[Alias] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Name_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Name_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Name_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[Name] ASC,
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportHistory' /* Table */
        AND si.name='IX_ReportHistory_Modified_DEL' /* Index */
	)
	PRINT 'IX_ReportHistory_Modified_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportHistory_Modified_DEL] ON [dbo].[IzendaReportHistory]
	(
		[Modified] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportPart' /* Table */
        AND si.name='IX_ReportPart_RPT' /* Index */
	)
	PRINT 'IX_ReportPart_RPT exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportPart_RPT] ON [dbo].[IzendaReportPart]
	(
		[ReportID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.0.5';


-- ========================================================
-- v2.0.6
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JointField_ForeignField' /* Index */
	)
	PRINT 'IX_Relationship_JointField_ForeignField exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JointField_ForeignField] ON [dbo].[IzendaRelationship]
	(
		[JoinFieldId] ASC,
		[ForeignFieldId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JQS_FQS_RPT_DEL_SR' /* Index */
	)
	PRINT 'IX_Relationship_JQS_FQS_RPT_DEL_SR exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JQS_FQS_RPT_DEL_SR] ON [dbo].[IzendaRelationship]
	(
		[JoinQuerySourceId] ASC,
		[ForeignQuerySourceId] ASC,
		[SystemRelationship] ASC,
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_Report_DEL' /* Index */
	)
	PRINT 'IX_Relationship_Report_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_Report_DEL] ON [dbo].[IzendaRelationship]
	(
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Reletionship_Alias' /* Index */
	)
	PRINT 'IX_Reletionship_Alias exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Reletionship_Alias] ON [dbo].[IzendaRelationship]
	(
		[Alias] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Name_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Name_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Name_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[Name] ASC,
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportHistory' /* Table */
        AND si.name='IX_ReportHistory_Modified_DEL' /* Index */
	)
	PRINT 'IX_ReportHistory_Modified_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportHistory_Modified_DEL] ON [dbo].[IzendaReportHistory]
	(
		[Modified] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;


IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportPart' /* Table */
        AND si.name='IX_ReportPart_RPT' /* Index */
	)
	PRINT 'IX_ReportPart_RPT exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportPart_RPT] ON [dbo].[IzendaReportPart]
	(
		[ReportID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.0.6';


-- ========================================================
-- v2.1.0
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JointField_ForeignField' /* Index */
	)
	PRINT 'IX_Relationship_JointField_ForeignField exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JointField_ForeignField] ON [dbo].[IzendaRelationship]
	(
		[JoinFieldId] ASC,
		[ForeignFieldId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_JQS_FQS_RPT_DEL_SR' /* Index */
	)
	PRINT 'IX_Relationship_JQS_FQS_RPT_DEL_SR exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_JQS_FQS_RPT_DEL_SR] ON [dbo].[IzendaRelationship]
	(
		[JoinQuerySourceId] ASC,
		[ForeignQuerySourceId] ASC,
		[SystemRelationship] ASC,
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Relationship_Report_DEL' /* Index */
	)
	PRINT 'IX_Relationship_Report_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Relationship_Report_DEL] ON [dbo].[IzendaRelationship]
	(
		[ReportId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaRelationship' /* Table */
        AND si.name='IX_Reletionship_Alias' /* Index */
	)
	PRINT 'IX_Reletionship_Alias exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Reletionship_Alias] ON [dbo].[IzendaRelationship]
	(
		[Alias] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Name_Category_SUB_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Name_Category_SUB_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Name_Category_SUB_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[Name] ASC,
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_Report_Tenant_Type_DEL' /* Index */
	)
	PRINT 'IX_Report_Tenant_Type_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Report_Tenant_Type_DEL] ON [dbo].[IzendaReport]
	(
		[TenantId] ASC,
		[Type] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportHistory' /* Table */
        AND si.name='IX_ReportHistory_Modified_DEL' /* Index */
	)
	PRINT 'IX_ReportHistory_Modified_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportHistory_Modified_DEL] ON [dbo].[IzendaReportHistory]
	(
		[Modified] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportPart' /* Table */
        AND si.name='IX_ReportPart_RPT' /* Index */
	)
	PRINT 'IX_ReportPart_RPT exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_ReportPart_RPT] ON [dbo].[IzendaReportPart]
	(
		[ReportID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaQuerySourceField' /* Table */
        AND si.name='IX_QuerySourceField_DeletedAndQuerySourceId' /* Index */
	)
	PRINT 'IX_QuerySourceField_DeletedAndQuerySourceId exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_QuerySourceField_DeletedAndQuerySourceId] ON [dbo].[IzendaQuerySourceField]
	(
		[Deleted] ASC,
		QuerySourceId ASC		
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportHistory' /* Table */
        AND si.name='IX_IzendaReportHistory' /* Index */
	)
	PRINT 'IX_IzendaReportHistory exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportHistory] ON [dbo].[IzendaReportHistory]
	(
		[Deleted] ASC,
		[ReportID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource] ON [dbo].[IzendaReportDataSource]
	(
		[Deleted] ASC,
		[ReportId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReport' /* Table */
        AND si.name='IX_IzendaReport' /* Index */
	)
	PRINT 'IX_IzendaReport exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReport] ON [dbo].[IzendaReport]
	(
		[Deleted] ASC,
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaUser' /* Table */
        AND si.name='IX_IzendaUser' /* Index */
	)
	PRINT 'IX_IzendaUser exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaUser] ON [dbo].[IzendaUser]
	(
		[Deleted] ASC,
		[Username] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaReportCategory' AND COLUMN_NAME='CreatedById')
BEGIN
	ALTER TABLE IzendaReportCategory ADD CreatedById uniqueidentifier NULL
END

UPDATE IzendaDBVersion SET Version= '2.1.0';


-- ========================================================
-- v2.1.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.1.1';


-- ========================================================
-- v2.1.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.1.2';


-- ========================================================
-- v2.1.3
-- ========================================================

UPDATE IzendaFilterOperator SET AllowParameter=1 WHERE Id IN ('496BE89B-305A-4B5E-A361-C2CC8124DC69',
'F7E3CEF8-5B60-4A72-87C7-CCA6452A4C31')

UPDATE IzendaDBVersion SET Version= '2.1.3';


-- ========================================================
-- v2.1.4
-- ========================================================

UPDATE IzendaFilterOperator SET AllowParameter=1 WHERE Id IN ('496BE89B-305A-4B5E-A361-C2CC8124DC69',
'F7E3CEF8-5B60-4A72-87C7-CCA6452A4C31')

UPDATE IzendaDBVersion SET Version= '2.1.4';


-- ========================================================
-- v2.1.5
-- ========================================================

UPDATE IzendaFilterOperator SET AllowParameter=1 WHERE Id IN ('496BE89B-305A-4B5E-A361-C2CC8124DC69',
'F7E3CEF8-5B60-4A72-87C7-CCA6452A4C31')


IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '852A16E9-BCFF-42F4-95B4-CEE36342887B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('852A16E9-BCFF-42F4-95B4-CEE36342887B','RollbackSPWhenLoadSchema','1','0')
END

UPDATE IzendaDBVersion SET Version= '2.1.5';


-- ========================================================
-- v2.2.0
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaDashboard' /* Table */
        AND si.name='IX_Dashboard_Category_SUB_Tenant_DEL' /* Index */
	)
	PRINT 'IX_Dashboard_Category_SUB_Tenant_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Dashboard_Category_SUB_Tenant_DEL] ON [dbo].[IzendaDashboard]
	(
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaDashboard' /* Table */
        AND si.name='IX_Dashboard_Name_Category_SUB_Tenant_DEL' /* Index */
	)
	PRINT 'IX_Dashboard_Name_Category_SUB_Tenant_DEL exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_Dashboard_Name_Category_SUB_Tenant_DEL] ON [dbo].[IzendaDashboard]
	(
		[Name] ASC,
		[CategoryId] ASC,
		[SubCategoryId] ASC,
		[TenantId] ASC,
		[Deleted] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaConnection' AND COLUMN_NAME='ServerTypeName')
BEGIN
	ALTER TABLE IzendaConnection ADD ServerTypeName nvarchar(256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaConnection' AND COLUMN_NAME='DatabaseName')
BEGIN
	ALTER TABLE IzendaConnection ADD DatabaseName nvarchar(256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaConnection' AND COLUMN_NAME='DatabaseServer')
BEGIN
	ALTER TABLE IzendaConnection ADD DatabaseServer nvarchar(256) NULL
END

UPDATE IzendaFilterOperator SET AllowParameter=1 WHERE Id IN ('496BE89B-305A-4B5E-A361-C2CC8124DC69',
'F7E3CEF8-5B60-4A72-87C7-CCA6452A4C31')

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '852A16E9-BCFF-42F4-95B4-CEE36342887B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('852A16E9-BCFF-42F4-95B4-CEE36342887B','RollbackSPWhenLoadSchema','1','0')
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaFilterField' AND COLUMN_NAME='IsNegative')
BEGIN
	ALTER TABLE IzendaFilterField ADD IsNegative bit NULL
END

UPDATE IzendaDBVersion SET Version= '2.2.0';





-- ========================================================
-- v2.2.1
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.2.1';



-- ========================================================
-- v2.2.2
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.2.2';



-- ========================================================
-- v2.2.3
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.2.3';



-- ========================================================
-- v2.2.4
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.2.4';



-- ========================================================
-- v2.2.5
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.2.5';



-- ========================================================
-- v2.2.6
-- ========================================================
UPDATE IzendaQuerySourceField SET AllowDistinct = '1' WHERE AllowDistinct = '0' AND IzendaDataType IN ('Text', 'Datetime', 'Money', 'Boolean', 'Time', 'Numeric')

UPDATE IzendaDBVersion SET Version= '2.2.6';



-- ========================================================
-- v2.3.0
-- ========================================================
--IzendaFilterOperator
-- FilterOperatorGroup: '...'

IF (OBJECT_ID('FK_IzendaFilterField_IzendaFilterOperator', 'F') IS NOT NULL)
BEGIN
    ALTER TABLE IzendaFilterField DROP CONSTRAINT FK_IzendaFilterField_IzendaFilterOperator
END

DELETE FROM IzendaFilterOperator;

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('1476ed4b-17ac-4e39-be1b-0a25f705ebea','...','','95051abc-70eb-4908-8d13-04032aab3c66', 1, 0, '0');

-- FilterOperatorGroup: 'Comparison'

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('f8a69ec3-bc01-40fd-8dc1-0b7a259ee83e','...','','08b322e2-ac79-406d-8367-046437b4fcd9',20,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('6bac46ba-768f-4764-9109-0bc2736bcbfd','Blank','=','08b322e2-ac79-406d-8367-046437b4fcd9',30,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('ce0fda8a-4515-409c-9d00-0bf56c2b4c4d','Not Blank','=','08b322e2-ac79-406d-8367-046437b4fcd9',40,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('f15ff59e-837b-415b-9191-4392944f3ad4','Null','=','08b322e2-ac79-406d-8367-046437b4fcd9',41,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('588c8b41-afa5-45e7-9a00-188125fa20b1','Not Null','=','08b322e2-ac79-406d-8367-046437b4fcd9',42,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('b78305b3-70f4-4724-a02c-1617a0ef95d3','Is Less Than','<','08b322e2-ac79-406d-8367-046437b4fcd9',50,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('53d73892-3a12-45cd-8b69-163ff6c41989','Is Greater Than','>','08b322e2-ac79-406d-8367-046437b4fcd9',60,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('94c4fb2e-c5d3-4160-a2f7-173418ca4e66','Between','Between','08b322e2-ac79-406d-8367-046437b4fcd9',70,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('9fe2afd6-8fb6-4a34-b2e2-1822323af768','Not Less Than','>=','08b322e2-ac79-406d-8367-046437b4fcd9',80,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('0526507d-901b-4d41-8c4b-1831f90b180c','Not Greater Than','<=','08b322e2-ac79-406d-8367-046437b4fcd9',90,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('6ea8396b-49e3-4ed2-b9b6-18c1a737cffc','Not Between','Not Between','08b322e2-ac79-406d-8367-046437b4fcd9',100,0, '0');

-- FilterOperatorGroup: 'Equivalence'

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('0f043b65-e45d-4c22-9634-0da9e96493bc','...','','e023c1f4-42b3-469b-a8d9-04684feeb4ed',110,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('d7096bd5-09e5-433d-924e-0e038bdc81fb','Blank','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',120,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('85252e31-7588-438f-85ff-0e0e9c16df8d','Not Blank','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',130,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('ae1af3eb-d1cc-4c27-90e3-97a2903581fc','Null','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',131,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('6383bdd3-73bd-4c0f-97c7-f41553b3d5da','Not Null','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',132,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('737307d1-1e5f-407f-889f-1b3c9a66dd6f','Equals (Manual Entry)','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',140,1, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('042a04a3-dfe1-4ef9-bd27-1b657886f02e','Equals (Selection)','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',150,1, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('bb2f8e2d-753e-4fc9-9646-1b977a043b9a','Equals (Popup)','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',160,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('003c0e13-cc3c-412f-8fee-1cf21aa51e31','Equals (Tree)','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',170,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('5ce630bc-6615-42c4-b11e-1d09c651eaae','Equals (Checkbox)','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',180,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('78ba4663-e8a4-407f-bab2-1dc014a4df56','Not Equal (Manual Entry)','<>','e023c1f4-42b3-469b-a8d9-04684feeb4ed',190,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('75fcf433-81f2-4767-94b7-1e4257b826c4','Not Equal (Selection)','<>','e023c1f4-42b3-469b-a8d9-04684feeb4ed',200,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('5cdacf39-8eed-4ed3-8684-1e4461e85e1b','Not Equal (Popup)','<>','e023c1f4-42b3-469b-a8d9-04684feeb4ed',210,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('de9ab97b-4e57-4c8c-8415-1e5030415b50','Not Equal (Checkbox)','<>','e023c1f4-42b3-469b-a8d9-04684feeb4ed',220,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('6bc89182-aa4c-4fa5-b151-208af7e8cd59','Not Equal (Tree)','<>','e023c1f4-42b3-469b-a8d9-04684feeb4ed',230,0, '0');

-- FilterOperatorGroup: 'Field Comparison'

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('444b32e1-5ba5-4829-a8dc-0e3a0e6a69f3','...','','6938e8a8-c810-4044-be0b-05709faa4734',240,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('83849954-987f-4213-b5b3-0febf0251d5c','Blank','=','6938e8a8-c810-4044-be0b-05709faa4734',250,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('38a333fb-39cf-424c-bbaf-1043600ca055','Not Blank','=','6938e8a8-c810-4044-be0b-05709faa4734',260,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('12d4c133-96dd-422c-90c7-1b0e02e0bdc1','Null','=','6938e8a8-c810-4044-be0b-05709faa4734',261,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('ed9b3b36-26fc-4b2b-a696-2d5a4322427e','Not Null','=','6938e8a8-c810-4044-be0b-05709faa4734',262,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('c506759f-c000-46c3-a35a-21b7d5bbd447','Is Less Than (Field)','<','6938e8a8-c810-4044-be0b-05709faa4734',270,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('de669d47-d040-494c-91d9-21df45009964','Is Greater Than (Field)','>','6938e8a8-c810-4044-be0b-05709faa4734',280,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('ecd32d5d-32ce-493e-8f9f-225647357325','Equals (Field)','=','6938e8a8-c810-4044-be0b-05709faa4734',290,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('1e9fbb61-8a77-48a6-b95e-2357646360a5','Not Equal (Field)','<>','6938e8a8-c810-4044-be0b-05709faa4734',300,0, '0');
	
-- FilterOperatorGroup: 'Date & Time'	

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('27a17b83-4b6a-4700-91a7-10558ef6ab23','...','','01076b28-8e77-4a54-95d8-060d142a77e6',310,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('98e2ec4a-f34f-4bf1-b2b2-108fbec8fa5b','Blank','=','01076b28-8e77-4a54-95d8-060d142a77e6',320,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('63f26c6a-f763-4947-8517-10fd79de5e2a','Not Blank','=','01076b28-8e77-4a54-95d8-060d142a77e6',330,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('ab2712b7-5016-448f-88cb-422848d22424','Null','=','01076b28-8e77-4a54-95d8-060d142a77e6',331,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('c3344c6c-3dd1-40d7-a68e-70dd9e89001a','Not Null','=','01076b28-8e77-4a54-95d8-060d142a77e6',332,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('26f4e86e-26cb-497a-98c0-bc194bc785ac','Between (Date)','Between (Date)','01076b28-8e77-4a54-95d8-060d142a77e6',340,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('78376aea-4d3c-4e8d-ab97-25c6c249be62','Between (Date & Time)','Between (Date & Time)','01076b28-8e77-4a54-95d8-060d142a77e6',350,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('3f2378bd-4470-48f8-b951-6ca0ff2baac7','Between (Time)','Between (Time)','01076b28-8e77-4a54-95d8-060d142a77e6',360,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('e830fbc3-cb92-4251-ad9f-3a84fd99fcb2','Not Between (Date)','Not Between (Date)','01076b28-8e77-4a54-95d8-060d142a77e6',370,0, 0);

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('5522a5d7-0456-432b-b1fb-02a4283baa3d','Not Between (Date & Time)','Not Between (Date & Time)','01076b28-8e77-4a54-95d8-060d142a77e6',380,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('b8f665e9-9753-4716-9d6e-688df6dccae4','Not Between (Time)','Not Between (Time)','01076b28-8e77-4a54-95d8-060d142a77e6',390,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('496be89b-305a-4b5e-a361-c2cc8124dc69','Equals (Date)','=','01076b28-8e77-4a54-95d8-060d142a77e6',400,1, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('cb64b1fd-6dec-4b18-b348-02b5b984e6c6','Equals (Date & Time)','=','01076b28-8e77-4a54-95d8-060d142a77e6',410,1, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('f7e3cef8-5b60-4a72-87c7-cca6452a4c31','Equals (Time)','=','01076b28-8e77-4a54-95d8-060d142a77e6',420,1, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('fbd954e2-bebf-4892-9b90-4134fce1f6dc','Not Equal (Date)','<>','01076b28-8e77-4a54-95d8-060d142a77e6',430,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('4d68d4a2-05ac-4f24-8496-02c1cfe75460','Not Equal (Date & Time)','<>','01076b28-8e77-4a54-95d8-060d142a77e6',440,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('ec661dc4-12bf-4ce8-8691-cb2bd94c7888','Not Equal (Time)','<>','01076b28-8e77-4a54-95d8-060d142a77e6',450,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('f6b2f9d3-464d-4399-bfd2-265009d3fcf1','In Time Period','=','01076b28-8e77-4a54-95d8-060d142a77e6',460,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('05f7ea30-001d-4779-ad3b-2732ed97d61e','Less Than Days Old','<','01076b28-8e77-4a54-95d8-060d142a77e6',470,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('1c6b9fbd-6377-4c8b-9acc-286ff0e853c5','Greater Than Days Old','>','01076b28-8e77-4a54-95d8-060d142a77e6',480,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('a8d45242-f5f0-4839-ae98-287ddc178c96','Equals Days Old','=','01076b28-8e77-4a54-95d8-060d142a77e6',490,0, '0');

-- FilterOperatorGroup: 'String'

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('97040a0e-7c33-4088-90ac-1146428428df','...','','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',500,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('c16bc286-3238-4a36-85e5-123eb989bee8','Blank','=','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',510,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('966019de-d541-4ee4-9235-125732abb75a','Not Blank','=','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',520,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('e62a6e5b-b25c-4567-8a5a-0d42ee223de3','Null','=','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',521,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('fb22a60c-72b1-4f3b-bdca-dfab8402fc80','Not Null','=','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',522,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('3396325a-4233-4180-8513-2bb991627800','Like','Like','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',530,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('0ac3a76f-cf80-4cd7-8cfd-2c74fadb330a','Begins With','Begins With','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',540,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('09b9b1ba-21c5-4f05-808c-2cae6cca56d9','Ends With','Ends With','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',550,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('30dd377c-5217-4665-8896-2d61efc73cfc','Not Like','Not Like','c1b10232-6c6f-4bd5-91a1-09317a2b2e67',560,0, '0');

-- FilterOperatorGroup: 'Boolean'

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('a52e09eb-8867-45e5-88bc-12ba9434f16f','...','','7b127c0c-4996-4df8-aa72-09cf07569f5e',570,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('c77e5ab6-890d-4bf6-8773-13cc9c3bf67e','Blank','=','7b127c0c-4996-4df8-aa72-09cf07569f5e',580,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('a8339c19-7b65-4ee7-8ef4-13e340fba2e9','Not Blank','=','7b127c0c-4996-4df8-aa72-09cf07569f5e',590,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('bcf08dfe-ea7c-4eee-bb91-4217d2bf67db','Null','=','7b127c0c-4996-4df8-aa72-09cf07569f5e',591,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('30467a1f-b54a-4d1a-a7ef-fde70e4c5274','Not Null','=','7b127c0c-4996-4df8-aa72-09cf07569f5e',592,0, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('31d3e116-bde2-40d1-b259-2d750348299c','True','=','7b127c0c-4996-4df8-aa72-09cf07569f5e',600,1, '0');

INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('086dc2fc-23e3-4b54-bc46-2e5f572d2d3f','False','=','7b127c0c-4996-4df8-aa72-09cf07569f5e',610,1, '0');

--IzendaFilterOperatorRule

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'f15ff59e-837b-415b-9191-4392944f3ad4';

DELETE FROM IzendaFilterOperatorRule WHERE Id = '588c8b41-afa5-45e7-9a00-188125fa20b1';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'ae1af3eb-d1cc-4c27-90e3-97a2903581fc';

DELETE FROM IzendaFilterOperatorRule WHERE Id = '6383bdd3-73bd-4c0f-97c7-f41553b3d5da';

DELETE FROM IzendaFilterOperatorRule WHERE Id = '12d4c133-96dd-422c-90c7-1b0e02e0bdc1';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'ed9b3b36-26fc-4b2b-a696-2d5a4322427e';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'ab2712b7-5016-448f-88cb-422848d22424';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'c3344c6c-3dd1-40d7-a68e-70dd9e89001a';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'e62a6e5b-b25c-4567-8a5a-0d42ee223de3';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'fb22a60c-72b1-4f3b-bdca-dfab8402fc80';

DELETE FROM IzendaFilterOperatorRule WHERE Id = 'bcf08dfe-ea7c-4eee-bb91-4217d2bf67db';

DELETE FROM IzendaFilterOperatorRule WHERE Id = '30467a1f-b54a-4d1a-a7ef-fde70e4c5274';

	-- Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('f15ff59e-837b-415b-9191-4392944f3ad4', 'f15ff59e-837b-415b-9191-4392944f3ad4', 1, 0, '0');
	-- Not Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('588c8b41-afa5-45e7-9a00-188125fa20b1', '588c8b41-afa5-45e7-9a00-188125fa20b1', 1, 0, '0');

	-- Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('ae1af3eb-d1cc-4c27-90e3-97a2903581fc', 'ae1af3eb-d1cc-4c27-90e3-97a2903581fc', 1, 0, '0');
	-- Not Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('6383bdd3-73bd-4c0f-97c7-f41553b3d5da', '6383bdd3-73bd-4c0f-97c7-f41553b3d5da', 1, 0, '0');

	-- Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('12d4c133-96dd-422c-90c7-1b0e02e0bdc1', '12d4c133-96dd-422c-90c7-1b0e02e0bdc1', 1, 0, '0');
	-- Not Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('ed9b3b36-26fc-4b2b-a696-2d5a4322427e', 'ed9b3b36-26fc-4b2b-a696-2d5a4322427e', 1, 0, '0');

	-- Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('ab2712b7-5016-448f-88cb-422848d22424', 'ab2712b7-5016-448f-88cb-422848d22424', 1, 0, '0');
	-- Not Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('c3344c6c-3dd1-40d7-a68e-70dd9e89001a', 'c3344c6c-3dd1-40d7-a68e-70dd9e89001a', 1, 0, '0');

	-- Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('e62a6e5b-b25c-4567-8a5a-0d42ee223de3', 'e62a6e5b-b25c-4567-8a5a-0d42ee223de3', 1, 0, '0');
	-- Not Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('fb22a60c-72b1-4f3b-bdca-dfab8402fc80', 'fb22a60c-72b1-4f3b-bdca-dfab8402fc80', 1, 0, '0');

	-- Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('bcf08dfe-ea7c-4eee-bb91-4217d2bf67db', 'bcf08dfe-ea7c-4eee-bb91-4217d2bf67db', 1, 0, '0');
	-- Not Null
INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('30467a1f-b54a-4d1a-a7ef-fde70e4c5274', '30467a1f-b54a-4d1a-a7ef-fde70e4c5274', 1, 0, '0');

	-- Update old data of AllowDistinct field
UPDATE IzendaQuerySourceField SET AllowDistinct = '1' WHERE AllowDistinct = '0' AND IzendaDataType IN ('Text', 'Datetime', 'Money', 'Boolean', 'Time', 'Numeric');

	-- Update old data of ComparisonOperator in tables: IzendaRelationship, IzendaRelationshipKeyJoin
UPDATE IzendaRelationship SET ComparisonOperator = '= (Field)' WHERE ComparisonOperator IS NULL;

UPDATE IzendaRelationshipKeyJoin SET ComparisonOperator = '= (Field)' WHERE ComparisonOperator IS NULL AND ComparisonValue IS NULL;

UPDATE IzendaRelationshipKeyJoin SET ComparisonOperator = '=' WHERE ComparisonOperator IS NULL AND ComparisonValue IS NOT NULL;

UPDATE IzendaDBVersion SET Version= '2.3.0';



-- ========================================================
-- v2.3.1
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.3.1';


-- ========================================================
-- v2.3.2
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.3.2';


-- ========================================================
-- v2.3.3
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.3.3';


-- ========================================================
-- v2.3.4
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.3.4';


-- ========================================================
-- v2.3.5
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.3.5';


-- ========================================================
-- v2.4.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaQuerySource' AND COLUMN_NAME='CustomDefinition')
BEGIN
	ALTER TABLE IzendaQuerySource ADD CustomDefinition nvarchar(max) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaQuerySource' AND COLUMN_NAME='Disabled')
BEGIN
	ALTER TABLE IzendaQuerySource ADD Disabled bit NULL
END

GO

UPDATE IzendaQuerySource SET Disabled = 0 WHERE Disabled IS NULL;

ALTER TABLE IzendaQuerySourceField ALTER COLUMN Expression NVARCHAR(MAX);


UPDATE IzendaDBVersion SET Version= '2.4.0';


-- ========================================================
-- v2.4.1
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.4.1';


-- ========================================================
-- v2.4.2
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.4.2';


-- ========================================================
-- v2.4.3
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.4.3';


-- ========================================================
-- v2.4.4
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.4.4';

-- ##################################
-- Izenda Schema Migration Script From v2.4.4 To v2.6.20
-- Database Type: [MSSQL] SQLServer
-- ##################################


-- ========================================================
-- v2.5.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaQuerySourceField' AND COLUMN_NAME='IsRunningField')
BEGIN
	ALTER TABLE IzendaQuerySourceField ADD IsRunningField bit NULL
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '5b654e75-d293-4e7e-9102-cdb74286e717')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('5b654e75-d293-4e7e-9102-cdb74286e717','Equals (Manual Entry No Auto-Complete)','=','e023c1f4-42b3-469b-a8d9-04684feeb4ed',145,1, '0');
END
IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = 'eca0a47d-cba9-406e-8c8c-9fb48314e685')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, Deleted)VALUES('eca0a47d-cba9-406e-8c8c-9fb48314e685','Not Equal (Manual Entry No Auto-Complete)','<>','e023c1f4-42b3-469b-a8d9-04684feeb4ed',195,0, '0');
END

UPDATE IzendaDBVersion SET Version= '2.5.0';


-- ========================================================
-- v2.5.1
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.5.1';


-- ========================================================
-- v2.5.2
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.5.2';


-- ========================================================
-- v2.5.3
-- ========================================================
UPDATE IzendaDBVersion SET Version= '2.5.3';


-- ========================================================
-- v2.6.0
-- ========================================================
UPDATE IzendaExportMarginDefaultValue SET LeftValue = '7.77', RightValue ='7.77' WHERE Id = 'DF2D2380-48C9-4249-AACB-8FD3A3465606';

IF NOT EXISTS (SELECT * FROM [IzendaExportMarginDefaultValue] WHERE Id = 'DF2D2380-48C9-4249-AACB-8FD3A3465607')
BEGIN
	INSERT INTO [IzendaExportMarginDefaultValue]([Id],[Type],[TopValue],[BottomValue],[LeftValue],[RightValue],[HeaderValue],[FooterValue],[Version],[Deleted]) 
	VALUES('DF2D2380-48C9-4249-AACB-8FD3A3465607', '6', '8.26', '8.26', '11.19', '11.19', '8.26', '8.26', '1', '0');
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME='IzendaQuerySourceField' AND COLUMN_NAME='SupportDefaultTotal')
BEGIN
	ALTER TABLE IzendaQuerySourceField ADD SupportDefaultTotal bit NULL
END

UPDATE IzendaDBVersion SET Version= '2.6.0';


-- ========================================================
-- v2.6.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.6.1';


-- ========================================================
-- v2.6.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.6.2';


-- ========================================================
-- v2.6.3
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

UPDATE IzendaDBVersion SET Version= '2.6.3';


-- ========================================================
-- v2.6.4
-- ========================================================

DECLARE @newId2 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items2 int = 0;
  SELECT @items2 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items2 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId2 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items2 = 2)
  BEGIN
	DECLARE @defaultItem2 datetime = NULL;
	DECLARE @customItem2 datetime = NULL;

	SELECT @defaultItem2 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem2 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem2 > @customItem2)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght2 int
				  ,@MaxNumberOfPasswordLenght2 int
				  ,@MinNumberOfSpecialCharacter2 int
				  ,@MaxNumberOfSpecialCharacter2 int
				  ,@MinNumberOfUppercaseCharacter2 int
				  ,@MaxNumberOfUppercaseCharacter2 int
				  ,@MinNumberOfLowercaseCharacter2 int
				  ,@MaxNumberOfLowercaseCharacter2 int
				  ,@MinNumberOfNumericCharacter2 int
				  ,@MaxNumberOfNumericCharacter2 int
				  ,@MaxNumberOfRepeatSequential2 int
				  ,@MinNumberOfPasswordAge2 int
				  ,@MaxNumberOfPasswordAge2 int
				  ,@NotifyUseDuring2 int
				  ,@NumberOfPasswordToKeep2 int
				  ,@PasswordLinkValidity2 int
				  ,@NumberOfQuestionProfile2 int
				  ,@NumberOfQuestionResetPassword2 int
				  ,@NumberOfFailedLogonAllowed2 int
				  ,@NumberOfFailedAnswerAllowed2 int
				  ,@LockoutPeriod2 int;

	    SELECT @MinNumberOfPasswordLenght2 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght2 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter2 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter2 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter2 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter2 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter2 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter2 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter2 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter2 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential2 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge2 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge2 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring2 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep2 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity2 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile2 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword2 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed2 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed2 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod2 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght2,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght2,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter2,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter2,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter2,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter2,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter2,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter2,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter2,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter2,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential2,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge2,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge2,
		NotifyUseDuring = @NotifyUseDuring2,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep2,
		PasswordLinkValidity = @PasswordLinkValidity2,
		NumberOfQuestionProfile = @NumberOfQuestionProfile2,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword2,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed2,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed2,
		LockoutPeriod = @LockoutPeriod2
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId2 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

UPDATE IzendaDBVersion SET Version= '2.6.4';


-- ========================================================
-- v2.6.5
-- ========================================================

DECLARE @newId3 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items3 int = 0;
  SELECT @items3 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items3 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId3 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items3 = 2)
  BEGIN
	DECLARE @defaultItem3 datetime = NULL;
	DECLARE @customItem3 datetime = NULL;

	SELECT @defaultItem3 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem3 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem3 > @customItem3)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght3 int
				  ,@MaxNumberOfPasswordLenght3 int
				  ,@MinNumberOfSpecialCharacter3 int
				  ,@MaxNumberOfSpecialCharacter3 int
				  ,@MinNumberOfUppercaseCharacter3 int
				  ,@MaxNumberOfUppercaseCharacter3 int
				  ,@MinNumberOfLowercaseCharacter3 int
				  ,@MaxNumberOfLowercaseCharacter3 int
				  ,@MinNumberOfNumericCharacter3 int
				  ,@MaxNumberOfNumericCharacter3 int
				  ,@MaxNumberOfRepeatSequential3 int
				  ,@MinNumberOfPasswordAge3 int
				  ,@MaxNumberOfPasswordAge3 int
				  ,@NotifyUseDuring3 int
				  ,@NumberOfPasswordToKeep3 int
				  ,@PasswordLinkValidity3 int
				  ,@NumberOfQuestionProfile3 int
				  ,@NumberOfQuestionResetPassword3 int
				  ,@NumberOfFailedLogonAllowed3 int
				  ,@NumberOfFailedAnswerAllowed3 int
				  ,@LockoutPeriod3 int;

	    SELECT @MinNumberOfPasswordLenght3 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght3 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter3 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter3 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter3 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter3 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter3 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter3 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter3 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter3 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential3 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge3 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge3 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring3 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep3 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity3 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile3 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword3 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed3 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed3 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod3 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght3,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght3,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter3,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter3,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter3,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter3,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter3,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter3,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter3,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter3,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential3,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge3,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge3,
		NotifyUseDuring = @NotifyUseDuring3,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep3,
		PasswordLinkValidity = @PasswordLinkValidity3,
		NumberOfQuestionProfile = @NumberOfQuestionProfile3,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword3,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed3,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed3,
		LockoutPeriod = @LockoutPeriod3
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId3 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
UPDATE IzendaDBVersion SET Version= '2.6.5';


-- ========================================================
-- v2.6.6
-- ========================================================

DECLARE @newId4 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items4 int = 0;
  SELECT @items4 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items4 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId4 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items4 = 2)
  BEGIN
	DECLARE @defaultItem4 datetime = NULL;
	DECLARE @customItem4 datetime = NULL;

	SELECT @defaultItem4 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem4 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem4 > @customItem4)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght4 int
				  ,@MaxNumberOfPasswordLenght4 int
				  ,@MinNumberOfSpecialCharacter4 int
				  ,@MaxNumberOfSpecialCharacter4 int
				  ,@MinNumberOfUppercaseCharacter4 int
				  ,@MaxNumberOfUppercaseCharacter4 int
				  ,@MinNumberOfLowercaseCharacter4 int
				  ,@MaxNumberOfLowercaseCharacter4 int
				  ,@MinNumberOfNumericCharacter4 int
				  ,@MaxNumberOfNumericCharacter4 int
				  ,@MaxNumberOfRepeatSequential4 int
				  ,@MinNumberOfPasswordAge4 int
				  ,@MaxNumberOfPasswordAge4 int
				  ,@NotifyUseDuring4 int
				  ,@NumberOfPasswordToKeep4 int
				  ,@PasswordLinkValidity4 int
				  ,@NumberOfQuestionProfile4 int
				  ,@NumberOfQuestionResetPassword4 int
				  ,@NumberOfFailedLogonAllowed4 int
				  ,@NumberOfFailedAnswerAllowed4 int
				  ,@LockoutPeriod4 int;

	    SELECT @MinNumberOfPasswordLenght4 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght4 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter4 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter4 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter4 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter4 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter4 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter4 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter4 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter4 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential4 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge4 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge4 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring4 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep4 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity4 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile4 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword4 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed4 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed4 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod4 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght4,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght4,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter4,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter4,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter4,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter4,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter4,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter4,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter4,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter4,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential4,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge4,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge4,
		NotifyUseDuring = @NotifyUseDuring4,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep4,
		PasswordLinkValidity = @PasswordLinkValidity4,
		NumberOfQuestionProfile = @NumberOfQuestionProfile4,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword4,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed4,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed4,
		LockoutPeriod = @LockoutPeriod4
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId4 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
UPDATE IzendaDBVersion SET Version= '2.6.6';


-- ========================================================
-- v2.6.7
-- ========================================================

DECLARE @newId5 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items5 int = 0;
  SELECT @items5 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items5 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId5 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items5 = 2)
  BEGIN
	DECLARE @defaultItem5 datetime = NULL;
	DECLARE @customItem5 datetime = NULL;

	SELECT @defaultItem5 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem5 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem5 > @customItem5)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght5 int
				  ,@MaxNumberOfPasswordLenght5 int
				  ,@MinNumberOfSpecialCharacter5 int
				  ,@MaxNumberOfSpecialCharacter5 int
				  ,@MinNumberOfUppercaseCharacter5 int
				  ,@MaxNumberOfUppercaseCharacter5 int
				  ,@MinNumberOfLowercaseCharacter5 int
				  ,@MaxNumberOfLowercaseCharacter5 int
				  ,@MinNumberOfNumericCharacter5 int
				  ,@MaxNumberOfNumericCharacter5 int
				  ,@MaxNumberOfRepeatSequential5 int
				  ,@MinNumberOfPasswordAge5 int
				  ,@MaxNumberOfPasswordAge5 int
				  ,@NotifyUseDuring5 int
				  ,@NumberOfPasswordToKeep5 int
				  ,@PasswordLinkValidity5 int
				  ,@NumberOfQuestionProfile5 int
				  ,@NumberOfQuestionResetPassword5 int
				  ,@NumberOfFailedLogonAllowed5 int
				  ,@NumberOfFailedAnswerAllowed5 int
				  ,@LockoutPeriod5 int;

	    SELECT @MinNumberOfPasswordLenght5 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght5 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter5 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter5 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter5 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter5 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter5 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter5 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter5 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter5 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential5 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge5 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge5 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring5 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep5 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity5 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile5 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword5 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed5 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed5 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod5 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght5,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght5,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter5,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter5,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter5,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter5,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter5,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter5,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter5,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter5,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential5,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge5,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge5,
		NotifyUseDuring = @NotifyUseDuring5,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep5,
		PasswordLinkValidity = @PasswordLinkValidity5,
		NumberOfQuestionProfile = @NumberOfQuestionProfile5,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword5,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed5,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed5,
		LockoutPeriod = @LockoutPeriod5
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId5 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO
 
UPDATE IzendaDBVersion SET Version= '2.6.7';


-- ========================================================
-- v2.6.8
-- ========================================================

DECLARE @newId6 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items6 int = 0;
  SELECT @items6 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items6 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId6 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items6 = 2)
  BEGIN
	DECLARE @defaultItem6 datetime = NULL;
	DECLARE @customItem6 datetime = NULL;

	SELECT @defaultItem6 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem6 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem6 > @customItem6)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght6 int
				  ,@MaxNumberOfPasswordLenght6 int
				  ,@MinNumberOfSpecialCharacter6 int
				  ,@MaxNumberOfSpecialCharacter6 int
				  ,@MinNumberOfUppercaseCharacter6 int
				  ,@MaxNumberOfUppercaseCharacter6 int
				  ,@MinNumberOfLowercaseCharacter6 int
				  ,@MaxNumberOfLowercaseCharacter6 int
				  ,@MinNumberOfNumericCharacter6 int
				  ,@MaxNumberOfNumericCharacter6 int
				  ,@MaxNumberOfRepeatSequential6 int
				  ,@MinNumberOfPasswordAge6 int
				  ,@MaxNumberOfPasswordAge6 int
				  ,@NotifyUseDuring6 int
				  ,@NumberOfPasswordToKeep6 int
				  ,@PasswordLinkValidity6 int
				  ,@NumberOfQuestionProfile6 int
				  ,@NumberOfQuestionResetPassword6 int
				  ,@NumberOfFailedLogonAllowed6 int
				  ,@NumberOfFailedAnswerAllowed6 int
				  ,@LockoutPeriod6 int;

	    SELECT @MinNumberOfPasswordLenght6 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght6 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter6 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter6 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter6 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter6 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter6 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter6 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter6 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter6 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential6 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge6 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge6 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring6 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep6 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity6 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile6 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword6 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed6 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed6 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod6 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght6,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght6,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter6,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter6,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter6,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter6,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter6,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter6,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter6,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter6,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential6,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge6,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge6,
		NotifyUseDuring = @NotifyUseDuring6,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep6,
		PasswordLinkValidity = @PasswordLinkValidity6,
		NumberOfQuestionProfile = @NumberOfQuestionProfile6,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword6,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed6,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed6,
		LockoutPeriod = @LockoutPeriod6
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId6 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END
 
UPDATE IzendaDBVersion SET Version= '2.6.8';


-- ========================================================
-- v2.6.9
-- ========================================================

DECLARE @newId7 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items7 int = 0;
  SELECT @items7 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items7 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId7 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items7 = 2)
  BEGIN
	DECLARE @defaultItem7 datetime = NULL;
	DECLARE @customItem7 datetime = NULL;

	SELECT @defaultItem7 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem7 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem7 > @customItem7)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght7 int
				  ,@MaxNumberOfPasswordLenght7 int
				  ,@MinNumberOfSpecialCharacter7 int
				  ,@MaxNumberOfSpecialCharacter7 int
				  ,@MinNumberOfUppercaseCharacter7 int
				  ,@MaxNumberOfUppercaseCharacter7 int
				  ,@MinNumberOfLowercaseCharacter7 int
				  ,@MaxNumberOfLowercaseCharacter7 int
				  ,@MinNumberOfNumericCharacter7 int
				  ,@MaxNumberOfNumericCharacter7 int
				  ,@MaxNumberOfRepeatSequential7 int
				  ,@MinNumberOfPasswordAge7 int
				  ,@MaxNumberOfPasswordAge7 int
				  ,@NotifyUseDuring7 int
				  ,@NumberOfPasswordToKeep7 int
				  ,@PasswordLinkValidity7 int
				  ,@NumberOfQuestionProfile7 int
				  ,@NumberOfQuestionResetPassword7 int
				  ,@NumberOfFailedLogonAllowed7 int
				  ,@NumberOfFailedAnswerAllowed7 int
				  ,@LockoutPeriod7 int;

	    SELECT @MinNumberOfPasswordLenght7 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght7 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter7 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter7 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter7 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter7 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter7 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter7 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter7 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter7 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential7 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge7 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge7 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring7 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep7 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity7 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile7 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword7 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed7 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed7 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod7 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght7,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght7,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter7,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter7,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter7,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter7,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter7,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter7,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter7,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter7,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential7,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge7,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge7,
		NotifyUseDuring = @NotifyUseDuring7,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep7,
		PasswordLinkValidity = @PasswordLinkValidity7,
		NumberOfQuestionProfile = @NumberOfQuestionProfile7,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword7,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed7,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed7,
		LockoutPeriod = @LockoutPeriod7
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId7 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END
 
UPDATE IzendaDBVersion SET Version= '2.6.9';


-- ========================================================
-- v2.6.10
-- ========================================================

DECLARE @newId8 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items8 int = 0;
  SELECT @items8 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items8 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId8 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items8 = 2)
  BEGIN
	DECLARE @defaultItem8 datetime = NULL;
	DECLARE @customItem8 datetime = NULL;

	SELECT @defaultItem8 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem8 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem8 > @customItem8)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght8 int
				  ,@MaxNumberOfPasswordLenght8 int
				  ,@MinNumberOfSpecialCharacter8 int
				  ,@MaxNumberOfSpecialCharacter8 int
				  ,@MinNumberOfUppercaseCharacter8 int
				  ,@MaxNumberOfUppercaseCharacter8 int
				  ,@MinNumberOfLowercaseCharacter8 int
				  ,@MaxNumberOfLowercaseCharacter8 int
				  ,@MinNumberOfNumericCharacter8 int
				  ,@MaxNumberOfNumericCharacter8 int
				  ,@MaxNumberOfRepeatSequential8 int
				  ,@MinNumberOfPasswordAge8 int
				  ,@MaxNumberOfPasswordAge8 int
				  ,@NotifyUseDuring8 int
				  ,@NumberOfPasswordToKeep8 int
				  ,@PasswordLinkValidity8 int
				  ,@NumberOfQuestionProfile8 int
				  ,@NumberOfQuestionResetPassword8 int
				  ,@NumberOfFailedLogonAllowed8 int
				  ,@NumberOfFailedAnswerAllowed8 int
				  ,@LockoutPeriod8 int;

	    SELECT @MinNumberOfPasswordLenght8 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght8 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter8 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter8 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter8 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter8 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter8 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter8 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter8 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter8 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential8 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge8 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge8 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring8 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep8 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity8 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile8 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword8 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed8 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed8 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod8 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght8,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght8,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter8,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter8,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter8,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter8,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter8,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter8,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter8,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter8,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential8,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge8,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge8,
		NotifyUseDuring = @NotifyUseDuring8,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep8,
		PasswordLinkValidity = @PasswordLinkValidity8,
		NumberOfQuestionProfile = @NumberOfQuestionProfile8,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword8,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed8,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed8,
		LockoutPeriod = @LockoutPeriod8
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId8 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.10';


-- ========================================================
-- v2.6.11
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.11';


-- ========================================================
-- v2.6.12
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.12';


-- ========================================================
-- v2.6.13
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.13';


-- ========================================================
-- v2.6.14
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.14';


-- ========================================================
-- v2.6.15
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.15';



-- ========================================================
-- v2.6.16
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.16';



-- ========================================================
-- v2.6.17
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.17';



-- ========================================================
-- v2.6.18
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.18';



-- ========================================================
-- v2.6.19
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.19';



-- ========================================================
-- v2.6.20
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.20';

-- ========================================================
-- v2.6.3
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

UPDATE IzendaDBVersion SET Version= '2.6.3';


-- ========================================================
-- v2.6.4
-- ========================================================

DECLARE @newId2 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items2 int = 0;
  SELECT @items2 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items2 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId2 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items2 = 2)
  BEGIN
	DECLARE @defaultItem2 datetime = NULL;
	DECLARE @customItem2 datetime = NULL;

	SELECT @defaultItem2 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem2 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem2 > @customItem2)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght2 int
				  ,@MaxNumberOfPasswordLenght2 int
				  ,@MinNumberOfSpecialCharacter2 int
				  ,@MaxNumberOfSpecialCharacter2 int
				  ,@MinNumberOfUppercaseCharacter2 int
				  ,@MaxNumberOfUppercaseCharacter2 int
				  ,@MinNumberOfLowercaseCharacter2 int
				  ,@MaxNumberOfLowercaseCharacter2 int
				  ,@MinNumberOfNumericCharacter2 int
				  ,@MaxNumberOfNumericCharacter2 int
				  ,@MaxNumberOfRepeatSequential2 int
				  ,@MinNumberOfPasswordAge2 int
				  ,@MaxNumberOfPasswordAge2 int
				  ,@NotifyUseDuring2 int
				  ,@NumberOfPasswordToKeep2 int
				  ,@PasswordLinkValidity2 int
				  ,@NumberOfQuestionProfile2 int
				  ,@NumberOfQuestionResetPassword2 int
				  ,@NumberOfFailedLogonAllowed2 int
				  ,@NumberOfFailedAnswerAllowed2 int
				  ,@LockoutPeriod2 int;

	    SELECT @MinNumberOfPasswordLenght2 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght2 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter2 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter2 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter2 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter2 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter2 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter2 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter2 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter2 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential2 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge2 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge2 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring2 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep2 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity2 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile2 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword2 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed2 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed2 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod2 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght2,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght2,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter2,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter2,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter2,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter2,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter2,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter2,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter2,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter2,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential2,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge2,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge2,
		NotifyUseDuring = @NotifyUseDuring2,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep2,
		PasswordLinkValidity = @PasswordLinkValidity2,
		NumberOfQuestionProfile = @NumberOfQuestionProfile2,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword2,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed2,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed2,
		LockoutPeriod = @LockoutPeriod2
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId2 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

UPDATE IzendaDBVersion SET Version= '2.6.4';


-- ========================================================
-- v2.6.5
-- ========================================================

DECLARE @newId3 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items3 int = 0;
  SELECT @items3 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items3 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId3 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items3 = 2)
  BEGIN
	DECLARE @defaultItem3 datetime = NULL;
	DECLARE @customItem3 datetime = NULL;

	SELECT @defaultItem3 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem3 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem3 > @customItem3)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght3 int
				  ,@MaxNumberOfPasswordLenght3 int
				  ,@MinNumberOfSpecialCharacter3 int
				  ,@MaxNumberOfSpecialCharacter3 int
				  ,@MinNumberOfUppercaseCharacter3 int
				  ,@MaxNumberOfUppercaseCharacter3 int
				  ,@MinNumberOfLowercaseCharacter3 int
				  ,@MaxNumberOfLowercaseCharacter3 int
				  ,@MinNumberOfNumericCharacter3 int
				  ,@MaxNumberOfNumericCharacter3 int
				  ,@MaxNumberOfRepeatSequential3 int
				  ,@MinNumberOfPasswordAge3 int
				  ,@MaxNumberOfPasswordAge3 int
				  ,@NotifyUseDuring3 int
				  ,@NumberOfPasswordToKeep3 int
				  ,@PasswordLinkValidity3 int
				  ,@NumberOfQuestionProfile3 int
				  ,@NumberOfQuestionResetPassword3 int
				  ,@NumberOfFailedLogonAllowed3 int
				  ,@NumberOfFailedAnswerAllowed3 int
				  ,@LockoutPeriod3 int;

	    SELECT @MinNumberOfPasswordLenght3 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght3 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter3 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter3 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter3 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter3 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter3 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter3 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter3 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter3 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential3 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge3 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge3 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring3 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep3 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity3 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile3 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword3 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed3 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed3 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod3 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght3,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght3,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter3,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter3,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter3,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter3,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter3,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter3,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter3,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter3,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential3,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge3,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge3,
		NotifyUseDuring = @NotifyUseDuring3,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep3,
		PasswordLinkValidity = @PasswordLinkValidity3,
		NumberOfQuestionProfile = @NumberOfQuestionProfile3,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword3,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed3,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed3,
		LockoutPeriod = @LockoutPeriod3
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId3 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
UPDATE IzendaDBVersion SET Version= '2.6.5';


-- ========================================================
-- v2.6.6
-- ========================================================

DECLARE @newId4 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items4 int = 0;
  SELECT @items4 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items4 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId4 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items4 = 2)
  BEGIN
	DECLARE @defaultItem4 datetime = NULL;
	DECLARE @customItem4 datetime = NULL;

	SELECT @defaultItem4 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem4 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem4 > @customItem4)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght4 int
				  ,@MaxNumberOfPasswordLenght4 int
				  ,@MinNumberOfSpecialCharacter4 int
				  ,@MaxNumberOfSpecialCharacter4 int
				  ,@MinNumberOfUppercaseCharacter4 int
				  ,@MaxNumberOfUppercaseCharacter4 int
				  ,@MinNumberOfLowercaseCharacter4 int
				  ,@MaxNumberOfLowercaseCharacter4 int
				  ,@MinNumberOfNumericCharacter4 int
				  ,@MaxNumberOfNumericCharacter4 int
				  ,@MaxNumberOfRepeatSequential4 int
				  ,@MinNumberOfPasswordAge4 int
				  ,@MaxNumberOfPasswordAge4 int
				  ,@NotifyUseDuring4 int
				  ,@NumberOfPasswordToKeep4 int
				  ,@PasswordLinkValidity4 int
				  ,@NumberOfQuestionProfile4 int
				  ,@NumberOfQuestionResetPassword4 int
				  ,@NumberOfFailedLogonAllowed4 int
				  ,@NumberOfFailedAnswerAllowed4 int
				  ,@LockoutPeriod4 int;

	    SELECT @MinNumberOfPasswordLenght4 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght4 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter4 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter4 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter4 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter4 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter4 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter4 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter4 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter4 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential4 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge4 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge4 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring4 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep4 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity4 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile4 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword4 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed4 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed4 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod4 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght4,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght4,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter4,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter4,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter4,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter4,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter4,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter4,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter4,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter4,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential4,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge4,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge4,
		NotifyUseDuring = @NotifyUseDuring4,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep4,
		PasswordLinkValidity = @PasswordLinkValidity4,
		NumberOfQuestionProfile = @NumberOfQuestionProfile4,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword4,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed4,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed4,
		LockoutPeriod = @LockoutPeriod4
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId4 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
UPDATE IzendaDBVersion SET Version= '2.6.6';


-- ========================================================
-- v2.6.7
-- ========================================================

DECLARE @newId5 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items5 int = 0;
  SELECT @items5 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items5 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId5 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items5 = 2)
  BEGIN
	DECLARE @defaultItem5 datetime = NULL;
	DECLARE @customItem5 datetime = NULL;

	SELECT @defaultItem5 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem5 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem5 > @customItem5)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght5 int
				  ,@MaxNumberOfPasswordLenght5 int
				  ,@MinNumberOfSpecialCharacter5 int
				  ,@MaxNumberOfSpecialCharacter5 int
				  ,@MinNumberOfUppercaseCharacter5 int
				  ,@MaxNumberOfUppercaseCharacter5 int
				  ,@MinNumberOfLowercaseCharacter5 int
				  ,@MaxNumberOfLowercaseCharacter5 int
				  ,@MinNumberOfNumericCharacter5 int
				  ,@MaxNumberOfNumericCharacter5 int
				  ,@MaxNumberOfRepeatSequential5 int
				  ,@MinNumberOfPasswordAge5 int
				  ,@MaxNumberOfPasswordAge5 int
				  ,@NotifyUseDuring5 int
				  ,@NumberOfPasswordToKeep5 int
				  ,@PasswordLinkValidity5 int
				  ,@NumberOfQuestionProfile5 int
				  ,@NumberOfQuestionResetPassword5 int
				  ,@NumberOfFailedLogonAllowed5 int
				  ,@NumberOfFailedAnswerAllowed5 int
				  ,@LockoutPeriod5 int;

	    SELECT @MinNumberOfPasswordLenght5 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght5 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter5 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter5 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter5 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter5 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter5 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter5 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter5 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter5 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential5 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge5 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge5 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring5 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep5 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity5 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile5 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword5 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed5 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed5 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod5 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght5,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght5,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter5,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter5,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter5,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter5,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter5,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter5,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter5,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter5,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential5,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge5,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge5,
		NotifyUseDuring = @NotifyUseDuring5,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep5,
		PasswordLinkValidity = @PasswordLinkValidity5,
		NumberOfQuestionProfile = @NumberOfQuestionProfile5,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword5,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed5,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed5,
		LockoutPeriod = @LockoutPeriod5
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId5 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO
 
UPDATE IzendaDBVersion SET Version= '2.6.7';


-- ========================================================
-- v2.6.8
-- ========================================================

DECLARE @newId6 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items6 int = 0;
  SELECT @items6 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items6 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId6 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items6 = 2)
  BEGIN
	DECLARE @defaultItem6 datetime = NULL;
	DECLARE @customItem6 datetime = NULL;

	SELECT @defaultItem6 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem6 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem6 > @customItem6)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght6 int
				  ,@MaxNumberOfPasswordLenght6 int
				  ,@MinNumberOfSpecialCharacter6 int
				  ,@MaxNumberOfSpecialCharacter6 int
				  ,@MinNumberOfUppercaseCharacter6 int
				  ,@MaxNumberOfUppercaseCharacter6 int
				  ,@MinNumberOfLowercaseCharacter6 int
				  ,@MaxNumberOfLowercaseCharacter6 int
				  ,@MinNumberOfNumericCharacter6 int
				  ,@MaxNumberOfNumericCharacter6 int
				  ,@MaxNumberOfRepeatSequential6 int
				  ,@MinNumberOfPasswordAge6 int
				  ,@MaxNumberOfPasswordAge6 int
				  ,@NotifyUseDuring6 int
				  ,@NumberOfPasswordToKeep6 int
				  ,@PasswordLinkValidity6 int
				  ,@NumberOfQuestionProfile6 int
				  ,@NumberOfQuestionResetPassword6 int
				  ,@NumberOfFailedLogonAllowed6 int
				  ,@NumberOfFailedAnswerAllowed6 int
				  ,@LockoutPeriod6 int;

	    SELECT @MinNumberOfPasswordLenght6 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght6 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter6 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter6 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter6 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter6 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter6 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter6 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter6 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter6 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential6 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge6 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge6 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring6 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep6 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity6 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile6 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword6 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed6 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed6 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod6 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght6,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght6,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter6,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter6,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter6,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter6,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter6,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter6,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter6,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter6,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential6,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge6,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge6,
		NotifyUseDuring = @NotifyUseDuring6,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep6,
		PasswordLinkValidity = @PasswordLinkValidity6,
		NumberOfQuestionProfile = @NumberOfQuestionProfile6,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword6,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed6,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed6,
		LockoutPeriod = @LockoutPeriod6
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId6 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END
 
UPDATE IzendaDBVersion SET Version= '2.6.8';


-- ========================================================
-- v2.6.9
-- ========================================================

DECLARE @newId7 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items7 int = 0;
  SELECT @items7 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items7 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId7 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items7 = 2)
  BEGIN
	DECLARE @defaultItem7 datetime = NULL;
	DECLARE @customItem7 datetime = NULL;

	SELECT @defaultItem7 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem7 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem7 > @customItem7)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght7 int
				  ,@MaxNumberOfPasswordLenght7 int
				  ,@MinNumberOfSpecialCharacter7 int
				  ,@MaxNumberOfSpecialCharacter7 int
				  ,@MinNumberOfUppercaseCharacter7 int
				  ,@MaxNumberOfUppercaseCharacter7 int
				  ,@MinNumberOfLowercaseCharacter7 int
				  ,@MaxNumberOfLowercaseCharacter7 int
				  ,@MinNumberOfNumericCharacter7 int
				  ,@MaxNumberOfNumericCharacter7 int
				  ,@MaxNumberOfRepeatSequential7 int
				  ,@MinNumberOfPasswordAge7 int
				  ,@MaxNumberOfPasswordAge7 int
				  ,@NotifyUseDuring7 int
				  ,@NumberOfPasswordToKeep7 int
				  ,@PasswordLinkValidity7 int
				  ,@NumberOfQuestionProfile7 int
				  ,@NumberOfQuestionResetPassword7 int
				  ,@NumberOfFailedLogonAllowed7 int
				  ,@NumberOfFailedAnswerAllowed7 int
				  ,@LockoutPeriod7 int;

	    SELECT @MinNumberOfPasswordLenght7 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght7 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter7 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter7 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter7 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter7 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter7 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter7 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter7 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter7 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential7 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge7 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge7 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring7 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep7 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity7 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile7 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword7 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed7 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed7 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod7 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght7,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght7,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter7,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter7,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter7,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter7,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter7,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter7,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter7,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter7,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential7,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge7,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge7,
		NotifyUseDuring = @NotifyUseDuring7,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep7,
		PasswordLinkValidity = @PasswordLinkValidity7,
		NumberOfQuestionProfile = @NumberOfQuestionProfile7,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword7,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed7,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed7,
		LockoutPeriod = @LockoutPeriod7
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId7 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END
 
UPDATE IzendaDBVersion SET Version= '2.6.9';


-- ========================================================
-- v2.6.10
-- ========================================================

DECLARE @newId8 uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items8 int = 0;
  SELECT @items8 = count(*) FROM IzendaSecurityPolicy;  
  IF(@items8 = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId8 WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items8 = 2)
  BEGIN
	DECLARE @defaultItem8 datetime = NULL;
	DECLARE @customItem8 datetime = NULL;

	SELECT @defaultItem8 = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem8 = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem8 > @customItem8)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght8 int
				  ,@MaxNumberOfPasswordLenght8 int
				  ,@MinNumberOfSpecialCharacter8 int
				  ,@MaxNumberOfSpecialCharacter8 int
				  ,@MinNumberOfUppercaseCharacter8 int
				  ,@MaxNumberOfUppercaseCharacter8 int
				  ,@MinNumberOfLowercaseCharacter8 int
				  ,@MaxNumberOfLowercaseCharacter8 int
				  ,@MinNumberOfNumericCharacter8 int
				  ,@MaxNumberOfNumericCharacter8 int
				  ,@MaxNumberOfRepeatSequential8 int
				  ,@MinNumberOfPasswordAge8 int
				  ,@MaxNumberOfPasswordAge8 int
				  ,@NotifyUseDuring8 int
				  ,@NumberOfPasswordToKeep8 int
				  ,@PasswordLinkValidity8 int
				  ,@NumberOfQuestionProfile8 int
				  ,@NumberOfQuestionResetPassword8 int
				  ,@NumberOfFailedLogonAllowed8 int
				  ,@NumberOfFailedAnswerAllowed8 int
				  ,@LockoutPeriod8 int;

	    SELECT @MinNumberOfPasswordLenght8 = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght8 = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter8 = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter8 = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter8 = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter8 = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter8 = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter8 = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter8 = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter8 = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential8 = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge8 = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge8 = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring8 = NotifyUseDuring
			  ,@NumberOfPasswordToKeep8 = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity8 = PasswordLinkValidity
			  ,@NumberOfQuestionProfile8 = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword8 = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed8 = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed8 = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod8 = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght8,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght8,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter8,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter8,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter8,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter8,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter8,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter8,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter8,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter8,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential8,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge8,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge8,
		NotifyUseDuring = @NotifyUseDuring8,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep8,
		PasswordLinkValidity = @PasswordLinkValidity8,
		NumberOfQuestionProfile = @NumberOfQuestionProfile8,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword8,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed8,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed8,
		LockoutPeriod = @LockoutPeriod8
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId8 WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.10';


-- ========================================================
-- v2.6.11
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.11';


-- ========================================================
-- v2.6.12
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.12';


-- ========================================================
-- v2.6.13
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end
 
UPDATE IzendaDBVersion SET Version= '2.6.13';


-- ========================================================
-- v2.6.14
-- ========================================================

DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END

-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.14';


-- ========================================================
-- v2.6.15
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.15';



-- ========================================================
-- v2.6.16
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.16';



-- ========================================================
-- v2.6.17
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.17';



-- ========================================================
-- v2.6.18
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.18';



-- ========================================================
-- v2.6.19
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.19';



-- ========================================================
-- v2.6.20
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
 
UPDATE IzendaDBVersion SET Version= '2.6.20';



-- ========================================================
-- v2.6.21
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

--fix 19055 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaTemporaryData' AND COLUMN_NAME='UserId')
BEGIN
	BEGIN
		DELETE FROM IzendaTemporaryData
	END
	BEGIN
		ALTER TABLE IzendaTemporaryData ADD UserId uniqueidentifier NOT NULL
	END
END

GO

ALTER TABLE IzendaTemporaryData
DROP CONSTRAINT PK_IzendaTemporaryData

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId, UserId);
END
--fix 19055 - end
UPDATE IzendaDBVersion SET Version= '2.6.21';



-- ========================================================
-- v2.6.22
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

--fix 19055 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaTemporaryData' AND COLUMN_NAME='UserId')
BEGIN
	BEGIN
		DELETE FROM IzendaTemporaryData
	END
	BEGIN
		ALTER TABLE IzendaTemporaryData ADD UserId uniqueidentifier NOT NULL
	END
END

GO

ALTER TABLE IzendaTemporaryData
DROP CONSTRAINT PK_IzendaTemporaryData

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId, UserId);
END
--fix 19055 - end
UPDATE IzendaDBVersion SET Version= '2.6.22';



-- ========================================================
-- v2.6.23
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

--fix 19055 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaTemporaryData' AND COLUMN_NAME='UserId')
BEGIN
	BEGIN
		DELETE FROM IzendaTemporaryData
	END
	BEGIN
		ALTER TABLE IzendaTemporaryData ADD UserId uniqueidentifier NOT NULL
	END
END

GO

ALTER TABLE IzendaTemporaryData
DROP CONSTRAINT PK_IzendaTemporaryData

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId, UserId);
END
--fix 19055 - end
UPDATE IzendaDBVersion SET Version= '2.6.23';



-- ========================================================
-- v2.6.24
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

--fix 19055 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaTemporaryData' AND COLUMN_NAME='UserId')
BEGIN
	BEGIN
		DELETE FROM IzendaTemporaryData
	END
	BEGIN
		ALTER TABLE IzendaTemporaryData ADD UserId uniqueidentifier NOT NULL
	END
END

GO

ALTER TABLE IzendaTemporaryData
DROP CONSTRAINT PK_IzendaTemporaryData

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId, UserId);
END
--fix 19055 - end
UPDATE IzendaDBVersion SET Version= '2.6.24';



-- ========================================================
-- v2.7.0
-- ========================================================
DECLARE @newId uniqueidentifier = '9b85320e-00a5-44a3-8c5f-685b8e6e6e59';
  DECLARE @items int = 0;
  SELECT @items = count(*) FROM IzendaSecurityPolicy;  
  IF(@items = 1)
  BEGIN 
	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D' AND Modified IS NULL;
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
  END
  ELSE IF(@items = 2)
  BEGIN
	DECLARE @defaultItem datetime = NULL;
	DECLARE @customItem datetime = NULL;

	SELECT @defaultItem = Modified FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	SELECT @customItem = Modified FROM IzendaSecurityPolicy WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	IF(@defaultItem > @customItem)
	BEGIN 	
		DECLARE @MinNumberOfPasswordLenght int
				  ,@MaxNumberOfPasswordLenght int
				  ,@MinNumberOfSpecialCharacter int
				  ,@MaxNumberOfSpecialCharacter int
				  ,@MinNumberOfUppercaseCharacter int
				  ,@MaxNumberOfUppercaseCharacter int
				  ,@MinNumberOfLowercaseCharacter int
				  ,@MaxNumberOfLowercaseCharacter int
				  ,@MinNumberOfNumericCharacter int
				  ,@MaxNumberOfNumericCharacter int
				  ,@MaxNumberOfRepeatSequential int
				  ,@MinNumberOfPasswordAge int
				  ,@MaxNumberOfPasswordAge int
				  ,@NotifyUseDuring int
				  ,@NumberOfPasswordToKeep int
				  ,@PasswordLinkValidity int
				  ,@NumberOfQuestionProfile int
				  ,@NumberOfQuestionResetPassword int
				  ,@NumberOfFailedLogonAllowed int
				  ,@NumberOfFailedAnswerAllowed int
				  ,@LockoutPeriod int;

	    SELECT @MinNumberOfPasswordLenght = MinNumberOfPasswordLenght
			  ,@MaxNumberOfPasswordLenght = MaxNumberOfPasswordLenght
			  ,@MinNumberOfSpecialCharacter = MinNumberOfSpecialCharacter
			  ,@MaxNumberOfSpecialCharacter = MaxNumberOfSpecialCharacter
			  ,@MinNumberOfUppercaseCharacter = MinNumberOfUppercaseCharacter
			  ,@MaxNumberOfUppercaseCharacter = MaxNumberOfUppercaseCharacter
			  ,@MinNumberOfLowercaseCharacter = MinNumberOfLowercaseCharacter
			  ,@MaxNumberOfLowercaseCharacter = MaxNumberOfLowercaseCharacter
			  ,@MinNumberOfNumericCharacter = MinNumberOfNumericCharacter
			  ,@MaxNumberOfNumericCharacter = MaxNumberOfNumericCharacter
			  ,@MaxNumberOfRepeatSequential = MaxNumberOfRepeatSequential
			  ,@MinNumberOfPasswordAge = MinNumberOfPasswordAge
			  ,@MaxNumberOfPasswordAge = MaxNumberOfPasswordAge
			  ,@NotifyUseDuring = NotifyUseDuring
			  ,@NumberOfPasswordToKeep = NumberOfPasswordToKeep
			  ,@PasswordLinkValidity = PasswordLinkValidity
			  ,@NumberOfQuestionProfile = NumberOfQuestionProfile
			  ,@NumberOfQuestionResetPassword = NumberOfQuestionResetPassword
			  ,@NumberOfFailedLogonAllowed = NumberOfFailedLogonAllowed
			  ,@NumberOfFailedAnswerAllowed = NumberOfFailedAnswerAllowed
			  ,@LockoutPeriod = LockoutPeriod
	    FROM IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	
		UPDATE IzendaSecurityPolicy SET
		MinNumberOfPasswordLenght = @MinNumberOfPasswordLenght,
		MaxNumberOfPasswordLenght = @MaxNumberOfPasswordLenght,
		MinNumberOfSpecialCharacter = @MinNumberOfSpecialCharacter,
		MaxNumberOfSpecialCharacter = @MaxNumberOfSpecialCharacter,
		MinNumberOfUppercaseCharacter = @MinNumberOfUppercaseCharacter,
		MaxNumberOfUppercaseCharacter = @MaxNumberOfUppercaseCharacter,
		MinNumberOfLowercaseCharacter = @MinNumberOfLowercaseCharacter,
		MaxNumberOfLowercaseCharacter = @MaxNumberOfLowercaseCharacter,
		MinNumberOfNumericCharacter = @MinNumberOfNumericCharacter,
		MaxNumberOfNumericCharacter = @MaxNumberOfNumericCharacter,
		MaxNumberOfRepeatSequential = @MaxNumberOfRepeatSequential,
		MinNumberOfPasswordAge = @MinNumberOfPasswordAge,
		MaxNumberOfPasswordAge = @MaxNumberOfPasswordAge,
		NotifyUseDuring = @NotifyUseDuring,
		NumberOfPasswordToKeep = @NumberOfPasswordToKeep,
		PasswordLinkValidity = @PasswordLinkValidity,
		NumberOfQuestionProfile = @NumberOfQuestionProfile,
		NumberOfQuestionResetPassword = @NumberOfQuestionResetPassword,
		NumberOfFailedLogonAllowed = @NumberOfFailedLogonAllowed,
		NumberOfFailedAnswerAllowed = @NumberOfFailedAnswerAllowed,
		LockoutPeriod = @LockoutPeriod
		WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';

	END

	DELETE IzendaSecurityPolicy WHERE Id = 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
	UPDATE IzendaSecurityPolicy SET Id = @newId WHERE Id != 'FA528971-A8AF-45AB-A0B3-D539104E1B0D';
 END

GO
 
UPDATE IzendaTemporaryData SET TenantId = '00000000-0000-0000-0000-000000000000' 
WHERE TenantId IS NULL;
GO

ALTER TABLE IzendaTemporaryData
ALTER COLUMN TenantId uniqueidentifier NOT NULL;

GO

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId);
END

GO 
 
-- fix 18584 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='WoeName')
BEGIN
	ALTER TABLE IzendaCity ADD WoeName nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCity' AND COLUMN_NAME='HcA2')
BEGIN
	ALTER TABLE IzendaCity ADD HcA2 nvarchar(10) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryCode')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryCode nvarchar(255) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaPostalCode' AND COLUMN_NAME='CountryName')
BEGIN
	ALTER TABLE IzendaPostalCode ADD CountryName nvarchar(255) NULL
END
-- fix 18584 - end


CREATE TABLE #UserPermTemp (Id uniqueidentifier, AssignedTo nvarchar(4000), AssignedToNames nvarchar(4000));

GO

WITH UserPerm AS
(
	SELECT Id, AssignedTo, AssignedToNames FROM IzendaUserPermission WHERE AssignedToNames IS NULL AND AssignedType = 2
)
INSERT INTO #UserPermTemp
SELECT t1.Id, t1.AssignedTo , '[' + LEFT(IdTable.Names, LEN(IdTable.Names)-1) + ']' AS AssignedToNames
FROM UserPerm t1
INNER JOIN
(
	SELECT up.Id, A.Names
	FROM (
	SELECT Id, CAST(('<i>' + REPLACE(REPLACE(REPLACE(REPLACE(AssignedTo, '[',''),']',''),'"',''), ',', '</i><i>') + '</i>') AS XML) IdXml
	FROM UserPerm
	) up
	CROSS APPLY (
		SELECT '"' + r.Name + '",' AS 'data()'
		FROM (
			SELECT SUBSTRING(Value, 1, LEN(Value)) as IDValues
			FROM (
				SELECT t.i.value('.', 'VARCHAR(MAX)') AS Value
				FROM up.IdXml.nodes('i') AS t(i)
				WHERE t.i.value('.', 'VARCHAR(MAX)') <> ''
			) l
			WHERE LEN(l.Value) > 0
		) o JOIN IzendaRole r ON CAST(o.IDValues AS uniqueidentifier) = r.Id
		FOR XML PATH('')
	) AS A(Names)
) AS IdTable ON t1.Id = IdTable.Id;

GO

UPDATE up
SET AssignedToNames = t.AssignedToNames
FROM IzendaUserPermission up INNER JOIN #UserPermTemp t ON up.Id = t.Id
WHERE up.AssignedToNames IS NULL;

UPDATE IzendaUserPermission SET AssignedToNames = '[]' WHERE AssignedToNames IS NULL AND AssignedType = 2;

GO

DROP TABLE #UserPermTemp;

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9EEEECCD-140A-4694-BA7A-CA845F87ED7B')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9EEEECCD-140A-4694-BA7A-CA845F87ED7B','UseADOJobStore','0','0')
END


-- fix 16885 - begin
ALTER TABLE IzendaQuerySource ALTER COLUMN ExtendedProperties NVARCHAR(MAX);
-- fix 16885 - end

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaReportDataSource' /* Table */
        AND si.name='IX_IzendaReportDataSource_ID_Version' /* Index */
	)
	PRINT 'IX_IzendaReportDataSource_ID_Version exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_IzendaReportDataSource_ID_Version] ON [dbo].[IzendaReportDataSource]
	(
		Id ASC,
		[Version] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING= OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

--fix 19055 - begin
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaTemporaryData' AND COLUMN_NAME='UserId')
BEGIN
	BEGIN
		DELETE FROM IzendaTemporaryData
	END
	BEGIN
		ALTER TABLE IzendaTemporaryData ADD UserId uniqueidentifier NOT NULL
	END
END

GO

ALTER TABLE IzendaTemporaryData
DROP CONSTRAINT PK_IzendaTemporaryData

IF NOT EXISTS ( SELECT * FROM sys.key_constraints
    WHERE Type = 'PK' AND Name = 'PK_IzendaTemporaryData')
BEGIN
	ALTER TABLE IzendaTemporaryData ADD CONSTRAINT PK_IzendaTemporaryData 
		PRIMARY KEY (Id, TenantId, UserId);
END
--fix 19055 - end
UPDATE IzendaDBVersion SET Version= '2.7.0';



-- ========================================================
-- v2.7.1
-- ========================================================

UPDATE IzendaDBVersion SET Version = '2.7.1';


-- ========================================================
-- v2.7.2
-- ========================================================

UPDATE IzendaDBVersion SET Version = '2.7.2';


-- ========================================================
-- v2.7.4
-- ========================================================

UPDATE IzendaDBVersion SET Version = '2.7.4';


-- ========================================================
-- v2.7.5
-- ========================================================

UPDATE IzendaDBVersion SET Version = '2.7.5';


-- ========================================================
-- v2.8.0
-- ========================================================

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaImport]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaImport](
		[Id] [uniqueidentifier] PRIMARY KEY,
		[ObjectName] [nvarchar](256) NULL,
		[FileKey] [nvarchar](256) NULL,
		[Status] [int] NULL,
		[StatusName] [nvarchar](256) NULL,
		[ErrorCode] [int] NULL,
		[ErrorMessage] [nvarchar](4000) NULL,
		[Type] [int] NULL,
		[TypeName] [nvarchar](256) NULL,
		[CategoryId] [uniqueidentifier] NULL,
		[CategoryName] [nvarchar](256) NULL,
		[SubCategoryId] [uniqueidentifier] NULL,
		[SubCategoryName] [nvarchar](256) NULL,
		[IsGlobal] [bit] NULL,
		[SaveInto] [nvarchar](256) NULL,
		[SourceId] [uniqueidentifier] NULL,
		[FileName] [nvarchar](256) NULL,
		[ObjectId] [uniqueidentifier] NULL,
		[TenantId] [uniqueidentifier] NULL,
		[DestinationObjectId] [uniqueidentifier] NULL,
		[Deleted] [bit] NULL,
		[Version] [int] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	)
END

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '525FE3EA-A4DF-49BB-A35D-B3A65EA16A93')
BEGIN
    INSERT INTO IzendaSystemSetting(Id,Name,Value,Deleted) VALUES ('525FE3EA-A4DF-49BB-A35D-B3A65EA16A93','ImportFileSystemPath','IzendaImport','0')
END

UPDATE IzendaDBVersion SET Version= '2.8.0';



-- ========================================================
-- v2.8.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.8.1';



-- ========================================================
-- v2.8.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.8.2';



-- ========================================================
-- v2.8.3
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.8.3';



-- ========================================================
-- v2.8.4
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.8.4';



-- ========================================================
-- v2.8.5
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.8.5';



-- ========================================================
-- v2.9.0
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaAdvancedSetting WHERE Id = '04D46221-24E0-4363-B2F6-99370D85EBE6')
BEGIN
    INSERT INTO IzendaAdvancedSetting(Id,Name,Value,[Type],Deleted) VALUES ('04D46221-24E0-4363-B2F6-99370D85EBE6','DefaultTheme',NULL,'Others',0)
END

GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaRole' AND COLUMN_NAME='ShowCheckedQuerySource')
BEGIN
	ALTER TABLE IzendaRole ADD ShowCheckedQuerySource bit NULL
END

GO

UPDATE IzendaDBVersion SET Version= '2.9.0';



-- ========================================================
-- v2.9.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.9.1';



-- ========================================================
-- v2.9.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.9.2';



-- ========================================================
-- v2.9.3
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.9.3';



-- ========================================================
-- v2.9.4
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.9.4';



-- ========================================================
-- v2.9.5
-- ========================================================
ALTER TABLE IzendaUser ALTER COLUMN DataOffset NUMERIC(10, 2);
ALTER TABLE IzendaUser ALTER COLUMN TimestampOffset NUMERIC(10, 2);

GO

UPDATE IzendaCity
SET CountryName = 'United States of America'
WHERE CountryCode = 'US'

GO

Update IzendaCountryCode
SET Name = 'United States of America'
WHERE Code2 = 'US'

UPDATE IzendaDBVersion SET Version= '2.9.5';



-- ========================================================
-- v2.10.0
-- ========================================================
ALTER TABLE IzendaUser ALTER COLUMN DataOffset NUMERIC(10, 2);
ALTER TABLE IzendaUser ALTER COLUMN TimestampOffset NUMERIC(10, 2);

GO

UPDATE IzendaCity
SET CountryName = 'United States of America'
WHERE CountryCode = 'US'

GO

Update IzendaCountryCode
SET Name = 'United States of America'
WHERE Code2 = 'US'

UPDATE IzendaDBVersion SET Version= '2.10.0';



-- ========================================================
-- v2.10.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.10.1';



-- ========================================================
-- v2.10.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.10.2';



-- ========================================================
-- v2.10.3
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.10.3';



-- ========================================================
-- v2.10.4
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.10.4';



-- ========================================================
-- v2.10.5
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.10.5';



-- ========================================================
-- v2.11.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaRelationship' AND COLUMN_NAME='HasBeenModified')
BEGIN
	ALTER TABLE IzendaRelationship ADD HasBeenModified bit NULL
END

GO

UPDATE IzendaDBVersion SET Version= '2.11.0';



-- ========================================================
-- v2.11.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.11.1';



-- ========================================================
-- v2.11.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.11.2';



-- ========================================================
-- v2.11.3
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.11.3';



-- ========================================================
-- v2.11.4
-- ========================================================
UPDATE IzendaDataFormat
SET GroupBy = 'hourandminute'
WHERE Category = 'Short Hour' AND DataType = 'Time' 
  
GO
  
UPDATE IzendaDataFormat
SET GroupBy = 'hourminuteandsecond'
WHERE Category = 'Long Hour' AND DataType = 'Time'

UPDATE IzendaDBVersion SET Version= '2.11.4';



-- ========================================================
-- v2.12.0
-- ========================================================
UPDATE IzendaDataFormat
SET GroupBy = 'hourandminute'
WHERE Category = 'Short Hour' AND DataType = 'Time' 
  
GO
  
UPDATE IzendaDataFormat
SET GroupBy = 'hourminuteandsecond'
WHERE Category = 'Long Hour' AND DataType = 'Time'

UPDATE IzendaDBVersion SET Version= '2.12.0';



-- ========================================================
-- v2.12.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.12.1';



-- ========================================================
-- v2.12.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.12.2';



-- ========================================================
-- v2.12.3
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.12.3';



-- ========================================================
-- v2.12.4
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.12.4';



-- ========================================================
-- v2.12.5
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.12.5';



-- ========================================================
-- v2.13.0
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.13.0';



-- ========================================================
-- v2.13.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.13.1';



-- ========================================================
-- v2.13.2
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.13.2';



-- ========================================================
-- v2.13.3
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.13.3';



-- ========================================================
-- v2.13.4
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.13.4';



-- ========================================================
-- v2.14.0
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.14.0';



-- ========================================================
-- v2.14.1
-- ========================================================

UPDATE IzendaDBVersion SET Version= '2.14.1';



-- ========================================================
-- v2.14.2
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaQuerySourceField' /* Table */
        AND si.name='IX_QSF_QuerySourceId' /* Index */
	)
	PRINT 'IX_QSF_QuerySourceId exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_QSF_QuerySourceId] ON [dbo].[IzendaQuerySourceField]
	(
		QuerySourceId ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.14.2';



-- ========================================================
-- v2.14.3
-- ========================================================
IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaQuerySourceField' /* Table */
        AND si.name='IX_QSF_QuerySourceId' /* Index */
	)
	PRINT 'IX_QSF_QuerySourceId exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_QSF_QuerySourceId] ON [dbo].[IzendaQuerySourceField]
	(
		QuerySourceId ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.14.3';



-- ========================================================
-- v2.15.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaFilterField' AND COLUMN_NAME='UseLookup')
BEGIN
	ALTER TABLE IzendaFilterField ADD UseLookup bit NULL 
	CONSTRAINT Default_IzendaFilterField_UseLookup
			DEFAULT (1)
	WITH VALUES
END

GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaFilterOperator' AND COLUMN_NAME='AllowLookup')
BEGIN
	ALTER TABLE IzendaFilterOperator ADD AllowLookup bit NULL
END

GO

UPDATE IzendaFilterOperator SET AllowLookup = 1 WHERE Id IN ('737307d1-1e5f-407f-889f-1b3c9a66dd6f', '042a04a3-dfe1-4ef9-bd27-1b657886f02e', 'bb2f8e2d-753e-4fc9-9646-1b977a043b9a', '003c0e13-cc3c-412f-8fee-1cf21aa51e31', '5ce630bc-6615-42c4-b11e-1d09c651eaae', '78ba4663-e8a4-407f-bab2-1dc014a4df56', '75fcf433-81f2-4767-94b7-1e4257b826c4', '5cdacf39-8eed-4ed3-8684-1e4461e85e1b', 'de9ab97b-4e57-4c8c-8415-1e5030415b50', '6bc89182-aa4c-4fa5-b151-208af7e8cd59');
UPDATE IzendaFilterOperator SET AllowLookup = 0 WHERE Id NOT IN ('737307d1-1e5f-407f-889f-1b3c9a66dd6f', '042a04a3-dfe1-4ef9-bd27-1b657886f02e', 'bb2f8e2d-753e-4fc9-9646-1b977a043b9a', '003c0e13-cc3c-412f-8fee-1cf21aa51e31', '5ce630bc-6615-42c4-b11e-1d09c651eaae', '78ba4663-e8a4-407f-bab2-1dc014a4df56', '75fcf433-81f2-4767-94b7-1e4257b826c4', '5cdacf39-8eed-4ed3-8684-1e4461e85e1b', 'de9ab97b-4e57-4c8c-8415-1e5030415b50', '6bc89182-aa4c-4fa5-b151-208af7e8cd59');

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaQuerySourceField' /* Table */
        AND si.name='IX_QSF_QuerySourceId' /* Index */
	)
	PRINT 'IX_QSF_QuerySourceId exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_QSF_QuerySourceId] ON [dbo].[IzendaQuerySourceField]
	(
		QuerySourceId ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version= '2.15.0';



-- ========================================================
-- v2.15.1
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCommonFilterField' AND COLUMN_NAME='Required')
BEGIN
	ALTER TABLE IzendaCommonFilterField ADD [Required] bit NULL
END

GO

UPDATE IzendaDBVersion SET Version= '2.15.1';



-- ========================================================
-- v2.16.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCommonFilterField' AND COLUMN_NAME='Required')
BEGIN
	ALTER TABLE IzendaCommonFilterField ADD [Required] bit NULL
END

GO
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaRelationship' AND COLUMN_NAME='PositionId')
BEGIN
	ALTER TABLE IzendaRelationship ADD PositionId int NULL
END

GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyPositionId')
BEGIN
	ALTER TABLE IzendaWorkspace ADD CopyPositionId bit NULL 
	DEFAULT (0)
	WITH VALUES
END

GO

IF EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS
                WHERE  TABLE_NAME='IzendaRelationship' AND COLUMN_NAME='HasBeenModified')
BEGIN
    ALTER TABLE IzendaRelationship DROP COLUMN HasBeenModified
END

GO

UPDATE IzendaWorkspace SET CopyPositionId = 0 WHERE CopyPositionId = NULL;

UPDATE IzendaDBVersion SET Version= '2.16.0';



-- ========================================================
-- v2.17.0
-- ========================================================
UPDATE IzendaDBVersion SET Version = '2.17.0';


-- ========================================================
-- v2.17.1
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '1201F8C3-51AD-4B2C-84A4-9E76E844FB5B')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('1201F8C3-51AD-4B2C-84A4-9E76E844FB5B','Is Less Than (Date)',          '<','01076B28-8E77-4A54-95D8-060D142A77E6',461,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '80913480-5C91-46D0-B7BE-66A39726EB63')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('80913480-5C91-46D0-B7BE-66A39726EB63','Is Less Than (Date & Time)',   '<','01076B28-8E77-4A54-95D8-060D142A77E6',462,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '4041D0B0-593D-42D7-9650-C74DCA9DCA90')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('4041D0B0-593D-42D7-9650-C74DCA9DCA90','Is Less Than (Time)',          '<','01076B28-8E77-4A54-95D8-060D142A77E6',463,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = 'D7297AB0-935B-4EB5-B60A-172CFE9FD468')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('D7297AB0-935B-4EB5-B60A-172CFE9FD468','Is Greater Than (Date)',       '>','01076B28-8E77-4A54-95D8-060D142A77E6',471,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '89B448E7-418C-4FA3-A69A-08B58D87F144')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('89B448E7-418C-4FA3-A69A-08B58D87F144','Is Greater Than (Date & Time)','>','01076B28-8E77-4A54-95D8-060D142A77E6',472,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = 'A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5','Is Greater Than (Time)',       '>','01076B28-8E77-4A54-95D8-060D142A77E6',473,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '1201F8C3-51AD-4B2C-84A4-9E76E844FB5B')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('1201F8C3-51AD-4B2C-84A4-9E76E844FB5B', '1201F8C3-51AD-4B2C-84A4-9E76E844FB5B', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '80913480-5C91-46D0-B7BE-66A39726EB63')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('80913480-5C91-46D0-B7BE-66A39726EB63', '80913480-5C91-46D0-B7BE-66A39726EB63', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '4041D0B0-593D-42D7-9650-C74DCA9DCA90')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('4041D0B0-593D-42D7-9650-C74DCA9DCA90', '4041D0B0-593D-42D7-9650-C74DCA9DCA90', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = 'D7297AB0-935B-4EB5-B60A-172CFE9FD468')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('D7297AB0-935B-4EB5-B60A-172CFE9FD468', 'D7297AB0-935B-4EB5-B60A-172CFE9FD468', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '89B448E7-418C-4FA3-A69A-08B58D87F144')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('89B448E7-418C-4FA3-A69A-08B58D87F144', '89B448E7-418C-4FA3-A69A-08B58D87F144', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = 'A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5', 'A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5', 1, 0, '0')
END

UPDATE IzendaDBVersion SET Version = '2.17.1';



-- ========================================================
-- v2.18.0
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '1201F8C3-51AD-4B2C-84A4-9E76E844FB5B')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('1201F8C3-51AD-4B2C-84A4-9E76E844FB5B','Is Less Than (Date)',          '<','01076B28-8E77-4A54-95D8-060D142A77E6',461,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '80913480-5C91-46D0-B7BE-66A39726EB63')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('80913480-5C91-46D0-B7BE-66A39726EB63','Is Less Than (Date & Time)',   '<','01076B28-8E77-4A54-95D8-060D142A77E6',462,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '4041D0B0-593D-42D7-9650-C74DCA9DCA90')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('4041D0B0-593D-42D7-9650-C74DCA9DCA90','Is Less Than (Time)',          '<','01076B28-8E77-4A54-95D8-060D142A77E6',463,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = 'D7297AB0-935B-4EB5-B60A-172CFE9FD468')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('D7297AB0-935B-4EB5-B60A-172CFE9FD468','Is Greater Than (Date)',       '>','01076B28-8E77-4A54-95D8-060D142A77E6',471,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = '89B448E7-418C-4FA3-A69A-08B58D87F144')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('89B448E7-418C-4FA3-A69A-08B58D87F144','Is Greater Than (Date & Time)','>','01076B28-8E77-4A54-95D8-060D142A77E6',472,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperator WHERE Id = 'A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5')
BEGIN
    INSERT INTO IzendaFilterOperator(Id, Name, Label, OperatorGroupId, Position, AllowParameter, AllowLookup, Deleted) VALUES ('A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5','Is Greater Than (Time)',       '>','01076B28-8E77-4A54-95D8-060D142A77E6',473,0,0,'0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '1201F8C3-51AD-4B2C-84A4-9E76E844FB5B')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('1201F8C3-51AD-4B2C-84A4-9E76E844FB5B', '1201F8C3-51AD-4B2C-84A4-9E76E844FB5B', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '80913480-5C91-46D0-B7BE-66A39726EB63')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('80913480-5C91-46D0-B7BE-66A39726EB63', '80913480-5C91-46D0-B7BE-66A39726EB63', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '4041D0B0-593D-42D7-9650-C74DCA9DCA90')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('4041D0B0-593D-42D7-9650-C74DCA9DCA90', '4041D0B0-593D-42D7-9650-C74DCA9DCA90', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = 'D7297AB0-935B-4EB5-B60A-172CFE9FD468')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('D7297AB0-935B-4EB5-B60A-172CFE9FD468', 'D7297AB0-935B-4EB5-B60A-172CFE9FD468', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = '89B448E7-418C-4FA3-A69A-08B58D87F144')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('89B448E7-418C-4FA3-A69A-08B58D87F144', '89B448E7-418C-4FA3-A69A-08B58D87F144', 1, 0, '0')
END

IF NOT EXISTS (SELECT * FROM IzendaFilterOperatorRule WHERE Id = 'A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5')
BEGIN
    INSERT INTO IzendaFilterOperatorRule(Id, OperatorId, AllowNull, IsPairedValues, Deleted) VALUES ('A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5', 'A1F4A8C7-FBB5-4E65-931C-45E7B55B49C5', 1, 0, '0')
END

UPDATE IzendaDBVersion SET Version = '2.18.0';



-- ========================================================
-- v2.18.1
-- ========================================================
UPDATE IzendaDBVersion SET Version = '2.18.1';


-- ========================================================
-- v3.0.0
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.0.0';


-- ========================================================
-- v3.1.0
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.1.0';


-- ========================================================
-- v3.1.1
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.1.1';


-- ========================================================
-- v3.2.0
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.2.0';


-- ========================================================
-- v3.2.1
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.2.1';


-- ========================================================
-- v3.3.0
-- ========================================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaCacheMetadata]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaCacheMetadata]
	(		
		[CacheKey] [nvarchar](256) PRIMARY KEY,
		[CacheMetadata] [nvarchar](max) NULL,
		[CacheType] [int] NULL,
		[CreatedDate] [datetime] NULL		
	)
END
GO

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaCacheMetadata' /* Table */
        AND si.name='IX_CacheMetadata_Type_CreatedDate' /* Index */
	)
	PRINT 'IX_CacheMetadata_Type_CreatedDate exists!'
ELSE
	CREATE NONCLUSTERED INDEX [IX_CacheMetadata_Type_CreatedDate] ON [dbo].[IzendaCacheMetadata]
	(
		[CacheType] ASC,
		[CreatedDate] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'A3904C1A-78F0-473F-934C-72770F68FB04')
BEGIN
	INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('A3904C1A-78F0-473F-934C-72770F68FB04', 'SystemCacheTTL', '60',0);
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'F810BB22-FB58-4D6A-A971-AA7E2BB0B083')
BEGIN
	INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('F810BB22-FB58-4D6A-A971-AA7E2BB0B083', 'DataCacheTTL', '600',0);
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '6C34DD6A-EDC3-41D5-AC6E-6B6229DBD28E')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('6C34DD6A-EDC3-41D5-AC6E-6B6229DBD28E', 'IsEnableDataCache', '0',0);
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'E757F703-B4D8-40BA-81B7-E8018DADB8CA')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('E757F703-B4D8-40BA-81B7-E8018DADB8CA', 'DataCacheEvictionInterval', '600',0);
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '8C62A1F2-E607-40F6-B6E9-06F314A536D1')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('8C62A1F2-E607-40F6-B6E9-06F314A536D1', 'DataCacheRefreshInterval', '200',0);
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'DE8C7B55-F6DD-41F6-B3EF-22BBA68DFC15')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('DE8C7B55-F6DD-41F6-B3EF-22BBA68DFC15', 'DataCacheRefreshDuration', '100',0);
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'F810BB22-FB58-4D6A-A971-AA7E2BB0B084')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('F810BB22-FB58-4D6A-A971-AA7E2BB0B084', 'SystemCacheEvictionInterval', '3600','0');
END


UPDATE IzendaDBVersion SET Version = '3.3.0';



-- ========================================================
-- v3.3.1
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS

WHERE TABLE_NAME='IzendaSubscription' AND COLUMN_NAME='IsSubscriptionTimeZoneUsed')

BEGIN
    ALTER TABLE IzendaSubscription ADD IsSubscriptionTimeZoneUsed BIT NOT NULL DEFAULT(0)
END

GO

UPDATE IzendaDBVersion SET Version = '3.3.1';



-- ========================================================
-- v3.4.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS

WHERE TABLE_NAME='IzendaSubscription' AND COLUMN_NAME='IsSubscriptionTimeZoneUsed')

BEGIN
    ALTER TABLE IzendaSubscription ADD IsSubscriptionTimeZoneUsed BIT NOT NULL DEFAULT(0)
END

GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '4D0FCC3D-2617-430E-B95D-9E0C8C6FDCDC')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('4D0FCC3D-2617-430E-B95D-9E0C8C6FDCDC','PredictionServerIP','ExamplePSHostName:8000','0')
END
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaQuerySourceField' AND COLUMN_NAME='IsPredicated')
BEGIN
	Alter table IzendaQuerySourceField Add IsPredicated bit NUll
END
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaQuerySourceField' AND COLUMN_NAME='ModelName')
BEGIN
	Alter table IzendaQuerySourceField Add ModelName varchar(250) NUll
END
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaQuerySourceField' AND COLUMN_NAME='TargetValue')
BEGIN
	Alter table IzendaQuerySourceField Add TargetValue varchar(250) NUll
END
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaQuerySourceField' AND COLUMN_NAME='RelationColumn')
BEGIN
	Alter table IzendaQuerySourceField Add RelationColumn nvarchar(250) NUll
END
GO

UPDATE IzendaDBVersion SET Version = '3.4.0';




-- ========================================================
-- v3.4.1
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.4.1';




-- ========================================================
-- v3.4.2
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.4.2';




-- ========================================================
-- v3.5.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCountryCode' AND COLUMN_NAME='Coordinates')
BEGIN
	ALTER TABLE IzendaCountryCode ADD Coordinates nvarchar(max) NULL
END

GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCountryCode' AND COLUMN_NAME='Longitude')
BEGIN
	ALTER TABLE IzendaCountryCode ADD Longitude varchar(15) NULL
END

GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCountryCode' AND COLUMN_NAME='Latitude')
BEGIN
	ALTER TABLE IzendaCountryCode ADD Latitude varchar(15) NULL
END

GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaCountryCode' AND COLUMN_NAME='AlternateNames')
BEGIN
	ALTER TABLE IzendaCountryCode ADD AlternateNames nvarchar(255) NULL
END

GO


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaStateCode]') AND type in (N'U'))
BEGIN

	CREATE TABLE [dbo].[IzendaStateCode](
		[CountryCode] [varchar](255) NULL,	
		[CountryCode3] [varchar](255) NULL,
		[CountryName] [varchar](255) NULL,
		[Code] [varchar](255) NULL,
		[Name] [nvarchar](255) NULL,	
		[Latitude] [varchar](15) NULL,
		[Longitude] [varchar](15) NULL,
		[Coordinates] [nvarchar](max) NULL
	) ON [PRIMARY]

END


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaCountyCode]') AND type in (N'U'))
BEGIN

	CREATE TABLE [dbo].[IzendaCountyCode](
		[CountryCode] [varchar](255) NULL,	
		[CountryCode3] [varchar](255) NULL,
		[CountryName] [varchar](255) NULL,
		[StateCode] [varchar](255) NULL,
		[StateName] [varchar](255) NULL,
		[Code] [varchar](255) NULL,
		[Name] [nvarchar](255) NULL,
		[Latitude] [varchar](15) NULL,
		[Longitude] [varchar](15) NULL,
		[Coordinates] [nvarchar](max) NULL
	) ON [PRIMARY]

END


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaGoogleAPIKeySetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaGoogleAPIKeySetting](
	[Id] [uniqueidentifier] NOT NULL PRIMARY KEY,	
	[UseSystemConfiguration] [bit] NULL,
	[GoogleAPIKey] [nvarchar](500) NULL,
	[UseGEOCodingService] [bit] NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Version] [int] NULL,
	[Deleted] [bit] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL
)
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaAddressCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaAddressCode](
	[HashedValue] [nvarchar](100) NOT NULL PRIMARY KEY,	
	[Latitude] [varchar](250) NULL,
	[Longitude] [varchar](250) NULL,	
	[CreatedDate] [datetime] NULL
)
END

UPDATE IzendaDBVersion SET Version = '3.5.0';




-- ========================================================
-- v3.6.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaSecurityPolicy' AND COLUMN_NAME='HideUserId')
BEGIN
	ALTER TABLE IzendaSecurityPolicy ADD [HideUserId] bit NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaSecurityPolicy' AND COLUMN_NAME='HideUserProfile')
BEGIN
	ALTER TABLE IzendaSecurityPolicy ADD [HideUserProfile] bit NULL
END

UPDATE IzendaDBVersion SET Version = '3.6.0';


-- ========================================================
-- v3.7.0
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.7.0';


-- ========================================================
-- v3.7.1
-- ========================================================
UPDATE IzendaDBVersion SET Version = '3.7.1';




-- ========================================================
-- v3.7.2
-- ========================================================



IF NOT EXISTS (SELECT * FROM IzendaAdvancedSetting WHERE Id = '76005A0D-6D32-4813-8866-649D2705300D')
BEGIN
    INSERT INTO [IzendaAdvancedSetting]([Id],[Name],[Value], [DefaultValue], [Type], [TenantId], [Deleted]) 
VALUES('76005A0D-6D32-4813-8866-649D2705300D','SetRenderhtmlexportValue', '0', '0', 'Security', NULL, '0') 

END
GO

UPDATE IzendaDBVersion SET Version = '3.7.2';


-- ========================================================
-- v3.8.0
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaAdvancedSetting WHERE Id = '76005A0D-6D32-4813-8866-649D2705300D')
BEGIN
    INSERT INTO [IzendaAdvancedSetting]([Id],[Name],[Value], [DefaultValue], [Type], [TenantId], [Deleted]) 
VALUES('76005A0D-6D32-4813-8866-649D2705300D','SetRenderhtmlexportValue', '0', '0', 'Security', NULL, '0') 

END
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaRole' AND COLUMN_NAME='RoleType')
BEGIN
	ALTER TABLE IzendaRole ADD RoleType nvarchar(256) NULL
END

UPDATE IzendaDBVersion SET Version = '3.8.0';


-- ========================================================
-- v3.8.1
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'AA0B402B-3E34-4A3C-BE61-5744F1E0C594')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('AA0B402B-3E34-4A3C-BE61-5744F1E0C594','CookieSameSite','Lax',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'FBBC8DAD-834F-407F-8900-526743DE2DF6')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('FBBC8DAD-834F-407F-8900-526743DE2DF6','CookieSecure','0',0);
END
GO

UPDATE IzendaDBVersion SET Version = '3.8.1';


-- ========================================================
-- v3.8.2
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'AA0B402B-3E34-4A3C-BE61-5744F1E0C594')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('AA0B402B-3E34-4A3C-BE61-5744F1E0C594','CookieSameSite','Lax',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'FBBC8DAD-834F-407F-8900-526743DE2DF6')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('FBBC8DAD-834F-407F-8900-526743DE2DF6','CookieSecure','0',0);
END
GO

UPDATE IzendaDBVersion SET Version = '3.8.2';


-- ========================================================
-- v3.8.3
-- ========================================================

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'AA0B402B-3E34-4A3C-BE61-5744F1E0C594')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('AA0B402B-3E34-4A3C-BE61-5744F1E0C594','CookieSameSite','Lax',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'FBBC8DAD-834F-407F-8900-526743DE2DF6')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('FBBC8DAD-834F-407F-8900-526743DE2DF6','CookieSecure','0',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'BCD8E05E-60ED-4440-96A8-EF3EA91D6F86')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('BCD8E05E-60ED-4440-96A8-EF3EA91D6F86','IsEnableSystemCache','1','0')
END
GO


UPDATE IzendaDBVersion SET Version = '3.8.3';


-- ========================================================
-- v3.8.4
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'AA0B402B-3E34-4A3C-BE61-5744F1E0C594')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('AA0B402B-3E34-4A3C-BE61-5744F1E0C594','CookieSameSite','Lax',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'FBBC8DAD-834F-407F-8900-526743DE2DF6')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('FBBC8DAD-834F-407F-8900-526743DE2DF6','CookieSecure','0',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'BCD8E05E-60ED-4440-96A8-EF3EA91D6F86')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('BCD8E05E-60ED-4440-96A8-EF3EA91D6F86','IsEnableSystemCache','1','0')
END
GO


UPDATE IzendaDBVersion SET Version = '3.8.4';


-- ========================================================
-- v3.9.0
-- ========================================================
IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'BCD8E05E-60ED-4440-96A8-EF3EA91D6F86')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('BCD8E05E-60ED-4440-96A8-EF3EA91D6F86','IsEnableSystemCache','1',0)
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'AA0B402B-3E34-4A3C-BE61-5744F1E0C594')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('AA0B402B-3E34-4A3C-BE61-5744F1E0C594','CookieSameSite','Lax',0);
END
GO

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = 'FBBC8DAD-834F-407F-8900-526743DE2DF6')
BEGIN
    INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('FBBC8DAD-834F-407F-8900-526743DE2DF6','CookieSecure','0',0);
END
GO

ALTER TABLE [dbo].[IzendaUserPermission] ALTER COLUMN [AssignedTo] [nvarchar](MAX) NULL;
GO

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaReport' AND COLUMN_NAME='ReportMode')
BEGIN
ALTER TABLE [dbo].[IzendaReport] ADD [ReportMode] INT DEFAULT 0 WITH VALUES
END
GO

UPDATE IzendaDBVersion SET Version = '3.9.0';


-- ========================================================
-- v3.9.1
-- ========================================================

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNLQSchema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaNLQSchema](
	[DBName] [nvarchar](256) NOT NULL,
	[ConnectionId] [uniqueidentifier] NULL,
	[ISActive] [bit] NULL,
	[ISConfigured] [bit] NULL,
	[ISDeleted] [bit] NULL,
	[IzendaNLQSchemaStatus] [nvarchar](256) NULL
)
END

UPDATE IzendaDBVersion SET Version = '3.9.1';


-- ========================================================
-- v3.9.2
-- ========================================================

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNLQSchema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaNLQSchema](
	[DBName] [nvarchar](256) NOT NULL,
	[ConnectionId] [uniqueidentifier] NULL,
	[ISActive] [bit] NULL,
	[ISConfigured] [bit] NULL,
	[ISDeleted] [bit] NULL,
	[IzendaNLQSchemaStatus] [nvarchar](256) NULL
)
END

UPDATE IzendaDBVersion SET Version = '3.9.2';


-- ========================================================
-- v3.9.3
-- ========================================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNLQSchema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaNLQSchema](
    [DBName] [nvarchar](256) NOT NULL,
    [ConnectionId] [uniqueidentifier] NULL,
    [ISActive] [bit] NULL,
    [ISConfigured] [bit] NULL,
    [ISDeleted] [bit] NULL,
    [IzendaNLQSchemaStatus] [nvarchar](256) NULL,
    [TenantID] [nvarchar](256) NULL
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyDataConnector')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyDataConnector [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopySystemConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopySystemConfiguration [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyEmailConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyEmailConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyGoogleMapConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyGoogleMapConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyReportConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyReportConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyOnlySettings')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyOnlySettings [bit] NULL
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaWorkspaceSchedule]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[IzendaWorkspaceSchedule]
    (
        [Id] [uniqueidentifier] PRIMARY KEY,
        [WorkspaceId] [uniqueidentifier] NOT NULL,
        [Deleted] [bit] NULL,
        [Version] [int] NULL,
        [Created] [datetime] NULL,
        [CreatedBy] [nvarchar](256) NULL,
        [CreatedById] [uniqueidentifier] NULL,
        [Modified] [datetime] NULL,
        [ModifiedBy] [nvarchar](256) NULL,
        [Schedule] [nvarchar](max) NULL,
        [TimeZoneName] [nvarchar](256) NULL,
        [TimeZoneValue] [nvarchar](256) NULL,
        [StartDate] [datetime] NULL,
        [StartDateUtc] [datetime] NULL,
        [StartTime] [datetime] NULL,
        [RecurrenceType] [int] NULL,
        [RecurrencePattern] [int] NULL,
        [RecurrencePatternValue] [nvarchar](max) NULL,
        [IsEndless] [bit] NULL,
        [IsScheduled] [bit] NULL,
        [Occurrence] [int] NULL,
        [EndDate] [datetime] NULL,
        [EndDateUtc] [datetime] NULL,
        [LastSuccessfulRun] [nvarchar](500) NULL,
        [LastSuccessfulRunDate] [datetime] NULL,
        [NextScheduledRun] [nvarchar](500) NULL,
        [NextScheduledRunDate] [datetime] NULL
    )
END

UPDATE IzendaDBVersion SET Version = '3.9.3';


-- ========================================================
-- v3.9.4
-- ========================================================
ALTER TABLE [dbo].[IzendaConnection] ALTER COLUMN [ConnectionString] [nvarchar](MAX) NULL;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNLQSchema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaNLQSchema](
    [DBName] [nvarchar](256) NOT NULL,
    [ConnectionId] [uniqueidentifier] NULL,
    [ISActive] [bit] NULL,
    [ISConfigured] [bit] NULL,
    [ISDeleted] [bit] NULL,
    [IzendaNLQSchemaStatus] [nvarchar](256) NULL,
    [TenantID] [nvarchar](256) NULL
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyDataConnector')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyDataConnector [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopySystemConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopySystemConfiguration [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyEmailConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyEmailConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyGoogleMapConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyGoogleMapConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyReportConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyReportConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyOnlySettings')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyOnlySettings [bit] NULL
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaWorkspaceSchedule]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[IzendaWorkspaceSchedule]
    (
        [Id] [uniqueidentifier] PRIMARY KEY,
        [WorkspaceId] [uniqueidentifier] NOT NULL,
        [Deleted] [bit] NULL,
        [Version] [int] NULL,
        [Created] [datetime] NULL,
        [CreatedBy] [nvarchar](256) NULL,
        [CreatedById] [uniqueidentifier] NULL,
        [Modified] [datetime] NULL,
        [ModifiedBy] [nvarchar](256) NULL,
        [Schedule] [nvarchar](max) NULL,
        [TimeZoneName] [nvarchar](256) NULL,
        [TimeZoneValue] [nvarchar](256) NULL,
        [StartDate] [datetime] NULL,
        [StartDateUtc] [datetime] NULL,
        [StartTime] [datetime] NULL,
        [RecurrenceType] [int] NULL,
        [RecurrencePattern] [int] NULL,
        [RecurrencePatternValue] [nvarchar](max) NULL,
        [IsEndless] [bit] NULL,
        [IsScheduled] [bit] NULL,
        [Occurrence] [int] NULL,
        [EndDate] [datetime] NULL,
        [EndDateUtc] [datetime] NULL,
        [LastSuccessfulRun] [nvarchar](500) NULL,
        [LastSuccessfulRunDate] [datetime] NULL,
        [NextScheduledRun] [nvarchar](500) NULL,
        [NextScheduledRunDate] [datetime] NULL
    )
END

UPDATE IzendaDBVersion SET Version = '3.9.4';


-- ========================================================
-- v3.9.5
-- ========================================================
ALTER TABLE [dbo].[IzendaConnection] ALTER COLUMN [ConnectionString] [nvarchar](MAX) NULL;
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNLQSchema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaNLQSchema](
    [DBName] [nvarchar](256) NOT NULL,
    [ConnectionId] [uniqueidentifier] NULL,
    [ISActive] [bit] NULL,
    [ISConfigured] [bit] NULL,
    [ISDeleted] [bit] NULL,
    [IzendaNLQSchemaStatus] [nvarchar](256) NULL,
    [TenantID] [nvarchar](256) NULL
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyDataConnector')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyDataConnector [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopySystemConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopySystemConfiguration [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyEmailConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyEmailConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyGoogleMapConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyGoogleMapConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyReportConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyReportConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyOnlySettings')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyOnlySettings [bit] NULL
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaWorkspaceSchedule]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[IzendaWorkspaceSchedule]
    (
        [Id] [uniqueidentifier] PRIMARY KEY,
        [WorkspaceId] [uniqueidentifier] NOT NULL,
        [Deleted] [bit] NULL,
        [Version] [int] NULL,
        [Created] [datetime] NULL,
        [CreatedBy] [nvarchar](256) NULL,
        [CreatedById] [uniqueidentifier] NULL,
        [Modified] [datetime] NULL,
        [ModifiedBy] [nvarchar](256) NULL,
        [Schedule] [nvarchar](max) NULL,
        [TimeZoneName] [nvarchar](256) NULL,
        [TimeZoneValue] [nvarchar](256) NULL,
        [StartDate] [datetime] NULL,
        [StartDateUtc] [datetime] NULL,
        [StartTime] [datetime] NULL,
        [RecurrenceType] [int] NULL,
        [RecurrencePattern] [int] NULL,
        [RecurrencePatternValue] [nvarchar](max) NULL,
        [IsEndless] [bit] NULL,
        [IsScheduled] [bit] NULL,
        [Occurrence] [int] NULL,
        [EndDate] [datetime] NULL,
        [EndDateUtc] [datetime] NULL,
        [LastSuccessfulRun] [nvarchar](500) NULL,
        [LastSuccessfulRunDate] [datetime] NULL,
        [NextScheduledRun] [nvarchar](500) NULL,
        [NextScheduledRunDate] [datetime] NULL
    )
END

UPDATE IzendaDBVersion SET Version = '3.9.5';


-- ========================================================
-- v3.10.0
-- ========================================================
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaConnection' AND COLUMN_NAME='DatabaseUser')
BEGIN
    ALTER TABLE [IzendaConnection] ADD [DatabaseUser] [nvarchar](256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaGlobalDatabaseMapping' AND COLUMN_NAME='FromDatabaseUser')
BEGIN
    ALTER TABLE [IzendaGlobalDatabaseMapping] ADD [FromDatabaseUser] [nvarchar](256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaGlobalDatabaseMapping' AND COLUMN_NAME='ToDatabaseUser')
BEGIN
    ALTER TABLE [IzendaGlobalDatabaseMapping] ADD [ToDatabaseUser] [nvarchar](256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspaceMapping' AND COLUMN_NAME='FromDatabaseUser')
BEGIN
    ALTER TABLE [IzendaWorkspaceMapping] ADD [FromDatabaseUser] [nvarchar](256) NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspaceMapping' AND COLUMN_NAME='ToDatabaseUser')
BEGIN
    ALTER TABLE [IzendaWorkspaceMapping] ADD [ToDatabaseUser] [nvarchar](256) NULL
END
GO

ALTER TABLE [dbo].[IzendaConnection] ALTER COLUMN [ConnectionString] [nvarchar](MAX) NULL;
GO


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNLQSchema]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaNLQSchema](
    [DBName] [nvarchar](256) NOT NULL,
    [ConnectionId] [uniqueidentifier] NULL,
    [ISActive] [bit] NULL,
    [ISConfigured] [bit] NULL,
    [ISDeleted] [bit] NULL,
    [IzendaNLQSchemaStatus] [nvarchar](256) NULL,
    [TenantID] [nvarchar](256) NULL
)
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaNLQSchema' AND COLUMN_NAME='TenantID')
BEGIN
   ALTER TABLE [IzendaNLQSchema] ADD [TenantID] [nvarchar](256) NULL
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyDataConnector')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyDataConnector [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopySystemConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopySystemConfiguration [bit] NULL
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyEmailConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyEmailConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyGoogleMapConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyGoogleMapConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyReportConfiguration')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyReportConfiguration [bit] NULL
END

IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaWorkspace' AND COLUMN_NAME='CopyOnlySettings')
BEGIN
    ALTER TABLE IzendaWorkspace ADD CopyOnlySettings [bit] NULL
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaWorkspaceSchedule]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[IzendaWorkspaceSchedule]
    (
        [Id] [uniqueidentifier] PRIMARY KEY,
        [WorkspaceId] [uniqueidentifier] NOT NULL,
        [Deleted] [bit] NULL,
        [Version] [int] NULL,
        [Created] [datetime] NULL,
        [CreatedBy] [nvarchar](256) NULL,
        [CreatedById] [uniqueidentifier] NULL,
        [Modified] [datetime] NULL,
        [ModifiedBy] [nvarchar](256) NULL,
        [Schedule] [nvarchar](max) NULL,
        [TimeZoneName] [nvarchar](256) NULL,
        [TimeZoneValue] [nvarchar](256) NULL,
        [StartDate] [datetime] NULL,
        [StartDateUtc] [datetime] NULL,
        [StartTime] [datetime] NULL,
        [RecurrenceType] [int] NULL,
        [RecurrencePattern] [int] NULL,
        [RecurrencePatternValue] [nvarchar](max) NULL,
        [IsEndless] [bit] NULL,
        [IsScheduled] [bit] NULL,
        [Occurrence] [int] NULL,
        [EndDate] [datetime] NULL,
        [EndDateUtc] [datetime] NULL,
        [LastSuccessfulRun] [nvarchar](500) NULL,
        [LastSuccessfulRunDate] [datetime] NULL,
        [NextScheduledRun] [nvarchar](500) NULL,
        [NextScheduledRunDate] [datetime] NULL
    )
END
IF NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='IzendaRelationship' AND COLUMN_NAME='Disabled')
BEGIN
    ALTER TABLE [IzendaRelationship] ADD [Disabled] bit NULL
END;
GO

UPDATE IzendaRelationship SET [Disabled] = 0
WHERE [Disabled] IS NULL;

UPDATE IzendaDBVersion SET Version = '3.10.0';

-- ========================================================
-- v3.10.4
-- ========================================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaExportQueue]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaExportQueue]
	(
		[Id] [uniqueidentifier] PRIMARY KEY,
		[ReportID] [uniqueidentifier] NULL,
		[DashboardID] [uniqueidentifier] NULL,
		[TenantID] [uniqueidentifier] NULL,
		[Status] [smallint] NOT NULL,
		[FilterValueSelection][nvarchar](MAX) NULL,
		[ExportFileType] [nvarchar](50) NOT NULL, 
	    	[CreatedByUserId] [uniqueidentifier] NOT NULL,
		[Name] [nvarchar](512) NOT NULL,
		[FileName] [nvarchar](512) NULL,
		[Reapeat] [bit] NOT NULL,
		[Refreshed] [datetime] NULL,
		[Deleted] [bit] NULL,
		[Version] [int] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	) ON [PRIMARY]
END


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaExportQueueFilterField]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IzendaExportQueueFilterField](
	[Id] [uniqueidentifier] NOT NULL,
	[FilterFieldId] [uniqueidentifier] NULL,
	[CommonFilterFieldId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
	[OperatorId] [uniqueidentifier] NULL,
	[OperatorSetting] [nvarchar](100) NULL,
	[ExportQueueId] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NULL,
	[Version] [int] NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[Modified] [datetime] NULL,
	[ModifiedBy] [nvarchar](256) NULL
 CONSTRAINT [PK_IzendaExportQueueFilterField] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaExportQueueSetting]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaExportQueueSetting](
		[Id] [uniqueidentifier] NOT NULL PRIMARY KEY,	
		[IsEnableAsyncExporting] [bit] NULL,
		[IsEnableSmartExporting] [bit] NULL,
		[AsyncExportingInterval] [int] NULL,
		[AsyncRefreshExportingInterval] [int] NULL,
		[AsyncArchiveExportingInterval] [int] NULL,
		[AsyncExportingPath] [nvarchar](256) NULL,
		[IsEnableAsyncExportingEncryption] [bit] NULL,
		[ExportQueueFileStorage] [int] NOT NULL,
		[AzureFileServiceConnectionString] [nvarchar](256) NULL,
		[AWSS3BucketName] [nvarchar](256) NULL,
		[AWSAccessKey] [nvarchar](256) NULL,
		[AWSSecretKey] [nvarchar](256) NULL,
		[Region] [nvarchar](256) NULL,
		[Deleted] [bit] NULL,
		[Version] [int] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	)
END

IF NOT EXISTS (SELECT * FROM IzendaExportQueueSetting WHERE Id = '0E9936B5-6837-4265-96E7-0EB2354D94DC')
BEGIN
	INSERT INTO [dbo].[IzendaExportQueueSetting]([Id], [IsEnableAsyncExporting], [IsEnableSmartExporting], [AsyncExportingInterval],[AsyncRefreshExportingInterval],[AsyncArchiveExportingInterval],[AsyncExportingPath],[IsEnableAsyncExportingEncryption],[Version],[Deleted],[ExportQueueFileStorage]) VALUES('0E9936B5-6837-4265-96E7-0EB2354D94DC',0,0,0,0,0,'',0,1,0,0);
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaSmartExportSetting]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaSmartExportSetting](
		[Id] [uniqueidentifier] NOT NULL PRIMARY KEY,
		[ReportDashBoard] [nvarchar](256) NOT NULL,
		[AverageRenderTime] [float] NOT NULL,
		[ReportPartCount] [smallint] NOT NULL,
		[Deleted] [bit] NULL,
		[Version] [int] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	)
END

IF NOT EXISTS (SELECT * FROM IzendaSmartExportSetting WHERE Id = '91010F2E-3C22-46D6-9B4A-1B933D0341EF')
BEGIN
	INSERT INTO [dbo].[IzendaSmartExportSetting]([Id],[ReportDashBoard],[AverageRenderTime],[ReportPartCount],[Deleted]) VALUES('91010F2E-3C22-46D6-9B4A-1B933D0341EF','ALL',10, 3,0);
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaSmartExportOptions]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaSmartExportOptions](
		[Id] [uniqueidentifier] NOT NULL PRIMARY KEY,
		[ReportPartType] [nvarchar](50) NOT NULL,
		[GridReportPartType] [nvarchar](50) NULL,
		[ChartReportPartType] [nvarchar](50) NULL,
		[IsEmabaedSubReport] [bit] NULL,
		[IsSeperator] [bit] NULL,
		[IsCalculatedField] [bit] NULL,
		[ExportFileType] [nvarchar](50) NULL, 
		[Deleted] [bit] NULL,
		[Version] [int] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	);
END

IF NOT EXISTS (SELECT * FROM IzendaSmartExportOptions WHERE Id = '7DED2613-D8A8-4182-AA86-0302E49E7043')
BEGIN
	INSERT INTO [dbo].[IzendaSmartExportOptions]( [Id],[ReportPartType],[Deleted],[IsEmabaedSubReport],[IsCalculatedField]) Values ('7DED2613-D8A8-4182-AA86-0302E49E7043','ALL',0,1,1);
END


IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaNotification]') AND type in (N'U'))
BEGIN
	CREATE TABLE [dbo].[IzendaNotification]
	(
		[Id] [uniqueidentifier] PRIMARY KEY,
		[NotificationMessageID] [smallint] NOT NULL,
		[UserID] [uniqueidentifier] NOT NULL,
		[ReplaceValues] [nvarchar](max) NULL,
		[AssoicatedID] [uniqueidentifier] NULL,
		[Status] [smallint] NOT NULL,
		[Deleted] [bit] NULL,
		[Version] [int] NULL,
		[Created] [datetime] NULL,
		[CreatedBy] [nvarchar](256) NULL,
		[Modified] [datetime] NULL,
		[ModifiedBy] [nvarchar](256) NULL
	) ON [PRIMARY]
END

IF NOT EXISTS (SELECT * FROM IzendaSystemSetting WHERE Id = '9127F51B-502A-4725-8766-8BE2CC78A6BE')
BEGIN
	INSERT INTO [IzendaSystemSetting]([Id],[Name],[Value],[Deleted]) VALUES ('9127F51B-502A-4725-8766-8BE2CC78A6BE','NotificationInterval','60',0);
END

UPDATE IzendaDBVersion SET Version = '3.10.4';


-- ========================================================
-- v3.10.5
-- ========================================================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaTenantTenantGroup]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[IzendaTenantTenantGroup](
        [TenantId] [uniqueidentifier] NOT NULL,
        [TenantGroupId] [uniqueidentifier] NOT NULL
    ) ON [PRIMARY]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IzendaTenantGroup]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[IzendaTenantGroup](
        [Id] [uniqueidentifier] PRIMARY KEY,
        [Name] [nvarchar](256) NOT NULL,
        [Version] [int] NULL,
        [Created] [datetime] NULL,
        [CreatedBy] [nvarchar](256) NULL,
        [Modified] [datetime] NULL,
        [ModifiedBy] [nvarchar](256) NULL,
        [Deleted] [bit] NULL
    ) ON [PRIMARY]
END

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaTenantTenantGroup' /* Table */
        AND si.name='IX_TenantTenantGroup_TenantId' /* Index */
)
    PRINT 'IX_TenantTenantGroup_TenantId exists!'
ELSE
    CREATE NONCLUSTERED INDEX [IX_TenantTenantGroup_TenantId] ON [dbo].[IzendaTenantTenantGroup]
    (
        [TenantId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

IF EXISTS (
    SELECT 1
    FROM sys.indexes AS si
    JOIN sys.objects AS so on si.object_id=so.object_id
    JOIN sys.schemas AS sc on so.schema_id=sc.schema_id
    WHERE 
        so.name ='IzendaTenantTenantGroup' /* Table */
        AND si.name='IX_TenantTenantGroup_TenantGroupId' /* Index */
)
    PRINT 'IX_TenantTenantGroup_TenantGroupId exists!'
ELSE
    CREATE NONCLUSTERED INDEX [IX_TenantTenantGroup_TenantGroupId] ON [dbo].[IzendaTenantTenantGroup]
    (
        [TenantGroupId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
;

UPDATE IzendaDBVersion SET Version = '3.10.5';

