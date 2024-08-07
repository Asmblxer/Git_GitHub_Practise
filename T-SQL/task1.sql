USE BikeStores;
GO

-- task 1
SELECT * FROM production.products;
-- task 2
SELECT product_name, list_price FROM production.products;
-- task 3
SELECT category_id FROM production.products;
-- task 4
SELECT first_name FROM sales.customers;
-- task 5
SELECT TOP 5 product_name, list_price FROM production.products ORDER BY list_price DESC;
-- task 6
SELECT * FROM production.products WHERE list_price > 100;
-- task 7
SELECT * FROM sales.customers WHERE city = 'New York';
-- task 8
SELECT * FROM sales.orders WHERE order_status = 1;
-- task 9
SELECT product_name, list_price FROM production.products ORDER BY list_price DESC;
-- task 10
SELECT  customer_id, first_name, last_name FROM sales.customers ORDER BY last_name, first_name;
-- task 11
SELECT category_id, SUM(list_price) FROM production.products GROUP BY category_id;
-- task 12
SELECT category_id, COUNT(*) FROM production.products GROUP BY category_id;
-- task 13
SELECT category_id, SUM(list_price) AS Total FROM production.products GROUP BY category_id HAVING SUM(list_price) > 500;
-- task 14
INSERT INTO production.brands (brand_name) VALUES ('BrandX');
-- task 15
INSERT INTO production.categories (category_name) VALUES ('Electronics');
-- task 16
INSERT INTO sales.customers VALUES ('Alice', 'Johson', '987-654-3210', 'alice.johnson@example.com', '456 Elm St', 'Othertown', 'TX',  '54321');
-- task 17 
INSERT INTO sales.stores VALUES ('Tech Store', '555-123-4567', 'contact@techstore.com', '789 Tech Ave', 'Techville', 'CA', '67890');
-- task  18
INSERT INTO sales.staffs (first_name, last_name, email, phone, active, store_id, manager_id) VALUES ('Bob', 'Smith', 'bob.smith@example.com', '555-987-6543', 1, 1, NULL);
-- task 19
UPDATE production.products SET list_price = 119.99 WHERE product_id = 1;
-- task 20
UPDATE sales.customers SET email = 'new.email@example.com' WHERE customer_id = 2;
-- task 21
UPDATE sales.stores SET phone = '123-456-7890' WHERE store_id = 3;
--task 22
UPDATE production.categories SET category_name = 'Appliances' WHERE category_id = 2;
-- task 23
UPDATE sales.staffs SET active = 0 WHERE store_id = 1;

-- task 24
DELETE FROM production.brands WHERE brand_id = 2;
-- task 25
DELETE FROM production.categories WHERE category_id = 3;
-- task 26
DELETE FROM sales.customers WHERE customer_id = 4;
-- task 27
DELETE FROM sales.stores WHERE store_id = 5;
-- task 28
DELETE FROM sales.staffs WHERE staff_id = 6;
-- task 29
SET IDENTITY_INSERT sales.orders ON;
INSERT INTO sales.orders (order_id, order_date, customer_id, staff_id, store_id) VALUES (1, '2024-07-01', 1, 1, 1);
SET IDENTITY_INSERT sales.orders OFF;
-- task 30
SET IDENTITY_INSERT sales.order_items ON;
UPDATE sales.order_items SET shipped_date = '2024-07-05' WHERE order_id = 1;
SET IDENTITY_INSERT sales.order_items OFF;
-- task 31
DELETE FROM sales.orders WHERE order_status = 3;
-- task 32
INSERT INTO production.products (product_name, list_price, brand_id, category_id) 
VALUES ('ProductX', 100, 1, 1), ('ProductY', 200, 2, 2), ('ProductZ', 300, 3, 3);
-- task 33
UPDATE production.stocks SET quantity = 0 WHERE product_id = 1;