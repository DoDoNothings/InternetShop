CREATE TABLE [dbo].[Order_details] (
    [ID]          UNIQUEIDENTIFIER CONSTRAINT [DF_Order_details_ID] DEFAULT (newid()) NOT NULL,
    [ProductID]   UNIQUEIDENTIFIER NOT NULL,
    [Quantity]    INT              CONSTRAINT [DF__Order_det__Quant__3C69FB99] DEFAULT ((1)) NOT NULL,
    [Prise]       MONEY            NOT NULL,
    [Total_prise] AS               (CONVERT([money],[Quantity]*[prise]))
);

