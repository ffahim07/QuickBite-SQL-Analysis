USE quickbite_db;

-- Subquery
SELECT order_id, total_amount FROM orders 
WHERE total_amount > (SELECT AVG(total_amount) FROM orders);

-- CTE
WITH AverageSales AS (
    SELECT AVG(total_amount) AS avg_amt FROM orders
)
SELECT o.order_id, o.total_amount, a.avg_amt
FROM orders o JOIN AverageSales a WHERE o.total_amount > a.avg_amt;

-- Window Function (RANK)
SELECT order_id, customer_id, total_amount, 
RANK() OVER (ORDER BY total_amount DESC) AS order_rank 
FROM orders;