-- ОГРАНИЧЕНИЯ 

-- Хранение телефонного номера
ALTER TABLE [dbo].[Customers]
ADD
CHECK  ([Phone] LIKE '([0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])') 
GO

--Email проверка
ALTER TABLE [dbo].[Customers]
ADD
CHECK  ([Email] LIKE '^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$') 
GO
 
 --Проверка даты
ALTER TABLE [dbo].[Order]
ADD
CHECK  ([OrderDate] >= DATEADD(DAY ,- 900, GETDATE()) AND [OrderDate] <= GETDATE())
GO

 -- Наличие на складе
ALTER TABLE [dbo].[Stock]
ADD
CHECK  ([Quantity] >=0 )
GO