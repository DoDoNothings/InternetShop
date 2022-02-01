----ВНЕШНИЕ КЛЮЧИ

--Связь [Order] с [Customers]
ALTER TABLE [dbo].[Order]
ADD
FOREIGN KEY (CustomerID) REFERENCES [dbo].[Customers] (ID)
ON DELETE CASCADE 
go

--
ALTER TABLE [dbo].[Order_details]
ADD
 FOREIGN KEY ([ID]) REFERENCES [dbo].[Order] ([ID])
go

--
ALTER TABLE [dbo].[Order_details]
ADD
FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ID])
go

--
ALTER TABLE [dbo].[Products_details]
ADD
FOREIGN KEY ([ID]) REFERENCES [dbo].[Products] ([ID]) ON DELETE CASCADE
go

--
ALTER TABLE [dbo].[Products_details]
ADD 
FOREIGN KEY ([Category_ID]) REFERENCES [dbo].[Category] ([ID])    
go

--
ALTER TABLE [dbo].[Products_details]
ADD 
FOREIGN KEY ([ForWhom_ID]) REFERENCES [dbo].[ForWhom] ([ID])
go

--
ALTER TABLE [dbo].[Products_details]
ADD 
FOREIGN KEY ([SubCategoryID]) REFERENCES [dbo].[SubCategory] ([ID])
go

--связь [Stock] с [Products] по [ProductID]
ALTER TABLE [dbo].[Stock]
ADD
FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ID])
 go

 --
ALTER TABLE [dbo].[Products_details]
ADD
UNIQUE NONCLUSTERED ([ID] ASC)
go
