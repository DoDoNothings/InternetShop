--вывод продуктов, у которых цена продукта между указанного диапазона

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
WHERE Stock.Prise BETWEEN 50 AND 100
ORDER BY Stock.Prise