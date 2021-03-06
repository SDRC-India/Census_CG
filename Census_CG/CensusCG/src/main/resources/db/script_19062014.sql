USE [esamikshya]
GO
/****** Object:  Table [dbo].[samikshya_feature]    Script Date: 06/19/2014 18:49:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[samikshya_feature](
	[feature_id] [int] IDENTITY(1,1) NOT NULL,
	[feature_code] [nvarchar](50) NOT NULL,
	[feature_name] [nvarchar](100) NULL,
	[description] [nvarchar](500) NULL,
	[last_updated_date] [datetime] NOT NULL,
	[last_updated_by] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_samikshya_features] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[samikshya_feature] ON
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (1, N'001', N'Home_Screen', N'description', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (2, N'002', N'About_Screen', N'description', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (3, N'003', N'Presentations', N'description', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (4, N'004', N'Download_Reports', N'description', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (5, N'005', N'Photographs', N'description', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (7, N'006', N'Reports', N'description', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (8, N'007', N'Login', N'description', CAST(0x0000A34F01202B72 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (9, N'008', N'Dashboard', N'description', CAST(0x0000A34F0121FFF0 AS DateTime), N'System')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (10, N'009', N'Contact', N'description', CAST(0x0000A34F012251D3 AS DateTime), N'System')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (11, N'010', N'User_Management', N'description', CAST(0x0000A34F0122C890 AS DateTime), N'System')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (12, N'011', N'Logs_Generation', N'description', CAST(0x0000A34F012338E0 AS DateTime), N'System')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (13, N'012', N'Workspace', N'description', CAST(0x0000A34F0123EABD AS DateTime), N'System')
INSERT [dbo].[samikshya_feature] ([feature_id], [feature_code], [feature_name], [description], [last_updated_date], [last_updated_by]) VALUES (14, N'013', N'Role_Management', N'description', CAST(0x0000A34F012EA8F0 AS DateTime), N'System')
SET IDENTITY_INSERT [dbo].[samikshya_feature] OFF
/****** Object:  Table [dbo].[samikshya_pemission]    Script Date: 06/19/2014 18:49:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[samikshya_pemission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[permission_code] [nvarchar](50) NOT NULL,
	[permission_name] [nvarchar](100) NULL,
	[description] [nvarchar](500) NULL,
	[last_updated_date] [datetime] NOT NULL,
	[last_updated_by] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_samikshya_pemissions] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[samikshya_pemission] ON
INSERT [dbo].[samikshya_pemission] ([permission_id], [permission_code], [permission_name], [description], [last_updated_date], [last_updated_by]) VALUES (1, N'001', N'View', N'View', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_pemission] ([permission_id], [permission_code], [permission_name], [description], [last_updated_date], [last_updated_by]) VALUES (2, N'002', N'Edit', N'Edit', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_pemission] ([permission_id], [permission_code], [permission_name], [description], [last_updated_date], [last_updated_by]) VALUES (3, N'003', N'Delete', N'Delete', CAST(0x0000A34F00000000 AS DateTime), N'Manisha')
INSERT [dbo].[samikshya_pemission] ([permission_id], [permission_code], [permission_name], [description], [last_updated_date], [last_updated_by]) VALUES (4, N'004', N'other permission', N'other description', CAST(0x0000A34500000000 AS DateTime), N'System')
SET IDENTITY_INSERT [dbo].[samikshya_pemission] OFF
/****** Object:  Table [dbo].[samikshya_feature_permission_mapping]    Script Date: 06/19/2014 18:49:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[samikshya_feature_permission_mapping](
	[feature_permission_id] [int] IDENTITY(1,1) NOT NULL,
	[feature_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
	[last_updated_by] [nvarchar](100) NOT NULL,
	[last_updated_date] [datetime] NOT NULL,
 CONSTRAINT [PK_samikshya_feature_permission_mapping] PRIMARY KEY CLUSTERED 
(
	[feature_permission_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[samikshya_feature_permission_mapping] ON
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (1, 1, 1, N'Admin', CAST(0x0000A32900000000 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (2, 2, 1, N'Admin', CAST(0x0000A33200000000 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (3, 3, 1, N'Admin', CAST(0x0000A34500C21933 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (20, 3, 2, N'Admin', CAST(0x0000A34500000000 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (21, 4, 1, N'System', CAST(0x0000A34F01294518 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (22, 5, 1, N'System', CAST(0x0000A34F01294AF3 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (23, 5, 2, N'System', CAST(0x0000A34F0129B31B AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (24, 7, 1, N'System', CAST(0x0000A34F0129CE04 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (25, 7, 2, N'System', CAST(0x0000A34F0129D2EC AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (26, 8, 1, N'System', CAST(0x0000A34F0129E6FB AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (27, 9, 1, N'System', CAST(0x0000A34F012A8075 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (28, 10, 1, N'System', CAST(0x0000A34F012B99D1 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (29, 11, 2, N'System', CAST(0x0000A34F012BD254 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (30, 12, 1, N'System', CAST(0x0000A34F012E0B74 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (32, 13, 1, N'System', CAST(0x0000A34F01307159 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (33, 13, 2, N'System', CAST(0x0000A34F01312147 AS DateTime))
INSERT [dbo].[samikshya_feature_permission_mapping] ([feature_permission_id], [feature_id], [permission_id], [last_updated_by], [last_updated_date]) VALUES (34, 14, 2, N'manisha@sdrc.co.in', CAST(0x0000A34F01318681 AS DateTime))
SET IDENTITY_INSERT [dbo].[samikshya_feature_permission_mapping] OFF
/****** Object:  Default [DF_samikshya_features_LastUpdatedTime]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_feature] ADD  CONSTRAINT [DF_samikshya_features_LastUpdatedTime]  DEFAULT (getdate()) FOR [last_updated_date]
GO
/****** Object:  Default [DF_samikshya_features_LastUpdatedBy]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_feature] ADD  CONSTRAINT [DF_samikshya_features_LastUpdatedBy]  DEFAULT ('System') FOR [last_updated_by]
GO
/****** Object:  Default [DF_samikshya_feature_permission_mapping_LastUpdatedBy]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_feature_permission_mapping] ADD  CONSTRAINT [DF_samikshya_feature_permission_mapping_LastUpdatedBy]  DEFAULT ('System') FOR [last_updated_by]
GO
/****** Object:  Default [DF_samikshya_feature_permission_mapping_LastUpdatedTime]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_feature_permission_mapping] ADD  CONSTRAINT [DF_samikshya_feature_permission_mapping_LastUpdatedTime]  DEFAULT (getdate()) FOR [last_updated_date]
GO
/****** Object:  Default [DF_samikshya_pemissions_LastUpdatedTime]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_pemission] ADD  CONSTRAINT [DF_samikshya_pemissions_LastUpdatedTime]  DEFAULT (getdate()) FOR [last_updated_date]
GO
/****** Object:  Default [DF_samikshya_pemissions_LastUpdatedBy]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_pemission] ADD  CONSTRAINT [DF_samikshya_pemissions_LastUpdatedBy]  DEFAULT ('System') FOR [last_updated_by]
GO
/****** Object:  ForeignKey [FK_samikshya_feature_permission_mapping_samikshya_features]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_feature_permission_mapping]  WITH CHECK ADD  CONSTRAINT [FK_samikshya_feature_permission_mapping_samikshya_features] FOREIGN KEY([feature_id])
REFERENCES [dbo].[samikshya_feature] ([feature_id])
GO
ALTER TABLE [dbo].[samikshya_feature_permission_mapping] CHECK CONSTRAINT [FK_samikshya_feature_permission_mapping_samikshya_features]
GO
/****** Object:  ForeignKey [FK_samikshya_feature_permission_mapping_samikshya_pemissions]    Script Date: 06/19/2014 18:49:57 ******/
ALTER TABLE [dbo].[samikshya_feature_permission_mapping]  WITH CHECK ADD  CONSTRAINT [FK_samikshya_feature_permission_mapping_samikshya_pemissions] FOREIGN KEY([permission_id])
REFERENCES [dbo].[samikshya_pemission] ([permission_id])
GO
ALTER TABLE [dbo].[samikshya_feature_permission_mapping] CHECK CONSTRAINT [FK_samikshya_feature_permission_mapping_samikshya_pemissions]
GO
