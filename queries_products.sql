-- Comments in SQL Start with dash-dash --

--Products query 1
INSERT INTO products (name, price, can_be_returned)
VALUES 
('chair', 44.00, false); 

--Products query 2
INSERT INTO products (name, price, can_be_returned)
VALUES 
('stool', 25.99, true);

--Products query 3
INSERT INTO products (name, price, can_be_returned)
VALUES 
('table', 124.00, false);

--Products query 4
SELECT * FROM products; 

--Products query 5
SELECT name FROM products; 

--Products query 6
SELECT name, price FROM products; 

--Products query 7
INSERT INTO products (name, price, can_be_returned)
VALUES 
('horse', 2000, true);

--Products query 8
SELECT * FROM products
WHERE can_be_returned = true; 

--Products query 9
SELECT * FROM products
WHERE price < 44.00; 

--Products query 10
SELECT * FROM products
WHERE price > 22.50 AND price < 99.99; 

--Products query 11
UPDATE products SET price = price-20; 

--Products query 12
DELETE FROM products WHERE price < 25.00;

--Products query 13
UPDATE products SET price = price+20; 

--Products query 14
UPDATE products SET can_be_returned = true; 