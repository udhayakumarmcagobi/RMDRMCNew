USE [RMDRMCNew]
GO
/****** Object:  Table [dbo].[PaymentTerm]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentTerm]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PaymentTerm](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PaymentTerm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OtherDetail]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OtherDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OtherDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TIN] [nvarchar](100) NULL,
	[CST] [nvarchar](100) NULL,
	[ExciseNo] [nvarchar](100) NULL,
	[Range] [nvarchar](100) NULL,
	[Division] [nvarchar](100) NULL,
	[VAT] [nvarchar](100) NULL,
 CONSTRAINT [PK_OtherDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccountManager]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountManager]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountManager](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AccountManager] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AccessDetails]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccessDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccessDetails](
	[AccessID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_AccessDetails] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MainScreen]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MainScreen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MainScreen](
	[ScreenID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_MainScreen] PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Designation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Designation](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginID] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](10) NULL,
	[Email] [nvarchar](20) NULL,
	[Comments] [nvarchar](max) NULL,
	[RoleID] [bigint] NOT NULL,
	[Activate] [bit] NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[State]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[State](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NOT NULL,
	[CountryID] [bigint] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DepartmentID] [bigint] NULL,
	[DesignationID] [bigint] NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](15) NULL,
	[Fax] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ChildScreen]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChildScreen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChildScreen](
	[ScreenID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[MainScreenID] [bigint] NOT NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_ChildScreen] PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Address]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Address](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Area] [nvarchar](200) NULL,
	[District] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[StateID] [bigint] NULL,
	[Pincode] [bigint] NULL,
	[CountryID] [bigint] NULL,
	[Email] [nvarchar](100) NULL,
	[Http] [nvarchar](100) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleDetails](
	[RoleID] [bigint] NOT NULL,
	[ScreenID] [bigint] NOT NULL,
	[AccessID] [int] NOT NULL,
	[Activate] [bit] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Manufacturer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Manufacturer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Code] [nvarchar](10) NULL,
	[Rating] [bigint] NULL,
	[Activate] [bit] NULL,
	[PaymentTermID] [bigint] NULL,
	[AddressID] [bigint] NULL,
	[OtherDetailID] [bigint] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Rating] [bigint] NULL,
	[InvCustomerName] [nvarchar](100) NULL,
	[ParentID] [bigint] NULL,
	[CustomerRRPLID] [bigint] NULL,
	[CreditLimit] [nvarchar](20) NULL,
	[AccountManagerID] [int] NULL,
	[PaymentTermID] [bigint] NULL,
	[AddressID] [bigint] NULL,
	[OtherDetailID] [bigint] NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vendor](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Rating] [bigint] NULL,
	[Activate] [bit] NULL,
	[POName] [nvarchar](100) NULL,
	[PaymentTermID] [bigint] NULL,
	[AddressID] [bigint] NULL,
	[OtherDetailID] [bigint] NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VendorContactMapping]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VendorContactMapping](
	[VendorID] [bigint] NOT NULL,
	[ContactID] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ManufacturerVendorMapping]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManufacturerVendorMapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ManufacturerVendorMapping](
	[ManufacturerID] [bigint] NOT NULL,
	[VendorID] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ManufacturerContactMapping]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ManufacturerContactMapping](
	[ManufacturerID] [bigint] NOT NULL,
	[ContactID] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CustomerContactMapping]    Script Date: 10/07/2017 13:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CustomerContactMapping](
	[CustomerID] [bigint] NOT NULL,
	[ContactID] [bigint] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Default [DF_ChildScreen_Activate]    Script Date: 10/07/2017 13:22:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ChildScreen_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChildScreen]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ChildScreen_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ChildScreen] ADD  CONSTRAINT [DF_ChildScreen_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [DF_MainScreen_Activate]    Script Date: 10/07/2017 13:22:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MainScreen_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[MainScreen]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MainScreen_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MainScreen] ADD  CONSTRAINT [DF_MainScreen_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [DF_Roles_Activate]    Script Date: 10/07/2017 13:22:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Roles_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Roles_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [DF_Users_Activate]    Script Date: 10/07/2017 13:22:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [Users_IsAdmin]    Script Date: 10/07/2017 13:22:27 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[Users_IsAdmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Users_IsAdmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
END


End
GO
/****** Object:  ForeignKey [FK_Address_Country]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
/****** Object:  ForeignKey [FK_Address_State]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_State]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_State]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_State]
GO
/****** Object:  ForeignKey [FK_ChildScreen_MainScreen]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChildScreen_MainScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChildScreen]'))
ALTER TABLE [dbo].[ChildScreen]  WITH CHECK ADD  CONSTRAINT [FK_ChildScreen_MainScreen] FOREIGN KEY([MainScreenID])
REFERENCES [dbo].[MainScreen] ([ScreenID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChildScreen_MainScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChildScreen]'))
ALTER TABLE [dbo].[ChildScreen] CHECK CONSTRAINT [FK_ChildScreen_MainScreen]
GO
/****** Object:  ForeignKey [FK_Contact_Department]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Department]
GO
/****** Object:  ForeignKey [FK_Contact_Designation]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Designation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Designation] FOREIGN KEY([DesignationID])
REFERENCES [dbo].[Designation] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Designation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Designation]
GO
/****** Object:  ForeignKey [FK_Customer_AccountManager]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_AccountManager]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_AccountManager] FOREIGN KEY([AccountManagerID])
REFERENCES [dbo].[AccountManager] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_AccountManager]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_AccountManager]
GO
/****** Object:  ForeignKey [FK_Customer_Address]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Address]
GO
/****** Object:  ForeignKey [FK_Customer_CustomerParent]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_CustomerParent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerParent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Customer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_CustomerParent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_CustomerParent]
GO
/****** Object:  ForeignKey [FK_Customer_OtherDetail]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_OtherDetail] FOREIGN KEY([OtherDetailID])
REFERENCES [dbo].[OtherDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_OtherDetail]
GO
/****** Object:  ForeignKey [FK_Customer_PaymentTerm]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_PaymentTerm] FOREIGN KEY([PaymentTermID])
REFERENCES [dbo].[PaymentTerm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_PaymentTerm]
GO
/****** Object:  ForeignKey [FK_CustomerContactMapping_Contact1]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Contact1]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_CustomerContactMapping_Contact1] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Contact1]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping] CHECK CONSTRAINT [FK_CustomerContactMapping_Contact1]
GO
/****** Object:  ForeignKey [FK_CustomerContactMapping_Customer]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_CustomerContactMapping_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping] CHECK CONSTRAINT [FK_CustomerContactMapping_Customer]
GO
/****** Object:  ForeignKey [FK_Manufacturer_Address]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_Address]
GO
/****** Object:  ForeignKey [FK_Manufacturer_OtherDetail]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_OtherDetail] FOREIGN KEY([OtherDetailID])
REFERENCES [dbo].[OtherDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_OtherDetail]
GO
/****** Object:  ForeignKey [FK_Manufacturer_PaymentTerm]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_PaymentTerm] FOREIGN KEY([PaymentTermID])
REFERENCES [dbo].[PaymentTerm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_PaymentTerm]
GO
/****** Object:  ForeignKey [FK_ManufacturerContactMapping_Contact]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerContactMapping_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping] CHECK CONSTRAINT [FK_ManufacturerContactMapping_Contact]
GO
/****** Object:  ForeignKey [FK_ManufacturerContactMapping_Manufacturer]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerContactMapping_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping] CHECK CONSTRAINT [FK_ManufacturerContactMapping_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ManufacturerVendorMapping_Manufacturer]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerVendorMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerVendorMapping]'))
ALTER TABLE [dbo].[ManufacturerVendorMapping]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerVendorMapping_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerVendorMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerVendorMapping]'))
ALTER TABLE [dbo].[ManufacturerVendorMapping] CHECK CONSTRAINT [FK_ManufacturerVendorMapping_Manufacturer]
GO
/****** Object:  ForeignKey [FK_RoleDetails_AccessDetails]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_AccessDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_AccessDetails] FOREIGN KEY([AccessID])
REFERENCES [dbo].[AccessDetails] ([AccessID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_AccessDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_AccessDetails]
GO
/****** Object:  ForeignKey [FK_RoleDetails_ChildScreen]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_ChildScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_ChildScreen] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[ChildScreen] ([ScreenID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_ChildScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_ChildScreen]
GO
/****** Object:  ForeignKey [FK_RoleDetails_Roles]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_Roles]
GO
/****** Object:  ForeignKey [FK_State_Country]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_State_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[State]'))
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_State_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[State]'))
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Users_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Users_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  ForeignKey [FK_Vendor_Address]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_Address]
GO
/****** Object:  ForeignKey [FK_Vendor_OtherDetail]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_OtherDetail] FOREIGN KEY([OtherDetailID])
REFERENCES [dbo].[OtherDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_OtherDetail]
GO
/****** Object:  ForeignKey [FK_Vendor_PaymentTerm]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_PaymentTerm] FOREIGN KEY([PaymentTermID])
REFERENCES [dbo].[PaymentTerm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_PaymentTerm]
GO
/****** Object:  ForeignKey [FK_VendorContactMapping_Contact]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_VendorContactMapping_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping] CHECK CONSTRAINT [FK_VendorContactMapping_Contact]
GO
/****** Object:  ForeignKey [FK_VendorContactMapping_Vendor]    Script Date: 10/07/2017 13:22:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_VendorContactMapping_Vendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping] CHECK CONSTRAINT [FK_VendorContactMapping_Vendor]
GO
