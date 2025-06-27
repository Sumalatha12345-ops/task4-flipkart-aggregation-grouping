USE FlipkartDB;

-- 1. Total number of users
SELECT COUNT(*) AS total_users FROM Users;

-- 2. Total stock of all products
SELECT SUM(stock) AS total_stock FROM Products;

-- 3. Average product price
SELECT AVG(price) AS avg_price FROM Products;

-- 4. Count of products in each category
SELECT category_id, COUNT(*) AS product_count
FROM Products
GROUP BY category_id;

-- 5. Average price per category
SELECT category_id, ROUND(AVG(price), 2) AS avg_price
FROM Products
GROUP BY category_id;

-- 6. Total order amount by user
SELECT user_id, SUM(total_amount) AS total_spent
FROM Orders
GROUP BY user_id;

-- 7. Count of reviews per product (only products with more than 1 review)
SELECT product_id, COUNT(*) AS review_count
FROM Reviews
GROUP BY product_id
HAVING COUNT(*) > 1;

-- 8. Total payment amount by payment method (ignoring NULLs)
SELECT payment_method, SUM(amount) AS total_paid
FROM Payments
WHERE payment_method IS NOT NULL
GROUP BY payment_method;

-- 9. Users who placed more than 1 order
SELECT user_id, COUNT(*) AS order_count
FROM Orders
GROUP BY user_id
HAVING COUNT(*) > 1;

-- 10. Most reviewed product (TOP 1 by review count)
SELECT product_id, COUNT(*) AS review_count
FROM Reviews
GROUP BY product_id
ORDER BY review_count DESC
LIMIT 1;USE FlipkartDB;

-- 1. Total number of users
SELECT COUNT(*) AS total_users FROM Users;

-- 2. Total stock of all products
SELECT SUM(stock) AS total_stock FROM Products;

-- 3. Average product price
SELECT AVG(price) AS avg_price FROM Products;

-- 4. Count of products in each category
SELECT category_id, COUNT(*) AS product_count
FROM Products
GROUP BY category_id;

-- 5. Average price per category
SELECT category_id, ROUND(AVG(price), 2) AS avg_price
FROM Products
GROUP BY category_id;

-- 6. Total order amount by user
SELECT user_id, SUM(total_amount) AS total_spent
FROM Orders
GROUP BY user_id;

-- 7. Count of reviews per product (only products with more than 1 review)
SELECT product_id, COUNT(*) AS review_count
FROM Reviews
GROUP BY product_id
HAVING COUNT(*) > 1;

-- 8. Total payment amount by payment method (ignoring NULLs)
SELECT payment_method, SUM(amount) AS total_paid
FROM Payments
WHERE payment_method IS NOT NULL
GROUP BY payment_method;

-- 9. Users who placed more than 1 order
SELECT user_id, COUNT(*) AS order_count
FROM Orders
GROUP BY user_id
HAVING COUNT(*) > 1;

-- 10. Most reviewed product (TOP 1 by review count)
SELECT product_id, COUNT(*) AS review_count
FROM Reviews
GROUP BY product_id
ORDER BY review_count DESC
LIMIT 1;USE FlipkartDB;

-- 1. Total number of users
SELECT COUNT(*) AS total_users FROM Users;

-- 2. Total stock of all products
SELECT SUM(stock) AS total_stock FROM Products;

-- 3. Average product price
SELECT AVG(price) AS avg_price FROM Products;

-- 4. Count of products in each category
SELECT category_id, COUNT(*) AS product_count
FROM Products
GROUP BY category_id;

-- 5. Average price per category
SELECT category_id, ROUND(AVG(price), 2) AS avg_price
FROM Products
GROUP BY category_id;

-- 6. Total order amount by user
SELECT user_id, SUM(total_amount) AS total_spent
FROM Orders
GROUP BY user_id;

-- 7. Count of reviews per product (only products with more than 1 review)
SELECT product_id, COUNT(*) AS review_count
FROM Reviews
GROUP BY product_id
HAVING COUNT(*) > 1;

-- 8. Total payment amount by payment method (ignoring NULLs)
SELECT payment_method, SUM(amount) AS total_paid
FROM Payments
WHERE payment_method IS NOT NULL
GROUP BY payment_method;

-- 9. Users who placed more than 1 order
SELECT user_id, COUNT(*) AS order_count
FROM Orders
GROUP BY user_id
HAVING COUNT(*) > 1;

-- 10. Most reviewed product (TOP 1 by review count)
SELECT product_id, COUNT(*) AS review_count
FROM Reviews
GROUP BY product_id
ORDER BY review_count DESC
LIMIT 1;