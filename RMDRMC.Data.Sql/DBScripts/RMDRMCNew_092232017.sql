USE [RMDRMCNew]
GO
/****** Object:  Table [dbo].[AccessDetails]    Script Date: 09/23/2017 15:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessDetails](
	[AccessID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_AccessDetails] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccessDetails] ON
INSERT [dbo].[AccessDetails] ([AccessID], [Description]) VALUES (1, N'No Access')
INSERT [dbo].[AccessDetails] ([AccessID], [Description]) VALUES (2, N'Only View')
INSERT [dbo].[AccessDetails] ([AccessID], [Description]) VALUES (3, N'Both View and Modify')
SET IDENTITY_INSERT [dbo].[AccessDetails] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 09/23/2017 15:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (10, N'NewTesting', 1)
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (11, N'VendorManager', 0)
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (12, N'New Role Testing', 1)
INSERT [dbo].[Roles] ([RoleID], [Name], [Activate]) VALUES (13, N'Vendor Test Role', 1)
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[MainScreen]    Script Date: 09/23/2017 15:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainScreen](
	[ScreenID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Activate] [bit] NULL,
 CONSTRAINT [PK_MainScreen] PRIMARY KEY CLUSTERED 
(
	[ScreenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  Table [dbo].[ChildScreen]    Script Date: 09/23/2017 15:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 09/23/2017 15:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[RoleID] [bigint] NOT NULL,
	[ScreenID] [bigint] NOT NULL,
	[AccessID] [int] NOT NULL,
	[Activate] [bit] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 3, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 4, 3, NULL)
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
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 26, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 27, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 28, 1, NULL)
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
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 3, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 4, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 5, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 6, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 7, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 8, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 9, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 10, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 11, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 12, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 13, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 14, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (11, 15, 3, NULL)
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
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 27, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 28, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 29, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 30, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 31, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 32, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 33, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 34, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 35, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 36, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 37, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 38, 1, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 3, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 4, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 5, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 6, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 7, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 8, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 9, 3, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 10, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 11, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 12, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 13, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 14, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 15, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (13, 16, 3, NULL)
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
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 20, 2, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 21, 2, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 22, 2, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 16, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 17, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 18, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 24, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (12, 25, 3, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 23, 2, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 24, 2, NULL)
INSERT [dbo].[RoleDetails] ([RoleID], [ScreenID], [AccessID], [Activate]) VALUES (10, 25, 2, NULL)
/****** Object:  Default [DF_ChildScreen_Activate]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[ChildScreen] ADD  CONSTRAINT [DF_ChildScreen_Activate]  DEFAULT ((0)) FOR [Activate]
GO
/****** Object:  Default [DF_MainScreen_Activate]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[MainScreen] ADD  CONSTRAINT [DF_MainScreen_Activate]  DEFAULT ((0)) FOR [Activate]
GO
/****** Object:  Default [DF_Roles_Activate]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_Activate]  DEFAULT ((0)) FOR [Activate]
GO
/****** Object:  ForeignKey [FK_ChildScreen_MainScreen]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[ChildScreen]  WITH CHECK ADD  CONSTRAINT [FK_ChildScreen_MainScreen] FOREIGN KEY([MainScreenID])
REFERENCES [dbo].[MainScreen] ([ScreenID])
GO
ALTER TABLE [dbo].[ChildScreen] CHECK CONSTRAINT [FK_ChildScreen_MainScreen]
GO
/****** Object:  ForeignKey [FK_RoleDetails_AccessDetails]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_AccessDetails] FOREIGN KEY([AccessID])
REFERENCES [dbo].[AccessDetails] ([AccessID])
GO
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_AccessDetails]
GO
/****** Object:  ForeignKey [FK_RoleDetails_ChildScreen]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_ChildScreen] FOREIGN KEY([ScreenID])
REFERENCES [dbo].[ChildScreen] ([ScreenID])
GO
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_ChildScreen]
GO
/****** Object:  ForeignKey [FK_RoleDetails_Roles]    Script Date: 09/23/2017 15:36:08 ******/
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoleDetails_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleDetails] CHECK CONSTRAINT [FK_RoleDetails_Roles]
GO
