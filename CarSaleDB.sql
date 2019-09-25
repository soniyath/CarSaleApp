/****** Object:  Database [CollegeDB]    Script Date: 2019-06-03 5:56:00 AM ******/


GO
USE CarSaleDB;
 
 
GO
CREATE TABLE [dbo].[Customer](
	[custName] [varchar](20) NOT NULL,
	[addr] [text] NOT NULL,
    [postC] [varchar](6) NOT NULL,
	[phoneNum] BIGINT NOT NULL,
    [mail] [varchar](150) NOT NULL,
	[pass] [varchar] (100) NOT NULL,
	CONSTRAINT [Pk_Customer] PRIMARY KEY ([mail]));
GO 
CREATE TABLE [dbo].[Orders](
	[brandList] [varchar](15) NULL,
	[model] [varchar](15) NULL,
    [year] [int] NULL,
	[colour] [varchar](10) NULL,
	[price] [int] NULL)
	
