CREATE TABLE [dbo].[Products] (
    [ID]   UNIQUEIDENTIFIER CONSTRAINT [DF_Products_ID] DEFAULT (newid()) NOT NULL,
    [Name] NVARCHAR (50)    NOT NULL
);

