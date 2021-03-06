USE [demo_netcore]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 09/07/2018 10:24:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Logo] [varchar](50) NULL,
	[SystemCnName] [varchar](50) NULL,
	[SystemEnName] [varchar](100) NULL,
	[Color] [varchar](10) NULL,
	[Banner] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[Remark] [varchar](max) NULL,
	[AdminId] [int] NOT NULL,
	[PushOffline] [bit] NOT NULL,
	[SMSAllow] [bit] NOT NULL,
	[MemberId] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (1, N'111', N'Upload/Logo/161110115613.gif', N'111', N'111', N'226E5B', NULL, NULL, CAST(0x0000A65801157780 AS DateTime), N'', 1, 0, 0, 6)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (2, N'222', N'', N'222', N'222', N'FFFFFF', NULL, NULL, CAST(0x0000A66C00F9DEC1 AS DateTime), N'', 1, 0, 0, 0)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (3, N'333', N'Upload/Logo/161110115744.gif', N'333', N'333', N'DAE022', NULL, NULL, CAST(0x0000A6BA00C521F5 AS DateTime), N'', 1, 0, 1, 6)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (4, N'444', NULL, N'444', N'444', N'0066AA', NULL, NULL, CAST(0x0000A94600EE84E6 AS DateTime), N'备注', 1, 0, 0, 0)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (5, N'555', NULL, N'555', N'555', N'0066AA', NULL, NULL, CAST(0x0000A94600F579F0 AS DateTime), N'备注', 1, 0, 0, 0)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (6, N'666', NULL, N'666', N'666', N'0066AA', NULL, NULL, CAST(0x0000A95300F117F6 AS DateTime), N'经销商A', 2, 0, 0, 4)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (7, N'777', NULL, N'777', N'777', N'0066AA', NULL, NULL, CAST(0x0000A95300F3A130 AS DateTime), N'客户AAA', 2, 0, 0, 8)
INSERT [dbo].[Company] ([Id], [Name], [Logo], [SystemCnName], [SystemEnName], [Color], [Banner], [Phone], [AddTime], [Remark], [AdminId], [PushOffline], [SMSAllow], [MemberId]) VALUES (8, N'888', NULL, N'888', N'888', N'0066AA', NULL, NULL, CAST(0x0000A9530102DBA2 AS DateTime), N'后台添加', 2, 0, 0, 2)
