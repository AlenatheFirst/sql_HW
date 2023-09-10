--Вывести название и стоимость в USD одного самого дорогого проданного товара:
-- Я вывела еще и столбец, указывающий на количество проданного товара, поскольку конечная цена формируется на основании цены за 1 шт и кол-ва заказанного товара.
SELECT ProductName,
		Quantity,
		 Price * 1.06 AS Price_usd
FROM [Products]
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
ORDER BY Price DESC,
Quantity DESC
LIMIT 1

-- Вывести два самых дорогих товара из категории Beverages из USA:

SELECT *
FROM Products
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
JOIN Categories ON Products.CategoryID=Categories.CategoryID
Where Suppliers.Country ="USA"
ORDER BY CategoryID, Price DESC 
LIMIT 2

--Удалить товары с ценой менее 5 EUR
DELETE FROM Products
WHERE
    Price < 5

-- Вывести список стран, которые поставляют напитки

SELECT *
FROM Products
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
JOIN Categories ON Products.CategoryID=Categories.CategoryID
ORDER BY CategoryID 
Limit 11

--Очистить поле ContactName у всех клиентов не из China
UPDATE Customers
SET
        ContactName=''
WHERE
    Not Country ="China"


