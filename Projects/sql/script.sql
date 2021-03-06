USE [projects]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 22/02/2021 5:14:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 22/02/2021 5:14:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_title] [varchar](100) NULL,
	[quantity_total] [int] NULL,
	[quantity_booked] [int] NULL,
	[price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transation]    Script Date: 22/02/2021 5:14:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transation](
	[transation_id] [int] IDENTITY(1,1) NOT NULL,
	[transation_date_time] [datetime] NULL,
	[customer_id] [int] NULL,
	[product_id] [int] NULL,
	[transation_type] [varchar](5) NULL,
	[quantity] [int] NULL,
	[transation_id_parent] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[transation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 22/02/2021 5:14:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (1, N'raj')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (2, N'raj')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (3, N'Anna')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (4, N'anna')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (5, N'Ramkumar')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (6, N'Kannan')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (7, N'')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (8, N'Tamil')
INSERT [dbo].[customers] ([customer_id], [customer_name]) VALUES (9, N'Muthu')
SET IDENTITY_INSERT [dbo].[customers] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([product_id], [product_title], [quantity_total], [quantity_booked], [price]) VALUES (1, N'Ramco', 45, NULL, 50.0000)
INSERT [dbo].[products] ([product_id], [product_title], [quantity_total], [quantity_booked], [price]) VALUES (2, N'Ramcos', 45, NULL, 45.0000)
INSERT [dbo].[products] ([product_id], [product_title], [quantity_total], [quantity_booked], [price]) VALUES (3, N'Purcheschars', 54, NULL, 21.0000)
INSERT [dbo].[products] ([product_id], [product_title], [quantity_total], [quantity_booked], [price]) VALUES (4, N'Table fan', 5, NULL, 2633.0000)
INSERT [dbo].[products] ([product_id], [product_title], [quantity_total], [quantity_booked], [price]) VALUES (5, N'Mobile phone', 5, NULL, 23.0000)
INSERT [dbo].[products] ([product_id], [product_title], [quantity_total], [quantity_booked], [price]) VALUES (6, N'Mouse', 54, NULL, 21.0000)
SET IDENTITY_INSERT [dbo].[products] OFF
SET IDENTITY_INSERT [dbo].[transation] ON 

INSERT [dbo].[transation] ([transation_id], [transation_date_time], [customer_id], [product_id], [transation_type], [quantity], [transation_id_parent]) VALUES (1, CAST(N'2021-02-21T10:22:34.000' AS DateTime), 1, 1, N'in', 45, 1)
INSERT [dbo].[transation] ([transation_id], [transation_date_time], [customer_id], [product_id], [transation_type], [quantity], [transation_id_parent]) VALUES (2, CAST(N'2021-02-21T11:22:34.000' AS DateTime), 2, 2, N'out', 12, 2)
INSERT [dbo].[transation] ([transation_id], [transation_date_time], [customer_id], [product_id], [transation_type], [quantity], [transation_id_parent]) VALUES (3, CAST(N'2021-02-21T22:43:33.000' AS DateTime), 2, 2, N'OUT', 54, NULL)
INSERT [dbo].[transation] ([transation_id], [transation_date_time], [customer_id], [product_id], [transation_type], [quantity], [transation_id_parent]) VALUES (4, CAST(N'2021-02-21T22:54:26.000' AS DateTime), 5, 4, N'IN', 2, NULL)
INSERT [dbo].[transation] ([transation_id], [transation_date_time], [customer_id], [product_id], [transation_type], [quantity], [transation_id_parent]) VALUES (5, CAST(N'2021-02-21T23:05:42.000' AS DateTime), 6, 5, N'IN', 32, NULL)
INSERT [dbo].[transation] ([transation_id], [transation_date_time], [customer_id], [product_id], [transation_type], [quantity], [transation_id_parent]) VALUES (7, CAST(N'2021-02-22T03:11:27.000' AS DateTime), 2, 3, N'IN', 3, NULL)
SET IDENTITY_INSERT [dbo].[transation] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [name], [email], [password]) VALUES (1, N'mindfire', N'mindfire@gmail.com', N'mindfire')
SET IDENTITY_INSERT [dbo].[users] OFF
