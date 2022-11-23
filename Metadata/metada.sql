USE [DWHDemo]
GO

--Creating the table in which we'll record the errors

CREATE TABLE [dbo].[LogErrorTable](
	[id] [int] IDENTITY(1,1) Primary Key,
	[Filepath] [varchar](250) NULL,
	[Errordetails] [varchar](250) NULL,
	[Errordatetime] [datetime] NULL,
)

ALTER TABLE [dbo].[LogErrorTable] ADD  CONSTRAINT [DF_LogErrorTable_Errordatetime]  DEFAULT (getdate()) FOR [Errordatetime]
GO

--SSIS code inserting into LogError table

INSERT INTO LogErrorTable (FilePath,Errordetails) VALUES (?,'Metada not matched')

SELECT * FROM LogErrorTable

TRUNCATE TABLE LogErrorTable

SELECT * FROM HotelDetails

TRUNCATE TABLE HotelDetails