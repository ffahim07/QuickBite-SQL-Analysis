USE quickbite_db;

SELECT * FROM customers WHERE email IS NULL;
SELECT * FROM orders WHERE total_amount < 0;