--общая информация по заказам

SELECT Customers.Name AS 'Имя',
	   Customers.Surname AS 'Фамилия',
	   Customers.Patronymic AS 'Отчество',
	   Customers.Phone AS 'Телефон',
	   Customers.Email AS 'Email',
	   Customers.Address AS'Aдресс',
	   Order_details.Quantity AS 'Количество',
	   Order_details.Prise AS 'Цена',
	   Order_details.Total_prise AS 'Общая сумма', 
	   [Order].OrderDate AS 'Дата заказа'
	   FROM Order_details
	   JOIN [Order] ON Order_details.ID = [Order].ID
	   JOIN Customers ON Customers.ID = [Order].CustomerID
ORDER BY [Order].OrderDate