USE [DWHDemo]
GO



CREATE TABLE [dbo].[LogTable](
	[logid] [int] IDENTITY(1,1) Primary Key,
	[filepath] [varchar](200) NULL,
	[Status] [varchar](500) NULL,
	[InsertedDate] [datetime] NULL
 )

ALTER TABLE [dbo].[LogTable] ADD  CONSTRAINT [DF_LogTable_InsertedDate]  DEFAULT (getdate()) FOR [InsertedDate]
GO



--For testing purposes
SELECT * FROM LogTable

TRUNCATE TABLE LogTable

SELECT * FROM Supplier

SELECT * FROM Product

SELECT * FROM HotelDetails

SELECT * FROM EmployeeDetails

EXEC sp_help Supplier

EXEC sp_help Product


TRUNCATE TABLE Supplier
TRUNCATE TABLE Product
TRUNCATE TABLE HotelDetails
TRUNCATE TABLE EmployeeDetails