CREATE TABLE [dbo].[Stock] (
    [ProductID]   UNIQUEIDENTIFIER CONSTRAINT [DF_Stock_ProductID] DEFAULT (newid()) NOT NULL,
    [Quantity]    INT              CONSTRAINT [DF__Stock__Quantity__33D4B598] DEFAULT ((1)) NOT NULL,
    [Prise]       MONEY            NOT NULL,
    [Total_prise] AS               (CONVERT([money],[Quantity]*[prise]))
);

