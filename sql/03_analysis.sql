USE quickbite_db;


SELECT COUNT(order_id) AS total_orders, SUM(total_amount) AS total_revenue 
FROM orders WHERE order_status = 'Delivered';


SELECT r.restaurant_name, r.city, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_revenue
FROM orders o
INNER JOIN restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name, r.city
ORDER BY total_revenue DESC;


SELECT c.customer_name, c.email, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name, c.email
ORDER BY total_spent DESC;