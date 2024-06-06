-- Query for inventory management to identify potential stockouts

SELECT 
Items.item_id, 
description, 
SUM(Sales.quantity) AS total_sold, 
QTY_OH
FROM Grocery_data.Sales
JOIN Grocery_data.Items ON Sales.item_id = Items.item_id
GROUP BY Items.item_id, Items.description, Items.QTY_OH
HAVING Items.QTY_OH < SUM(Sales.quantity);

-- Query to find the total spent by each customer

SELECT 
Items.item_id,
Sales.cust_id,
SUM(Items.price * Sales.quantity) AS total_spent
FROM Grocery_data.Sales
JOIN Grocery_data.Items ON Items.item_id = Sales.item_id
GROUP BY Items.item_id, Sales.cust_id;

-- Query maximum total sales of the item 

SELECT 
Sales.item_num,
description,
sum(Sales.quantity) AS total_sales
FROM Grocery_data.Items
JOIN Grocery_data.Sales ON Sales.item_num = Items.item_num
GROUP BY Sales.item_num,
description
ORDER By total_sales DESC
LIMIT 1;

-- Query total sales per item

SELECT 
Sales.item_num,
description,
SUM(Sales.quantity) AS total_sales
FROM Grocery_data.Items
JOIN Grocery_data.Sales ON Sales.item_num = Items.item_num
GROUP BY Sales.item_num,
description;

-- Query to find total sales for an item having "item_num = 1000" 

SELECT 
Sales.item_id,
Items.item_num,
description,
Sales.date_sold,
SUM(Sales.quantity) AS total_sales
FROM Grocery_data.Items
JOIN Grocery_data.Sales ON Sales.item_id = Items.item_id
WHERE Items.item_num = 1000
GROUP BY Sales.item_id,
Items.item_num,
description,
Sales.date_sold
HAVING total_sales;
