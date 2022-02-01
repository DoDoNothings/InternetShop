CREATE TABLE [dbo].[Category] (
    [ID]          UNIQUEIDENTIFIER CONSTRAINT [DF_Category_ID] DEFAULT (newid()) NOT NULL,
    [Name]        NVARCHAR (50)    NOT NULL,
    [VendoreCode] NVARCHAR (20)    NOT NULL
);

