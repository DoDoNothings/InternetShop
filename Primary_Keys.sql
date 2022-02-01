----КЛЮЧИ

--Первичный ключ Category.ID
ALTER TABLE [dbo].[Category]
ADD
PRIMARY KEY (ID)
go

--Первичный ключ [Customers].ID
ALTER TABLE [dbo].[Customers]
ADD
PRIMARY KEY (ID)
go

--Первичный ключ [ForWhom].ID
ALTER TABLE [dbo].[ForWhom]
ADD
PRIMARY KEY (ID)
go

--Первичный ключ [Order].ID
ALTER TABLE [dbo].[Order]
ADD
PRIMARY KEY (ID)
go


ALTER TABLE [dbo].[Products]
ADD
PRIMARY KEY CLUSTERED ([ID] ASC)
go

--Первичный ключ [SubCategory].ID
ALTER TABLE [dbo].[SubCategory]
ADD
  PRIMARY KEY CLUSTERED ([ID] ASC)
go

