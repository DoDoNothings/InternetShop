--уменьшение товаров на складе при заказе

CREATE TRIGGER reduction_of_stock_on_order
ON [dbo].[Order_details]
FOR INSERT
AS
  IF @@ROWCOUNT = 0 
      RETURN 
      SET NOCOUNT ON 
 
UPDATE [dbo].[stock]
SET Quantity = s.Quantity - i.Qtu
FROM [dbo].Stock s JOIN 
(SELECT [ProductID], SUM (Quantity) Qtu FROM inserted  GROUP BY [ProductID] ) i 
ON s.[ProductID] = i.[ProductID]
go
