﻿CREATE TABLE [dbo].[ForWhom] (
    [ID]   UNIQUEIDENTIFIER CONSTRAINT [DF_ForWhom_ID] DEFAULT (newid()) NOT NULL,
    [Name] NVARCHAR (50)    NOT NULL
);

