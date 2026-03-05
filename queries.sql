USE mydb;

-- Query 1. SELECT * з products + тільки name, phone з shippers

SELECT * FROM products;

SELECT name, phone FROM shippers;

-- Query 2. AVG / MAX / MIN для price в products
SELECT
  AVG(price) AS avg_price,
  MAX(price) AS max_price,
  MIN(price) AS min_price
FROM products;

-- Query 3. Унікальні category_id та price, сортування price DESC, тільки 10 рядків
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- Query 4. Кількість продуктів з ціною від 20 до 100
SELECT COUNT(*) AS products_20_100
FROM products
WHERE price BETWEEN 20 AND 100;

-- Query 5. Кількість продуктів і середня ціна по кожному supplier_id
SELECT
  supplier_id,
  COUNT(*) AS product_count,
  AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;