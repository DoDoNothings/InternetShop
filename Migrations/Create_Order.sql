CREATE TABLE [dbo].[Order] (
    [ID]         UNIQUEIDENTIFIER CONSTRAINT [DF_Order_ID] DEFAULT (newid()) NOT NULL,
    [OrderDate]  DATE             NOT NULL DEFAULT sysdatetime() ,
    [CustomerID] UNIQUEIDENTIFIER NOT NULL
);

