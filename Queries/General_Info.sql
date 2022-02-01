--Общая информация

SELECT N'Количество категорий', CAST(COUNT(C.ID) AS nvarchar(10))
FROM Category AS C
UNION ALL
SELECT N'Количество подкатегорий', CAST(COUNT(S.Name) AS nvarchar(10))
FROM SubCategory AS S
UNION ALL
SELECT N'Количество наименований', CAST(COUNT(P.Name) AS nvarchar(10))
FROM Products AS P
UNION ALL
SELECT N'Количество единиц', CAST(SUM(St.Quantity) AS nvarchar(10))
FROM Stock AS St
UNION ALL
SELECT N'Средняя цена продажи', CAST(AVG(St.Prise) AS nvarchar(10))+N' грн.'
FROM Stock AS St