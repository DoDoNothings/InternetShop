--состояние на складе

SELECT Stock.ProductID AS 'ID продукта',
	   Products.Name AS 'Наименования',
	   Stock.Prise AS 'Цена',
	   Stock.Quantity AS 'Количество',
	   Stock.Total_prise AS 'Общая стоимость',
	   Products_details.VendorCode AS 'Код продукта',
	   Category.Name AS 'Категория',
	   Category.VendoreCode AS 'Код категории',
	   SubCategory.Name AS 'Подкатегория',
	   SubCategory.VendoreCode AS 'Код подкатегории',
	   ForWhom.Name AS 'Предназначение',
	   description AS 'Дополнительно'	 
	   FROM Stock
JOIN Products ON Products.ID=Stock.ProductID
JOIN Products_details ON Products_details.ID=Products.ID
JOIN Category ON Category.ID=Products_details.Category_ID
JOIN SubCategory ON SubCategory.ID=Products_details.SubCategoryID
JOIN ForWhom ON ForWhom.ID=Products_details.ForWhom_ID
ORDER BY Products.Name
