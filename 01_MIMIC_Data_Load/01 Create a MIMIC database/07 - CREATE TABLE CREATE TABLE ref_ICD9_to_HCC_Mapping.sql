USE [MIMIC3]
GO
/****** Object:  Table [dbo].[ref_ICD9_to_HCC_Mapping]    Script Date: 1/30/2018 10:08:24 AM ******/
DROP TABLE IF EXISTS [dbo].[ref_ICD9_to_HCC_Mapping]
GO
/****** Object:  Table [dbo].[ref_ICD9_to_HCC_Mapping]    Script Date: 1/30/2018 10:08:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_ICD9_to_HCC_Mapping](
	[ICD9_Code] [nvarchar](50) NOT NULL,
	[HCC_Code] [int] NOT NULL,
 CONSTRAINT [PK_ref_ICD9_to_HCC_Mapping] PRIMARY KEY CLUSTERED 
(
	[ICD9_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0031 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'00322', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'00323', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'00324', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0064 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0074 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0202 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0203 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0204 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0205 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0212 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0221 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0223 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0310 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0312 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03283', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0362 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03682', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0380 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03810', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03811', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03812', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03819', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0382 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0383 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03840', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03841', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03842', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03843', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03844', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'03849', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0388 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0389 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0391 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0400 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0402 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'04082', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'042 ', 1)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0545 ', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'05671', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07022', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07023', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07032', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07033', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07044', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07054', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0723 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0785 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'0786 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'07953', 1)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09487', 95)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09850', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09851', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09852', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09853', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09859', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'09886', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1026 ', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1124 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1125 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'11284', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1140 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1144 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1145 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'11505', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'11515', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'11595', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1173 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1175 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1177 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1212 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1221 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1300 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1304 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1308 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1361 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1363 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1410 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1411 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1412 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1413 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1414 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1415 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1416 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1418 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1419 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1420 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1421 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1422 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1428 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1429 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1430 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1431 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1438 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1439 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1440 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1441 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1448 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1449 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1450 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1451 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1452 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1453 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1454 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1455 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1456 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1458 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1459 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1460 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1461 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1462 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1463 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1464 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1465 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1466 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1467 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1468 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1469 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1470 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1471 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1472 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1473 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1478 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1479 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1480 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1481 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1482 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1483 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1488 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1489 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1490 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1491 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1498 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1499 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1500 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1501 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1502 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1503 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1504 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1505 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1508 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1509 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1510 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1511 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1512 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1513 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1514 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1515 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1516 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1518 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1519 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1520 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1521 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1522 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1523 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1528 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1529 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1530 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1531 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1532 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1533 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1534 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1535 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1536 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1537 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1538 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1539 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1540 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1541 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1542 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1543 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1548 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1550 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1551 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1552 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1560 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1561 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1562 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1568 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1569 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1570 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1571 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1572 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1573 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1574 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1578 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1579 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1580 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1588 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1589 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1590 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1591 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1598 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1599 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1600 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1601 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1602 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1603 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1604 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1605 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1608 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1609 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1610 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1611 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1612 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1613 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1618 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1619 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1620 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1622 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1623 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1624 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1625 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1628 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1629 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1630 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1631 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1638 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1639 ', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1640 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1641 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1642 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1643 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1648 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1649 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1650 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1658 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1659 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1700 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1701 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1702 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1703 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1704 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1705 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1706 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1707 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1708 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1709 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1710 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1712 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1713 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1714 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1715 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1716 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1717 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1718 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1719 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1720 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1721 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1722 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1723 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1724 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1725 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1726 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1727 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1728 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1729 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1740 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1741 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1742 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1743 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1744 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1745 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1746 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1748 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1749 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1750 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1759 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1760 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1761 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1762 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1763 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1764 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1765 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1768 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1769 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'179 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1800 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1801 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1808 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1809 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'181 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1820 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1821 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1828 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1830 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1832 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1833 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1834 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1835 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1838 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1839 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1840 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1841 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1842 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1843 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1844 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1848 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1849 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'185 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1860 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1869 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1871 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1872 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1873 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1874 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1875 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1876 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1877 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1878 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1879 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1880 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1881 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1882 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1883 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1884 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1885 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1886 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1887 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1888 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1889 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1890 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1891 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1892 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1893 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1894 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1898 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1899 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1900 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1901 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1902 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1903 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1904 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1905 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1906 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1907 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1908 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1909 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1910 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1911 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1912 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1913 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1914 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1915 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1916 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1917 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1918 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1919 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1920 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1921 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1922 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1923 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1928 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1929 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'193 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1940 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1941 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1943 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1944 ', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1945 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1946 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1948 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1949 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1950 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1951 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1952 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1953 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1954 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1955 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1958 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1960 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1961 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1962 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1963 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1965 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1966 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1968 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1969 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1970 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1971 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1972 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1973 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1974 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1975 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1976 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1977 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1978 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1980 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1981 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1982 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1983 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1984 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1985 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1986 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1987 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'19881', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'19882', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'19889', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1990 ', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1991 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'1992 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20000', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20001', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20002', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20003', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20004', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20005', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20006', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20007', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20008', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20010', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20011', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20012', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20013', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20014', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20015', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20016', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20017', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20018', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20020', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20021', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20022', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20023', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20024', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20025', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20026', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20027', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20028', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20030', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20031', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20032', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20033', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20034', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20035', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20036', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20037', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20038', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20040', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20041', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20042', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20043', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20044', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20045', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20046', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20047', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20048', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20050', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20051', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20052', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20053', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20054', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20055', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20056', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20057', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20058', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20060', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20061', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20062', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20063', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20064', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20065', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20066', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20067', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20068', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20070', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20071', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20072', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20073', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20074', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20075', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20076', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20077', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20078', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20080', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20081', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20082', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20083', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20084', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20085', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20086', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20087', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20088', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20100', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20101', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20102', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20103', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20104', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20105', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20106', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20107', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20108', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20110', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20111', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20112', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20113', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20114', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20115', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20116', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20117', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20118', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20120', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20121', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20122', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20123', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20124', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20125', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20126', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20127', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20128', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20140', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20141', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20142', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20143', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20144', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20145', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20146', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20147', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20148', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20150', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20151', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20152', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20153', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20154', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20155', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20156', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20157', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20158', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20160', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20161', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20162', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20163', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20164', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20165', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20166', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20167', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20168', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20170', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20171', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20172', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20173', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20174', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20175', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20176', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20177', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20178', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20190', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20191', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20192', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20193', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20194', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20195', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20196', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20197', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20198', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20200', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20201', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20202', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20203', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20204', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20205', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20206', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20207', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20208', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20210', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20211', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20212', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20213', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20214', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20215', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20216', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20217', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20218', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20220', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20221', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20222', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20223', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20224', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20225', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20226', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20227', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20228', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20230', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20231', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20232', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20233', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20234', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20235', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20236', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20237', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20238', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20240', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20241', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20242', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20243', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20244', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20245', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20246', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20247', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20248', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20250', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20251', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20252', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20253', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20254', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20255', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20256', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20257', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20258', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20260', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20261', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20262', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20263', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20264', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20265', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20266', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20267', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20268', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20270', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20271', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20272', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20273', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20274', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20275', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20276', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20277', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20278', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20280', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20281', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20282', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20283', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20284', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20285', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20286', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20287', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20288', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20290', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20291', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20292', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20293', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20294', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20295', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20296', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20297', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20298', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20300', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20301', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20302', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20310', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20311', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20312', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20380', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20381', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20382', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20400', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20401', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20402', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20410', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20411', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20412', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20420', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20421', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20422', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20480', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20481', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20482', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20490', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20491', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20492', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20500', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20501', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20502', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20510', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20511', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20512', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20520', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20521', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20522', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20530', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20531', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20532', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20580', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20581', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20582', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20590', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20591', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20592', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20600', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20601', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20602', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20610', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20611', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20612', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20620', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20621', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20622', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20680', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20681', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20682', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20690', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20691', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20692', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20700', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20701', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20702', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20710', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20711', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20712', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20720', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20721', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20722', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20780', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20781', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20782', 8)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20800', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20801', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20802', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20810', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20811', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20812', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20820', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20821', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20822', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20880', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20881', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20882', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20890', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20891', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20892', 9)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20900', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20901', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20902', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20903', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20910', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20911', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20912', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20913', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20914', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20915', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20916', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20917', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20920', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20921', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20922', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20923', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20924', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20925', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20926', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20927', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20929', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20930', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20931', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20932', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20933', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20934', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20935', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20936', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20970', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20971', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20972', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20973', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20974', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20975', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'20979', 7)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2250 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2251 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2252 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2253 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2254 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2258 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2259 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2273 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2274 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'22802', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2370 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2371 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2373 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2375 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2376 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23770', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23771', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23772', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23773', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23779', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2379 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23872', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23873', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23874', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'23875', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2396 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24900', 19)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24901', 19)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24910', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24911', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24920', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24921', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24930', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24931', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24940', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24941', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24950', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24951', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24960', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24961', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24970', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24971', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24980', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24981', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24990', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'24991', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25000', 19)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25001', 19)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25002', 19)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25003', 19)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25010', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25011', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25012', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25013', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25020', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25021', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25022', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25023', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25030', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25031', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25032', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25033', 17)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25040', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25041', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25042', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25043', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25050', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25051', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25052', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25053', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25060', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25061', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25062', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25063', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25070', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25071', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25072', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25073', 15)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25080', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25081', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25082', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25083', 16)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25090', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25091', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25092', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'25093', 18)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2514 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2515 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2518 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2519 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2592 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'260 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'261 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'262 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2630 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2631 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2632 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2638 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2639 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27700', 107)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27701', 107)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27702', 107)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27703', 107)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27709', 107)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27900', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27901', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27902', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27903', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27904', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27905', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27906', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27909', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27910', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27911', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27912', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27913', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27919', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2792 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2793 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27941', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27949', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27950', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27951', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27952', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'27953', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2798 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2799 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28241', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28242', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28260', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28261', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28262', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28263', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28264', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28268', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28269', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2830 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28310', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28311', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28319', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2832 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2839 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28401', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28409', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28411', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28412', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28419', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2842 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28481', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28489', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2849 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2860 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2861 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28800', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28801', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28802', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28803', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28804', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28809', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2881 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2882 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2884 ', 45)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'28952', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2910 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2911 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2912 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2913 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2914 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2915 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29181', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29182', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29189', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2919 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2920 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29211', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29212', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2922 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29281', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29282', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29283', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29284', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29285', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29289', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2929 ', 51)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29500', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29501', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29502', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29503', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29504', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29505', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29510', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29511', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29512', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29513', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29514', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29515', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29520', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29521', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29522', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29523', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29524', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29525', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29530', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29531', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29532', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29533', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29534', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29535', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29540', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29541', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29542', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29543', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29544', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29545', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29550', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29551', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29552', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29553', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29554', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29555', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29560', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29561', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29562', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29563', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29564', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29565', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29570', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29571', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29572', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29573', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29574', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29575', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29580', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29581', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29582', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29583', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29584', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29585', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29590', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29591', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29592', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29593', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29594', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29595', 54)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29600', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29601', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29602', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29603', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29604', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29605', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29606', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29610', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29611', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29612', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29613', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29614', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29615', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29616', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29620', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29621', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29622', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29623', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29624', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29625', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29626', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29630', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29631', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29632', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29633', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29634', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29635', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29636', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29640', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29641', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29642', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29643', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29644', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29645', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29646', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29650', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29651', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29652', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29653', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29654', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29655', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29656', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29660', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29661', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29662', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29663', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29664', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29665', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29666', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2967 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29680', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29681', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29682', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29689', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29690', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'29699', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2970 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2971 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2972 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2973 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2978 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'2979 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30300', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30301', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30302', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30303', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30390', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30391', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30392', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30393', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30400', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30401', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30402', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30403', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30410', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30411', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30412', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30413', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30420', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30421', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30422', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30423', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30430', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30431', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30432', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30433', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30440', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30441', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30442', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30443', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30450', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30451', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30452', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30453', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30460', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30461', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30462', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30463', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30470', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30471', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30472', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30473', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30480', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30481', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30482', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30483', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30490', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30491', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30492', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'30493', 52)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3210 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3320 ', 73)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3321 ', 73)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3330 ', 73)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3334 ', 73)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33371', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3340 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3341 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3342 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3343 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3344 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3348 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3349 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3350 ', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33510', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33511', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33519', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33520', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33521', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33522', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33523', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33524', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33529', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3358 ', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3359 ', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3360 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3361 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3362 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3363 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3368 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3369 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33700', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33709', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3371 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33720', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33721', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33722', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'33729', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3373 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3379 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'340 ', 72)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3410 ', 72)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3411 ', 72)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3418 ', 72)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3419 ', 72)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34200', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34201', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34202', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34210', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34211', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34212', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34280', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34281', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34282', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34290', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34291', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34292', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3430 ', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3431 ', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3432 ', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3433 ', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3434 ', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3438 ', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3439 ', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34400', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34401', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34402', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34403', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34404', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34409', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3441 ', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3442 ', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34430', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34431', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34432', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34440', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34441', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34442', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3445 ', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34460', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34461', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34481', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34489', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3449 ', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34500', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34501', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34510', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34511', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3452 ', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3453 ', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34540', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34541', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34550', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34551', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34560', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34561', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34570', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34571', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34580', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34581', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34590', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'34591', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3481 ', 75)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3484 ', 75)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3485 ', 75)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3491 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3536 ', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3560 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3561 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3562 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3563 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3564 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3568 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3569 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3570 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3571 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3572 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3573 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3574 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3575 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3576 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3577 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35781', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35782', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35789', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3579 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35800', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35801', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3581 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3582 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35830', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35831', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35839', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3588 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3589 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3590 ', 70)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3591 ', 70)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35921', 70)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35922', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35923', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35924', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35929', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3593 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3594 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3595 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3596 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35971', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35979', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35981', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'35989', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'3599 ', 71)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'36202', 119)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'37923', 119)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40201', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40211', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40291', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40301', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40311', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40391', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40401', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40402', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40403', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40411', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40412', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40413', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40491', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40492', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'40493', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41000', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41001', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41002', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41010', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41011', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41012', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41020', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41021', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41022', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41030', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41031', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41032', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41040', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41041', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41042', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41050', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41051', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41052', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41060', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41061', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41062', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41070', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41071', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41072', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41080', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41081', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41082', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41090', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41091', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41092', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4110 ', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4111 ', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41181', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41189', 82)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'412 ', 83)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4130 ', 83)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4131 ', 83)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4139 ', 83)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4150 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41511', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41512', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41513', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'41519', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4160 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4161 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4162 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4168 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4169 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4170 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4171 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4178 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4179 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4250 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42511', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42518', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4252 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4253 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4254 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4255 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4257 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4258 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4259 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4260 ', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4270 ', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4271 ', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4272 ', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42731', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42732', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42741', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42742', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4275 ', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42781', 92)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4280 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4281 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42820', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42821', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42822', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42823', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42830', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42831', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42832', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42833', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42840', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42841', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42842', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'42843', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4289 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4290 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4291 ', 80)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4295 ', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4296 ', 81)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'430 ', 95)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'431 ', 95)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4320 ', 95)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4321 ', 95)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4329 ', 95)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43301', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43311', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43321', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43331', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43381', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43391', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43401', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43411', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43491', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'436 ', 96)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43820', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43821', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43822', 100)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43830', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43831', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43832', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43840', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43841', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43842', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43850', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43851', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43852', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'43853', 101)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4400 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4401 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44020', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44021', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44022', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44023', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44024', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44029', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44030', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44031', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44032', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4404 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44100', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44101', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44102', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44103', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4411 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4412 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4413 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4414 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4415 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4416 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4417 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4419 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4420 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4421 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4422 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4423 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44281', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44282', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44283', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44284', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44289', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4429 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4431 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44321', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44322', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44323', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44324', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44329', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44381', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44382', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44389', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4439 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44401', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44409', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4441 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44421', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44422', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44481', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44489', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4449 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44501', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44502', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44581', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44589', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4460 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4461 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44620', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44621', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44629', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4463 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4464 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4465 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4466 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4467 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4470 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4471 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4472 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4473 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4474 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4475 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4476 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44770', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44771', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44772', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'44773', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4478 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4479 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4480 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'449 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45111', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45119', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45181', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45183', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4530 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4532 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4533 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45340', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45341', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45342', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45350', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45351', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45352', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45372', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45374', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45375', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45376', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45377', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45382', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45384', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45385', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45386', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45387', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4560 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4561 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45620', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'45621', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'481 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4820 ', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4821 ', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4822 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48230', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48231', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48232', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48239', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48240', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48241', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48242', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48249', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48281', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48282', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48283', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48284', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'48289', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4841 ', 5)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4846 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4847 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4910 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4911 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'49120', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'49121', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'49122', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4918 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4919 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4920 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'4928 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'49320', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'49321', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'49322', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'496 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5070 ', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5071 ', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5078 ', 111)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5100 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5109 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5130 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5131 ', 112)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5173 ', 44)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5181 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5182 ', 108)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5184 ', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51851', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51852', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51853', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51881', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51882', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51883', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51884', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51900', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51901', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51902', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'51909', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53086', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53087', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53110', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53111', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53120', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53121', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53150', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53151', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53160', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53161', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53210', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53211', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53220', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53221', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53250', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53251', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53260', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53261', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53310', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53311', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53320', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53321', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53350', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53351', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53360', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53361', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53410', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53411', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53420', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53421', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53450', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53451', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53460', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53461', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53640', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53641', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53642', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'53649', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5550 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5551 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5552 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5559 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5560 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5561 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5562 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5563 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5564 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5565 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5566 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5568 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5569 ', 33)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5570 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5571 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5579 ', 105)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5600 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5601 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5602 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56030', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56031', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56032', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56039', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56081', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56089', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5609 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5670 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5671 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56721', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56722', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56723', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56729', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56731', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56738', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56739', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56781', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56782', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56789', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5679 ', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56960', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56961', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56962', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56969', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56971', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56979', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'56983', 31)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5712 ', 26)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5713 ', 26)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'57140', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'57141', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'57142', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'57149', 27)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5715 ', 26)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5716 ', 26)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5722 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5723 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5724 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5728 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5735 ', 25)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5770 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5771 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5772 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5778 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5779 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5790 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5791 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5792 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5793 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5794 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5798 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5799 ', 32)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5800 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5804 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58081', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58089', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5809 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5810 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5811 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5812 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5813 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58181', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58189', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5819 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5820 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5821 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5822 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5824 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58281', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58289', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5829 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5830 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5831 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5832 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5834 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5836 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5837 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58381', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'58389', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5839 ', 132)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5845 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5846 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5847 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5848 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5849 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5851 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5852 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5853 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5854 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5855 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5856 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'5859 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'586 ', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'59381', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'59681', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'59682', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'59683', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'62931', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70700', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70701', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70702', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70703', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70704', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70705', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70706', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70707', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70709', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70710', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70711', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70712', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70713', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70714', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70715', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70719', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70720', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70721', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70722', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70723', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70724', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'70725', 148)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7078 ', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7079 ', 149)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7100 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7101 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7102 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7103 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7104 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7105 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7108 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7109 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71100', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71101', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71102', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71103', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71104', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71105', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71106', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71107', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71108', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71109', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71110', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71111', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71112', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71113', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71114', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71115', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71116', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71117', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71118', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71119', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71120', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71121', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71122', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71123', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71124', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71125', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71126', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71127', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71128', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71129', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71130', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71131', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71132', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71133', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71134', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71135', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71136', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71137', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71138', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71139', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71140', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71141', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71142', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71143', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71144', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71145', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71146', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71147', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71148', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71149', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71150', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71151', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71152', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71153', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71154', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71155', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71156', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71157', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71158', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71159', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71160', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71161', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71162', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71163', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71164', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71165', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71166', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71167', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71168', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71169', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71170', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71171', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71172', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71173', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71174', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71175', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71176', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71177', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71178', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71179', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71180', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71181', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71182', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71183', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71184', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71185', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71186', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71187', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71188', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71189', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71190', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71191', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71192', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71193', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71194', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71195', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71196', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71197', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71198', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71199', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7140 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7141 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7142 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71430', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71431', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71432', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71433', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7144 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71481', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'71489', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7149 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7200 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7201 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7202 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'72081', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'72089', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7209 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'725 ', 38)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'72886', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73000', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73001', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73002', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73003', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73004', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73005', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73006', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73007', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73008', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73009', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73010', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73011', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73012', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73013', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73014', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73015', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73016', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73017', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73018', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73019', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73020', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73021', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73022', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73023', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73024', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73025', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73026', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73027', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73028', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73029', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73030', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73031', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73032', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73033', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73034', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73035', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73036', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73037', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73038', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73039', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73070', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73071', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73072', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73073', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73074', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73075', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73076', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73077', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73078', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73079', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73080', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73081', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73082', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73083', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73084', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73085', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73086', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73087', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73088', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73089', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73090', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73091', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73092', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73093', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73094', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73095', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73096', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73097', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73098', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73099', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73313', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73314', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73315', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73340', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73341', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73342', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73343', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73344', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73345', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'73349', 37)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7400 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7401 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7402 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74100', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74101', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74102', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74103', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74190', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74191', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74192', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74193', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7420 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7421 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7422 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7423 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7424 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74251', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74253', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'74259', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7428 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7429 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'75314', 131)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7595 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7596 ', 10)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'77181', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78001', 75)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78003', 75)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78031', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78032', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78033', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78039', 74)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78072', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7854 ', 104)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78550', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78551', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78552', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'78559', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7980 ', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7981 ', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7982 ', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7989 ', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'79901', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'79902', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7991 ', 78)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'7994 ', 21)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80000', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80001', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80002', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80003', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80004', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80005', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80006', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80009', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80010', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80011', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80012', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80013', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80014', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80015', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80016', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80019', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80020', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80021', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80022', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80023', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80024', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80025', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80026', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80029', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80030', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80031', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80032', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80033', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80034', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80035', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80036', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80039', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80040', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80041', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80042', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80043', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80044', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80045', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80046', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80049', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80050', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80051', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80052', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80053', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80054', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80055', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80056', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80059', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80060', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80061', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80062', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80063', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80064', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80065', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80066', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80069', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80070', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80071', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80072', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80073', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80074', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80075', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80076', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80079', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80080', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80081', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80082', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80083', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80084', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80085', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80086', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80089', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80090', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80091', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80092', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80093', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80094', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80095', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80096', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80099', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80100', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80101', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80102', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80103', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80104', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80105', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80106', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80109', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80110', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80111', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80112', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80113', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80114', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80115', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80116', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80119', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80120', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80121', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80122', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80123', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80124', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80125', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80126', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80129', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80130', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80131', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80132', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80133', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80134', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80135', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80136', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80139', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80140', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80141', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80142', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80143', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80144', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80145', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80146', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80149', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80150', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80151', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80152', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80153', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80154', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80155', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80156', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80159', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80160', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80161', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80162', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80163', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80164', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80165', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80166', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80169', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80170', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80171', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80172', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80173', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80174', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80175', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80176', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80179', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80180', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80181', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80182', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80183', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80184', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80185', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80186', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80189', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80190', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80191', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80192', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80193', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80194', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80195', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80196', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80199', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80220', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80221', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80222', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80223', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80224', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80225', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80226', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80227', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80228', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80229', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80230', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80231', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80232', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80233', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80234', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80235', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80236', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80237', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80238', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80239', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8024 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8025 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8026 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8027 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8028 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8029 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80300', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80301', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80302', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80303', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80304', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80305', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80306', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80309', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80310', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80311', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80312', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80313', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80314', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80315', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80316', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80319', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80320', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80321', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80322', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80323', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80324', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80325', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80326', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80329', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80330', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80331', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80332', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80333', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80334', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80335', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80336', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80339', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80340', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80341', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80342', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80343', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80344', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80345', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80346', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80349', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80350', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80351', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80352', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80353', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80354', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80355', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80356', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80359', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80360', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80361', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80362', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80363', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80364', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80365', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80366', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80369', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80370', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80371', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80372', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80373', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80374', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80375', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80376', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80379', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80380', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80381', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80382', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80383', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80384', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80385', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80386', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80389', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80390', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80391', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80392', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80393', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80394', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80395', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80396', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80399', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80400', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80401', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80402', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80403', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80404', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80405', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80406', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80409', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80410', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80411', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80412', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80413', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80414', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80415', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80416', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80419', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80420', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80421', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80422', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80423', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80424', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80425', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80426', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80429', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80430', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80431', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80432', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80433', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80434', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80435', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80436', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80439', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80440', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80441', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80442', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80443', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80444', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80445', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80446', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80449', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80450', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80451', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80452', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80453', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80454', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80455', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80456', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80459', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80460', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80461', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80462', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80463', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80464', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80465', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80466', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80469', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80470', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80471', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80472', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80473', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80474', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80475', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80476', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80479', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80480', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80481', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80482', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80483', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80484', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80485', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80486', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80489', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80490', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80491', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80492', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80493', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80494', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80495', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80496', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80499', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80500', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80501', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80502', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80503', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80504', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80505', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80506', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80507', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80508', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80510', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80511', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80512', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80513', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80514', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80515', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80516', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80517', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80518', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8052 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8053 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8054 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8055 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8056 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8057 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8058 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8059 ', 157)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80600', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80601', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80602', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80603', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80604', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80605', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80606', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80607', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80608', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80609', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80610', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80611', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80612', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80613', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80614', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80615', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80616', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80617', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80618', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80619', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80620', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80621', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80622', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80623', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80624', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80625', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80626', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80627', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80628', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80629', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80630', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80631', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80632', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80633', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80634', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80635', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80636', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80637', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80638', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80639', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8064 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8065 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80660', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80661', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80662', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80669', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80670', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80671', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80672', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80679', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8068 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8069 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8080 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8081 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8082 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8083 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80841', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80842', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80843', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80844', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80849', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80851', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80852', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80853', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80854', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'80859', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8088 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8089 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82000', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82001', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82002', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82003', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82009', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82010', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82011', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82012', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82013', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82019', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82020', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82021', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82022', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82030', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82031', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82032', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8208 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8209 ', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82100', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82101', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82110', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82111', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82120', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82121', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82122', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82123', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82129', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82130', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82131', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82132', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82133', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'82139', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83500', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83501', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83502', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83503', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83510', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83511', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83512', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'83513', 158)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8502 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8503 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8504 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85100', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85101', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85102', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85103', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85104', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85105', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85106', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85109', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85110', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85111', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85112', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85113', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85114', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85115', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85116', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85119', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85120', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85121', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85122', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85123', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85124', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85125', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85126', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85129', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85130', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85131', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85132', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85133', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85134', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85135', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85136', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85139', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85140', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85141', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85142', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85143', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85144', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85145', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85146', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85149', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85150', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85151', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85152', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85153', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85154', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85155', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85156', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85159', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85160', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85161', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85162', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85163', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85164', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85165', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85166', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85169', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85170', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85171', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85172', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85173', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85174', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85175', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85176', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85179', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85180', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85181', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85182', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85183', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85184', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85185', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85186', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85189', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85190', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85191', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85192', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85193', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85194', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85195', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85196', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85199', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85200', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85201', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85202', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85203', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85204', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85205', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85206', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85209', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85210', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85211', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85212', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85213', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85214', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85215', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85216', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85219', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85220', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85221', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85222', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85223', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85224', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85225', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85226', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85229', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85230', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85231', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85232', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85233', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85234', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85235', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85236', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85239', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85240', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85241', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85242', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85243', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85244', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85245', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85246', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85249', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85250', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85251', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85252', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85253', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85254', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85255', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85256', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85259', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85300', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85301', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85302', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85303', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85304', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85305', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85306', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85309', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85310', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85311', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85312', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85313', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85314', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85315', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85316', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85319', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85400', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85401', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85402', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85403', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85404', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85405', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85406', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85409', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85410', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85411', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85412', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85413', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85414', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85415', 154)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85416', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'85419', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8870 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8871 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8872 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8873 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8874 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8875 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8876 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8877 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8950 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8951 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8960 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8961 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8962 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8963 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8970 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8971 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8972 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8973 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8974 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8975 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8976 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'8977 ', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9050 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9059 ', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9070 ', 155)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9072 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94811', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94821', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94822', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94831', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94832', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94833', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94841', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94842', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94843', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94844', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94851', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94852', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94853', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94854', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94855', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94861', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94862', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94863', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94864', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94865', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94866', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94871', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94872', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94873', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94874', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94875', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94876', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94877', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94881', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94882', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94883', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94884', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94885', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94886', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94887', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94888', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94891', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94892', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94893', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94894', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94895', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94896', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94897', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94898', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'94899', 150)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95200', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95201', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95202', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95203', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95204', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95205', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95206', 67)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95207', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95208', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95209', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95210', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95211', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95212', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95213', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95214', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95215', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95216', 68)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95217', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95218', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95219', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9522 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9523 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9524 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9528 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9529 ', 69)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9580 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9581 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9582 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9583 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9584 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9585 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9586 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9587 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9588 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95890', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95891', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95892', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95893', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'95899', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99600', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99601', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99602', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99603', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99604', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99609', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9961 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9962 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99630', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99631', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99632', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99639', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99640', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99641', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99642', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99643', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99644', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99645', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99646', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99647', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99649', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99651', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99652', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99653', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99654', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99655', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99656', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99657', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99659', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99660', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99661', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99662', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99663', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99664', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99665', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99666', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99667', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99668', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99669', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99670', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99671', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99672', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99673', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99674', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99675', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99676', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99677', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99678', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99679', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99682', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99683', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99684', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99685', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99686', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99687', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99688', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99690', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99691', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99692', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99693', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99694', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99695', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99696', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99699', 161)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99700', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99701', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99702', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99709', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9971 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9972 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99731', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99732', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99739', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99749', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9975 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99760', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99761', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99762', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99769', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99771', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99772', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99779', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99800', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99801', 79)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99802', 2)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'99809', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'9986 ', 164)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9500', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9501', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9502', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9503', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9504', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9505', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9506', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9507', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9508', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9509', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9510', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9511', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9518', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9520', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9521', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9528', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9529', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9530', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9531', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9538', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9539', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E954 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9550', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9551', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9552', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9553', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9554', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9555', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9556', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9557', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9559', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E956 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9570', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9571', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9572', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9579', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9580', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9581', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9582', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9583', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9584', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9585', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9586', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9587', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9588', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E9589', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'E959 ', 55)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V08 ', 1)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V421 ', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V426 ', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V427 ', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4281', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4282', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4283', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4284', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4321', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4322', 174)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V440 ', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V441 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V442 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V443 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V444 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4450', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4451', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4452', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4459', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V446 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V448 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V449 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4511', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4512', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4611', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4612', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4613', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4614', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4970', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4971', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4972', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4973', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4974', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4975', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4976', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V4977', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V521 ', 177)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V550 ', 77)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V551 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V552 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V553 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V554 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V555 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V556 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V558 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V559 ', 176)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V560 ', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V561 ', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V562 ', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V5631', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V5632', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V568 ', 130)
GO
INSERT [dbo].[ref_ICD9_to_HCC_Mapping] ([ICD9_Code], [HCC_Code]) VALUES (N'V5867', 19)
GO
