INSERT INTO 
	dbo.SubCategory(ID, Name, VendoreCode )
VALUES 
--т.к. у меня 5 категория, я взала по 2-3 подкатегории на каждую
	--категория бумажная продукция
	(NEWID(), N'Бумага', N'013' ),
	(NEWID(), N'Тетради', N'074' ),
	(NEWID(), N'Дневники/ежедневники', N'95' ),
	--категория товары для творчества
	(NEWID(), N'Краски', N'057' ),
	(NEWID(), N'Фломастеры', N'' ),
	(NEWID(), N'Цветные карандаши', N'' ),
	--категория письменные принадлежности
	(NEWID(), N'Ручки', N'05' ),
	(NEWID(), N'Простые карандаши', N'517' ),
	--категория системы архивации
	(NEWID(), N'Папки', N'6' ),
	(NEWID(), N'Файла', N'6013' ),
	--категория Канцелярские инструменты
	(NEWID(), N'Точилка', N'013' ),
	(NEWID(), N'Калькулятор', N'912' ),
	(NEWID(), N'Линейка', N'0078' )
GO