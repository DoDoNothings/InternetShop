--поиск определенной подкатегории, у которой цена в пределах от 200 до 600

SELECT Stock.ProductID AS 'ID продукта',
	   Products.Name AS 'Наименования',
	   Stock.Prise AS 'Цена',
	   Stock.Quantity AS 'Количество',
	   Stock.Total_prise AS 'Общая стоимость',
	   Category.Name AS 'Категория',
	   SubCategory.Name AS 'Подкатегория',
	   ForWhom.Name AS 'Предназначение',
	   description AS 'Дополнительно'	 
	   FROM Stock
JOIN Products ON Products.ID=Stock.ProductID
JOIN Products_details ON Products_details.ID=Products.ID
JOIN Category ON Category.ID=Products_details.Category_ID
JOIN SubCategory ON SubCategory.ID=Products_details.SubCategoryID
JOIN ForWhom ON ForWhom.ID=Products_details.ForWhom_ID
WHERE SubCategory.Name =N'Ручки' AND Stock.Quantity BETWEEN 200 AND 600
ORDER BY SubCategory.Name