USE [RMDRMCNew]
GO
/****** Object:  Table [dbo].[PaymentTerm]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[OtherDetail]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 10/08/2017 09:23:08 ******/
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
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (10, N'NewTesting', 1)
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (11, N'VendorManager', 0)
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (12, N'New Role Testing', 1)
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (13, N'Vendor Test Role', 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[AccountManager]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[AccessDetails]    Script Date: 10/08/2017 09:23:08 ******/
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
SET IDENTITY_INSERT [dbo].[AccessDetails] ON
INSERT [dbo].[AccessDetails] ([AccessID], [Description]) VALUES (1, N'No Access')
INSERT [dbo].[AccessDetails] ([AccessID], [Description]) VALUES (2, N'Only View')
INSERT [dbo].[AccessDetails] ([AccessID], [Description]) VALUES (3, N'Both View and Modify')
SET IDENTITY_INSERT [dbo].[AccessDetails] OFF
/****** Object:  Table [dbo].[MainScreen]    Script Date: 10/08/2017 09:23:08 ******/
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
SET IDENTITY_INSERT [dbo].[MainScreen] ON
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (1, N'UserManagement', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (2, N'Masters', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (3, N'VendorManagement', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (4, N'POManagement', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (5, N'InventoryManagement', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (6, N'JobManagement', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (7, N'InvoiceManagement', 1)
INSERT [dbo].[MainScreen] ([ScreenID], [Name], [Activate]) VALUES (8, N'Reports', 1)
SET IDENTITY_INSERT [dbo].[MainScreen] OFF
/****** Object:  Table [dbo].[Designation]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 10/08/2017 09:23:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[LoginID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](15) NULL,
	[Mobile] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
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
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserID], [LoginID], [Password], [FirstName], [LastName], [Address], [Phone], [Mobile], [Email], [Comments], [RoleID], [Activate], [IsAdmin]) VALUES (1, N'admin', N'admin123', N'Admin', N'udhay', N'admin address', N'044987888', N'948343430', N'admin1232434535454@gmail.com', N'Admin user comments', 10, 1, 1)
INSERT [dbo].[Users] ([UserID], [LoginID], [Password], [FirstName], [LastName], [Address], [Phone], [Mobile], [Email], [Comments], [RoleID], [Activate], [IsAdmin]) VALUES (2, N'testuser', N'user123', N'testfirstname', N'testlastname', N'test address', N'0443534343', N'884257690', N'admin123243453445454@gmail.com', N'comments', 11, 0, 0)
INSERT [dbo].[Users] ([UserID], [LoginID], [Password], [FirstName], [LastName], [Address], [Phone], [Mobile], [Email], [Comments], [RoleID], [Activate], [IsAdmin]) VALUES (3, N'admin123', N'admin123', N'newadmin', N'lastnamenewadmin', N'test address', N'0443534343', N'884257690', N'admin123243453445454@gmail.com', N'test comments', 10, 1, 0)
INSERT [dbo].[Users] ([UserID], [LoginID], [Password], [FirstName], [LastName], [Address], [Phone], [Mobile], [Email], [Comments], [RoleID], [Activate], [IsAdmin]) VALUES (4, N'newadmin', N'admin123', N'newadmin', N'newadmin', N'test', N'0443534343', N'884257690', N'admin123243453fdfs5454@gmail.com', N'test', 13, 1, 0)
INSERT [dbo].[Users] ([UserID], [LoginID], [Password], [FirstName], [LastName], [Address], [Phone], [Mobile], [Email], [Comments], [RoleID], [Activate], [IsAdmin]) VALUES (5, N'udhay123', N'udhay123', N'newadmin123', N'lastnamenewadmin', NULL, N'044987888', N'98439834', N'admin123243453fdfdsffs5454@gmail.com', NULL, 11, 1, 0)
INSERT [dbo].[Users] ([UserID], [LoginID], [Password], [FirstName], [LastName], [Address], [Phone], [Mobile], [Email], [Comments], [RoleID], [Activate], [IsAdmin]) VALUES (6, N'vendor', N'vendor123', N'vendorfirstname', N'vendorlastname', N'test', N'0443534343', N'884257690', N'rerererere@gmail.com', NULL, 11, 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[State]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Contact]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[ChildScreen]    Script Date: 10/08/2017 09:23:08 ******/
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
SET IDENTITY_INSERT [dbo].[ChildScreen] ON
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (1, N'ManageUser', 1, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (2, N'ManageRoles', 1, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (3, N'Size', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (4, N'Description', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (5, N'Property', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (6, N'Category', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (7, N'Manufacturer', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (8, N'Vendor', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (9, N'Customer', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (10, N'Item', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (11, N'Machine', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (12, N'Process/Department', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (13, N'Component', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (14, N'Job Card Component Process', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (15, N'Job Card Process and Component', 2, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (16, N'Enquiry', 3, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (17, N'Quotation', 3, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (18, N'Quotation Acceptance', 3, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (19, N'Indent', 4, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (20, N'Approve Indent', 4, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (21, N'Generate PO', 4, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (22, N'Approve PO', 4, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (23, N'GRN', 5, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (24, N'GRN Inspection', 5, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (25, N'Material Issue/Returns', 5, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (26, N'Job Card', 6, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (27, N'Job Scheduling', 6, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (28, N'Job Process Scheduling', 6, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (29, N'DC', 7, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (30, N'Department Wise', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (31, N'Job Card Wise', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (32, N'Component Wise', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (33, N'Material Inward', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (34, N'Material Issue', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (35, N'Material Returns', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (36, N'Inventory', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (37, N'Machine', 8, 1)
INSERT [dbo].[ChildScreen] ([ScreenID], [Name], [MainScreenID], [Activate]) VALUES (38, N'Purchase Order Pending', 8, 1)
SET IDENTITY_INSERT [dbo].[ChildScreen] OFF
/****** Object:  Table [dbo].[Address]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 10/08/2017 09:23:08 ******/
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
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 3, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 18, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 20, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 21, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 22, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 27, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 28, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 29, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 30, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 31, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 32, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 33, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 34, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 35, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 36, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 37, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 38, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 23, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 24, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 25, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 26, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 27, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 28, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 5, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 6, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 7, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 8, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 9, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 10, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 11, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 12, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 13, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 14, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 15, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 16, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 17, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 18, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 19, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 20, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 21, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 22, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 29, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 30, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 31, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 32, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 33, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 34, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 35, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 36, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 37, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 38, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 16, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 17, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 18, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 19, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 20, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 21, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 22, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 23, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 24, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 25, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 26, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 27, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 28, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 29, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 30, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 31, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 32, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 33, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 34, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 35, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 36, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 37, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 38, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 3, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 4, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 5, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 6, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 7, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 8, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 9, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 10, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 11, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 12, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 13, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 14, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 15, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 3, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 4, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 5, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 6, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 7, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 8, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 9, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 10, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 11, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 12, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 13, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 14, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 15, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 16, 3, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 17, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 18, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 19, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 20, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 21, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 22, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 23, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 24, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 25, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 26, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 27, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 28, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 29, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 30, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 31, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 32, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 33, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 34, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 35, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 36, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 37, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 38, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 23, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 26, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 19, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 16, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 17, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 24, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 25, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 4, 2, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 6, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 3, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 4, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 5, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 7, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 8, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 9, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 10, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 11, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 12, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 13, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 14, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 15, 1, NULL)
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[Vendor]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[VendorContactMapping]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[ManufacturerVendorMapping]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[ManufacturerContactMapping]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Table [dbo].[CustomerContactMapping]    Script Date: 10/08/2017 09:23:08 ******/
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
/****** Object:  Default [DF_ChildScreen_Activate]    Script Date: 10/08/2017 09:23:08 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_ChildScreen_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChildScreen]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_ChildScreen_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ChildScreen] ADD  CONSTRAINT [DF_ChildScreen_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [DF_MainScreen_Activate]    Script Date: 10/08/2017 09:23:08 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_MainScreen_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[MainScreen]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_MainScreen_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MainScreen] ADD  CONSTRAINT [DF_MainScreen_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [DF_Roles_Activate]    Script Date: 10/08/2017 09:23:08 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Roles_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Roles]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Roles_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [DF_Users_Activate]    Script Date: 10/08/2017 09:23:08 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_Activate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_Activate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Activate]  DEFAULT ((0)) FOR [Activate]
END


End
GO
/****** Object:  Default [Users_IsAdmin]    Script Date: 10/08/2017 09:23:08 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[Users_IsAdmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[Users_IsAdmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
END


End
GO
/****** Object:  ForeignKey [FK_Address_Country]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
/****** Object:  ForeignKey [FK_Address_State]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_State]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Address_State]') AND parent_object_id = OBJECT_ID(N'[dbo].[Address]'))
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_State]
GO
/****** Object:  ForeignKey [FK_ChildScreen_MainScreen]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChildScreen_MainScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChildScreen]'))
ALTER TABLE [dbo].[ChildScreen]  WITH CHECK ADD  CONSTRAINT [FK_ChildScreen_MainScreen] FOREIGN KEY([MainScreenID])
REFERENCES [dbo].[MainScreen] ([ScreenID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChildScreen_MainScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChildScreen]'))
ALTER TABLE [dbo].[ChildScreen] CHECK CONSTRAINT [FK_ChildScreen_MainScreen]
GO
/****** Object:  ForeignKey [FK_Contact_Department]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Department]
GO
/****** Object:  ForeignKey [FK_Contact_Designation]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Designation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Designation] FOREIGN KEY([DesignationID])
REFERENCES [dbo].[Designation] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Contact_Designation]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contact]'))
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Designation]
GO
/****** Object:  ForeignKey [FK_Customer_AccountManager]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_AccountManager]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_AccountManager] FOREIGN KEY([AccountManagerID])
REFERENCES [dbo].[AccountManager] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_AccountManager]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_AccountManager]
GO
/****** Object:  ForeignKey [FK_Customer_Address]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Address]
GO
/****** Object:  ForeignKey [FK_Customer_CustomerParent]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_CustomerParent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerParent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Customer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_CustomerParent]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_CustomerParent]
GO
/****** Object:  ForeignKey [FK_Customer_OtherDetail]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_OtherDetail] FOREIGN KEY([OtherDetailID])
REFERENCES [dbo].[OtherDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_OtherDetail]
GO
/****** Object:  ForeignKey [FK_Customer_PaymentTerm]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_PaymentTerm] FOREIGN KEY([PaymentTermID])
REFERENCES [dbo].[PaymentTerm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_PaymentTerm]
GO
/****** Object:  ForeignKey [FK_CustomerContactMapping_Contact1]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Contact1]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_CustomerContactMapping_Contact1] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Contact1]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping] CHECK CONSTRAINT [FK_CustomerContactMapping_Contact1]
GO
/****** Object:  ForeignKey [FK_CustomerContactMapping_Customer]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_CustomerContactMapping_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerContactMapping_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerContactMapping]'))
ALTER TABLE [dbo].[CustomerContactMapping] CHECK CONSTRAINT [FK_CustomerContactMapping_Customer]
GO
/****** Object:  ForeignKey [FK_Manufacturer_Address]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_Address]
GO
/****** Object:  ForeignKey [FK_Manufacturer_OtherDetail]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_OtherDetail] FOREIGN KEY([OtherDetailID])
REFERENCES [dbo].[OtherDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_OtherDetail]
GO
/****** Object:  ForeignKey [FK_Manufacturer_PaymentTerm]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer]  WITH CHECK ADD  CONSTRAINT [FK_Manufacturer_PaymentTerm] FOREIGN KEY([PaymentTermID])
REFERENCES [dbo].[PaymentTerm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Manufacturer_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Manufacturer]'))
ALTER TABLE [dbo].[Manufacturer] CHECK CONSTRAINT [FK_Manufacturer_PaymentTerm]
GO
/****** Object:  ForeignKey [FK_ManufacturerContactMapping_Contact]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerContactMapping_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping] CHECK CONSTRAINT [FK_ManufacturerContactMapping_Contact]
GO
/****** Object:  ForeignKey [FK_ManufacturerContactMapping_Manufacturer]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerContactMapping_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerContactMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerContactMapping]'))
ALTER TABLE [dbo].[ManufacturerContactMapping] CHECK CONSTRAINT [FK_ManufacturerContactMapping_Manufacturer]
GO
/****** Object:  ForeignKey [FK_ManufacturerVendorMapping_Manufacturer]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerVendorMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerVendorMapping]'))
ALTER TABLE [dbo].[ManufacturerVendorMapping]  WITH CHECK ADD  CONSTRAINT [FK_ManufacturerVendorMapping_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ManufacturerVendorMapping_Manufacturer]') AND parent_object_id = OBJECT_ID(N'[dbo].[ManufacturerVendorMapping]'))
ALTER TABLE [dbo].[ManufacturerVendorMapping] CHECK CONSTRAINT [FK_ManufacturerVendorMapping_Manufacturer]
GO
/****** Object:  ForeignKey [FK_RoleDetails_AccessDetails]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_AccessDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_AccessDetails] FOREIGN KEY([AccessID])
REFERENCES [dbo].[AccessDetails] ([AccessID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_AccessDetails]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_AccessDetails]
GO
/****** Object:  ForeignKey [FK_RoleDetails_ChildScreen]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_ChildScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_ChildScreen] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[ChildScreen] ([ScreenID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_ChildScreen]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_ChildScreen]
GO
/****** Object:  ForeignKey [FK_RoleDetails_Roles]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RoleDetails_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[RoleDetails]'))
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_Roles]
GO
/****** Object:  ForeignKey [FK_State_Country]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_State_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[State]'))
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_State_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[State]'))
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
/****** Object:  ForeignKey [FK_Users_Roles]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Users_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Users_Roles]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
/****** Object:  ForeignKey [FK_Vendor_Address]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_Address]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_Address]
GO
/****** Object:  ForeignKey [FK_Vendor_OtherDetail]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_OtherDetail] FOREIGN KEY([OtherDetailID])
REFERENCES [dbo].[OtherDetail] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_OtherDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_OtherDetail]
GO
/****** Object:  ForeignKey [FK_Vendor_PaymentTerm]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_PaymentTerm] FOREIGN KEY([PaymentTermID])
REFERENCES [dbo].[PaymentTerm] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vendor_PaymentTerm]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vendor]'))
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_PaymentTerm]
GO
/****** Object:  ForeignKey [FK_VendorContactMapping_Contact]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_VendorContactMapping_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Contact]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping] CHECK CONSTRAINT [FK_VendorContactMapping_Contact]
GO
/****** Object:  ForeignKey [FK_VendorContactMapping_Vendor]    Script Date: 10/08/2017 09:23:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping]  WITH CHECK ADD  CONSTRAINT [FK_VendorContactMapping_Vendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VendorContactMapping_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[VendorContactMapping]'))
ALTER TABLE [dbo].[VendorContactMapping] CHECK CONSTRAINT [FK_VendorContactMapping_Vendor]
GO
