-- Query to join Items and Sales Tables

SELECT 
sale_id,
description,
Sales.item_id,
date_sold,
cust_id,
quantity
FROM Grocery_data.Sales
JOIN Grocery_data.Items ON Items.item_id = Sales.item_id;

-- Query to join Items, Vendor, Sales Tables

SELECT 
item_num,
description,
cost,
purchase_date,
Vendors.vendor_address,
Locations.location
FROM Grocery_data.Items
JOIN Grocery_data.Vendors ON Vendors.vendor_address = Items.vendor_address
JOIN Grocery_data.Locations ON Locations.location = Items.location;
