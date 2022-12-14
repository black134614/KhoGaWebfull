USE [ShopingDB]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[BannerID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[ButtonContent] [nvarchar](50) NULL,
	[PicturePath] [nvarchar](max) NULL,
	[ProductID] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[BannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[Position] [int] NULL,
	[Status] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oder]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oder](
	[OderID] [int] IDENTITY(1,1) NOT NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[ProductID] [int] NULL,
	[PaymentID] [int] NULL,
	[ShipingID] [int] NULL,
	[Discount] [float] NULL,
	[TotalAmount] [float] NULL,
	[IsComfirm] [bit] NULL,
	[ComfirmDate] [datetime] NULL,
	[IsSend] [bit] NULL,
	[SendDate] [datetime] NULL,
	[IsCompleted] [bit] NULL,
	[CompletedDate] [datetime] NULL,
	[IsCancel] [bit] NULL,
	[CancelDate] [datetime] NULL,
	[CancelNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_Oder] PRIMARY KEY CLUSTERED 
(
	[OderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderDetail](
	[OderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OderDetail] PRIMARY KEY CLUSTERED 
(
	[OderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](100) NULL,
	[Detail] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
	[UnitPrice] [float] NULL,
	[Discount] [float] NULL,
	[ProductCost] [float] NULL,
	[UnitInStock] [int] NULL,
	[ProductAvailable] [bit] NULL,
	[Detail] [ntext] NULL,
	[PicturePath] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CategoryID] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
	[OpenSellingDate] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[IsChoice] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receive]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receive](
	[ReceiveID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[Note] [nvarchar](max) NULL,
	[UserID] [int] NULL,
	[NameReceive] [nvarchar](50) NULL,
 CONSTRAINT [PK_Receive] PRIMARY KEY CLUSTERED 
(
	[ReceiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](250) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shiping]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shiping](
	[ShipingID] [int] IDENTITY(1,1) NOT NULL,
	[ShipingName] [nvarchar](100) NULL,
	[Detail] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Shiping] PRIMARY KEY CLUSTERED 
(
	[ShipingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Email] [varchar](254) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[Address] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 06/12/2022 10:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[WishListID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_WishList] PRIMARY KEY CLUSTERED 
(
	[WishListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([BannerID], [Title], [Description], [ButtonContent], [PicturePath], [ProductID], [Note], [Status], [CreateBy], [CreateTime]) VALUES (1, N'Cần một cái bụng đói để thưởng thức món ăn', N'Giảm 20% với đơn hàng trên 2 triệu . Hãy đến order ngay hoặc liên hệ 035.462.4774 Mr.Luan để order ngay nhé!', N'Xem Thêm', N'assets/img/slider/1-remove-bg.png', 5, N'ko', 1, 1, CAST(N'2022-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Banner] ([BannerID], [Title], [Description], [ButtonContent], [PicturePath], [ProductID], [Note], [Status], [CreateBy], [CreateTime]) VALUES (2, N'Khô gà của chúng tôi hiện nay đã có TÚI nhé!', N'Giảm 15% với đơn hàng trên 2 triệu . Hãy đến order ngay hoặc liên hệ 035.462.4774 Mr.Luan để order ngay nhé!', N'Chi Tiết', N'assets/img/slider/3-removebg-preview.png', 6, N'ko', 1, 1, CAST(N'2022-12-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Position], [Status], [CreateBy], [CreateTime], [UpdateTime]) VALUES (1, N'Thịt khô', N'Thịt khô', 1, 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Category] ([CategoryID], [Title], [Description], [Position], [Status], [CreateBy], [CreateTime], [UpdateTime]) VALUES (2, N'Hạt dinh dưỡng', N'Hạt dinh dưỡng', 2, 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [Title], [Description], [UnitPrice], [Discount], [ProductCost], [UnitInStock], [ProductAvailable], [Detail], [PicturePath], [Note], [Status], [CategoryID], [CreateBy], [CreateTime], [OpenSellingDate], [UpdateTime], [IsChoice]) VALUES (5, N'Khô gà lá chanh', N'Khô gà lá chanh', 250000, 10000, 200000, 99, 1, N'Ngày càng có nhiều món ăn vặt ra đời giúp thỏa mãn vị giác của người thưởng thức, nổi bật là giới trẻ. Đặc biệt, không thể không nhắc đến món khô gà lá chanh đang “gây sốt” gần đây. Vậy do đâu mà món ăn này lại nhận được sự yêu thích đến như vậy? Cùng Windy Food tìm hiểu tất tần tật về món ăn này nhé.
Khô gà lá chanh Windy Food có gì đặc biệt?
Món ăn với nguyên liệu chính là thịt gà tươi, có độ săn và chắc mới cho ra thành phẩm ngon. Kết hợp với các nguyên liệu như ớt, sả mang đến sự cay nồng và không thể thiếu là lá chanh có hương thơm giúp kích thích vị giác.Thịt gà sau khi chế biến với ớt, sả cùng lá chanh có mùi thơm nức mũi. Kết hợp với các gia vị như đường, nước mắm, bột nêm mà mang vị ngọt, cay hòa quyện khó tả. Khô gà lá chanh ngon thì phải có màu vàng nâu bắt mắt, thịt gà dai, giòn nhưng mềm dễ cắn đứt. Bạn sẽ khó lòng mà thoát khỏi hương vị của món khô gà lá chanh đấy.Giá khô gà lá chanh tại Windy Food
Giá khô gà lá chanh hiện nay trên thị trường hiện nay dao động từ 140.000 - 360.000 một ký. Tùy vào nguyên liệu đầu vào và quy trình sản xuất. Giá thành thường tỷ lệ thuận với chất lượng và độ ngon của món ăn này. Vậy giá khô gà ngon tại Windy Food là bao nhiêu? Mời bạn cùng tham khảo:', N'/assets/img/product/main-product/kho-ga-la-chanh-cay-nhieu.jpg', NULL, 1, 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [UnitPrice], [Discount], [ProductCost], [UnitInStock], [ProductAvailable], [Detail], [PicturePath], [Note], [Status], [CategoryID], [CreateBy], [CreateTime], [OpenSellingDate], [UpdateTime], [IsChoice]) VALUES (6, N'GẠO ST TÍM THAN SÓC TRĂNG [TÚI 2KG]', N'GẠO ST TÍM THAN SÓC TRĂNG [TÚI 2KG]', 102000, 2000, 90000, 99, 1, N'GẠO ST TÍM THAN SÓC TRĂNG [TÚI 2KG]', N'/assets/img/product/main-product/hat-dinh duong-3.jpg', NULL, 1, 2, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [UnitPrice], [Discount], [ProductCost], [UnitInStock], [ProductAvailable], [Detail], [PicturePath], [Note], [Status], [CategoryID], [CreateBy], [CreateTime], [OpenSellingDate], [UpdateTime], [IsChoice]) VALUES (7, N'Mực khô rim me', N'Mực khô rim me là món ăn dân dã được chế biến từ mực nguyên con vô cùng hấp dẫn', 175000, 20000, 120000, 78, 0, N'- Hàng chuẩn loại 1.

- Chế biến theo công thức đặc biệt.

- Nguyên liệu chính gốc.

- Quy trình sản xuất - đóng gói sạch - an toàn.

- Đạt tiêu chuẩn chất lượng xuất khẩu.

- Xuất xứ: Bình Định.

- Trọng lượng: 500g.', N'/assets/img/product/main-product/muc-kho-rim-me-dd1_thumb.jpg', N'khong', 0, 1, 1, CAST(N'2022-12-06T00:00:00.000' AS DateTime), CAST(N'2023-05-06T00:00:00.000' AS DateTime), CAST(N'2022-12-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [UnitPrice], [Discount], [ProductCost], [UnitInStock], [ProductAvailable], [Detail], [PicturePath], [Note], [Status], [CategoryID], [CreateBy], [CreateTime], [OpenSellingDate], [UpdateTime], [IsChoice]) VALUES (8, N'Khô gà bơ tỏi', N'Món ăn vặt này có nguyên liệu chính là thịt gà, mà thịt phải tươi, có độ săn chắc thì thành phẩm mới ngon, mới cho ra màu vàng ươm cuốn hút. ', 250000, 5000, 200000, 50, 0, N'- Hàng chuẩn, loại 1.
 
- Chế biến theo công thức đặc biệt.
 
- Chế biến, đóng gói, vệ sinh, an toàn.
 
- Trọng lượng: 1 Kg.
 ', N'/assets/img/product/main-product/kho-ga-bo-toi_(1).jpg', N'khong', 0, 1, 1, CAST(N'2022-12-06T00:00:00.000' AS DateTime), CAST(N'2023-06-06T00:00:00.000' AS DateTime), CAST(N'2022-12-06T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [UnitPrice], [Discount], [ProductCost], [UnitInStock], [ProductAvailable], [Detail], [PicturePath], [Note], [Status], [CategoryID], [CreateBy], [CreateTime], [OpenSellingDate], [UpdateTime], [IsChoice]) VALUES (9, N'Khô gà ít cay - làm thủ công', N'Khô gà xé ít cay - chế biến thủ công - chất lượng', 300000, 10000, 200000, 45, 1, N'Ngày càng có nhiều món ăn vặt ra đời giúp thỏa mãn vị giác của người thưởng thức, nổi bật là giới trẻ. Đặc biệt, không thể không nhắc đến món khô gà lá chanh đang “gây sốt” gần đây. Vậy do đâu mà món ăn này lại nhận được sự yêu thích đến như vậy? Cùng Windy Food tìm hiểu tất tần tật về món ăn này nhé.
Khô gà lá chanh Windy Food có gì đặc biệt?
Món ăn với nguyên liệu chính là thịt gà tươi, có độ săn và chắc mới cho ra thành phẩm ngon. Kết hợp với các nguyên liệu như ớt, sả mang đến sự cay nồng và không thể thiếu là lá chanh có hương thơm giúp kích thích vị giác.Thịt gà sau khi chế biến với ớt, sả cùng lá chanh có mùi thơm nức mũi. Kết hợp với các gia vị như đường, nước mắm, bột nêm mà mang vị ngọt, cay hòa quyện khó tả. Khô gà lá chanh ngon thì phải có màu vàng nâu bắt mắt, thịt gà dai, giòn nhưng mềm dễ cắn đứt. Bạn sẽ khó lòng mà thoát khỏi hương vị của món khô gà lá chanh đấy.Giá khô gà lá chanh tại Windy Food
Giá khô gà lá chanh hiện nay trên thị trường hiện nay dao động từ 140.000 - 360.000 một ký. Tùy vào nguyên liệu đầu vào và quy trình sản xuất. Giá thành thường tỷ lệ thuận với chất lượng và độ ngon của món ăn này. Vậy giá khô gà ngon tại Windy Food là bao nhiêu? Mời bạn cùng tham khảo:', N'/assets/img/product/main-product/kho-ga-la-chanh-it-cay.jpg', N'a', 1, 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [Title], [Description], [UnitPrice], [Discount], [ProductCost], [UnitInStock], [ProductAvailable], [Detail], [PicturePath], [Note], [Status], [CategoryID], [CreateBy], [CreateTime], [OpenSellingDate], [UpdateTime], [IsChoice]) VALUES (10, N'Khô gà siêu cay - hủ thuỷ tinh', N'Khô gà chanh - ớt cay đựng tron ghủ thuỷ tinh', 30000, 1000, 25000, 599, 1, N'Ngày càng có nhiều món ăn vặt ra đời giúp thỏa mãn vị giác của người thưởng thức, nổi bật là giới trẻ. Đặc biệt, không thể không nhắc đến món khô gà lá chanh đang “gây sốt” gần đây. Vậy do đâu mà món ăn này lại nhận được sự yêu thích đến như vậy? Cùng Windy Food tìm hiểu tất tần tật về món ăn này nhé.
Khô gà lá chanh Windy Food có gì đặc biệt?
Món ăn với nguyên liệu chính là thịt gà tươi, có độ săn và chắc mới cho ra thành phẩm ngon. Kết hợp với các nguyên liệu như ớt, sả mang đến sự cay nồng và không thể thiếu là lá chanh có hương thơm giúp kích thích vị giác.Thịt gà sau khi chế biến với ớt, sả cùng lá chanh có mùi thơm nức mũi. Kết hợp với các gia vị như đường, nước mắm, bột nêm mà mang vị ngọt, cay hòa quyện khó tả. Khô gà lá chanh ngon thì phải có màu vàng nâu bắt mắt, thịt gà dai, giòn nhưng mềm dễ cắn đứt. Bạn sẽ khó lòng mà thoát khỏi hương vị của món khô gà lá chanh đấy.Giá khô gà lá chanh tại Windy Food
Giá khô gà lá chanh hiện nay trên thị trường hiện nay dao động từ 140.000 - 360.000 một ký. Tùy vào nguyên liệu đầu vào và quy trình sản xuất. Giá thành thường tỷ lệ thuận với chất lượng và độ ngon của món ăn này. Vậy giá khô gà ngon tại Windy Food là bao nhiêu? Mời bạn cùng tham khảo:', N'/assets/img/product/main-product/kho-ga-la-chanh-cay-dang-hu.jpg', N'q', 1, 1, 1, CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), CAST(N'2022-11-30T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Detail]) VALUES (1, N'admin role')
INSERT [dbo].[Role] ([RoleID], [Detail]) VALUES (2, N'User role')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [FullName], [Email], [PhoneNumber], [Address], [Status], [CreateTime], [Note], [RoleID]) VALUES (1, N'admin', N'admin', N'admin', N'admin@gmail.com', N'0354624774', N'binh duong', 1, CAST(N'2022-11-27T00:00:00.000' AS DateTime), N'account của admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
