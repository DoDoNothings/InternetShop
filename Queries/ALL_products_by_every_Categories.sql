--Количество наименований и единиц товара на складе по каждой категории

SELECT Category.Name AS N'Категория', 
       COUNT(Products.ID) AS N'Количество наименований',
	   SUM(Stock.Quantity) AS N'Количество единиц'
FROM Stock
		JOIN Products ON Products.ID=Stock.ProductID
		JOIN Products_details ON Products.ID=Products_details.ID
		JOIN Category ON Products_details.Category_ID=Category.ID
GROUP BY Category.Name
UNION ALL
SELECT N'ВСЕГО', SUM(ALL_.ALLCOUNT), SUM(ALL_.ALLSUM)
FROM (SELECT Category.Name AS N'Категория', 
       COUNT(Products.ID) AS ALLCOUNT, 
	   SUM(Stock.Quantity) AS ALLSUM
FROM Stock
		JOIN Products ON Products.ID=Stock.ProductID
		JOIN Products_details ON Products.ID=Products_details.ID
		JOIN Category ON Products_details.Category_ID=Category.ID
GROUP BY Category.Name) AS ALL_