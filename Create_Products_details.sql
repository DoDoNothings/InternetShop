CREATE TABLE [dbo].[Products_details] (
    [ID]            UNIQUEIDENTIFIER CONSTRAINT [DF_Products_details_ID] DEFAULT (newid()) NOT NULL,
    [VendorCode]    NVARCHAR (20)    NOT NULL,
    [Category_ID]   UNIQUEIDENTIFIER NOT NULL,
    [SubCategoryID] UNIQUEIDENTIFIER NOT NULL,
    [ForWhom_ID]    UNIQUEIDENTIFIER NOT NULL,
    [description]   VARCHAR (500)    NOT NULL
);

