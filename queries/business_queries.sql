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

-- Query to find the total spent by each customers

SELECT 
Items.item_id,
Sales.cust_id,
SUM(Items.price * Sales.quantity) AS total_spent
FROM Grocery_data.Sales
JOIN Grocery_data.Items ON Items.item_id = Sales.item_id
GROUP BY Items.item_id, Sales.cust_id;
