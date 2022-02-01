CREATE TABLE [dbo].[SubCategory] (
    [ID]          UNIQUEIDENTIFIER CONSTRAINT [DF_SubCategory_ID] DEFAULT (newid()) NOT NULL,
    [Name]        NVARCHAR (50)    NOT NULL,
    [VendoreCode] NVARCHAR (20)    NOT NULL
);

