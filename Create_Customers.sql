CREATE TABLE [dbo].[Customers] (
    [ID]         UNIQUEIDENTIFIER CONSTRAINT [DF_Customers_ID] DEFAULT (newid()) NOT NULL,
    [Surname]    NVARCHAR (50)    NULL,
    [Name]       NVARCHAR (50)    NULL,
    [Patronymic] NVARCHAR (50)    NULL,
    [Phone]      NVARCHAR (10)    NOT NULL,
    [Address]    NVARCHAR (50)    NULL,
    [Email]      NVARCHAR (20)    NOT NULL
);

