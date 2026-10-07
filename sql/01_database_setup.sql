USE quickbite_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    cuisine_type VARCHAR(50)
);

CREATE TABLE delivery_partners (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(100) NOT NULL,
    rating DECIMAL(3,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO customers (customer_id, customer_name, email, join_date) VALUES
(1, 'Rahim Uddin', 'rahim@gmail.com', '2025-01-10'),
(2, 'Sadia Akter', 'sadia@yahoo.com', '2025-01-15'),
(3, 'Karim Khan', 'karim@gmail.com', '2025-02-01'),
(4, 'Nazmul Hasan', 'nazmul@hotmail.com', '2025-02-10'),
(5, 'Farhana Islam', 'farhana@gmail.com', '2025-02-20');

INSERT INTO restaurants (restaurant_id, restaurant_name, city, cuisine_type) VALUES
(101, 'Sultan\'s Dine', 'Dhaka', 'Biryani'),
(102, 'Burger King', 'Dhaka', 'Fast Food'),
(103, 'Khabar Ghor', 'Chittagong', 'Traditional'),
(104, 'Pizza Hut', 'Dhaka', 'Italian'),
(105, 'Sassy Sushi', 'Sylhet', 'Chinese');

INSERT INTO delivery_partners (partner_id, partner_name, rating) VALUES
(1, 'Anis Rahman', 4.80),
(2, 'Jasim Uddin', 4.50),
(3, 'Sohel Rana', 4.90),
(4, 'Bulbul Ahmed', 4.20);

INSERT INTO orders (order_id, customer_id, restaurant_id, order_date, total_amount, order_status) VALUES
(1001, 1, 101, '2026-03-01 14:30:00', 850.00, 'Delivered'),
(1002, 2, 102, '2026-03-01 15:00:00', 450.50, 'Delivered'),
(1003, 3, 104, '2026-03-02 19:20:00', 1200.00, 'Delivered'),
(1004, 1, 103, '2026-03-03 13:10:00', 600.00, 'Cancelled'),
(1005, 4, 101, '2026-03-03 20:15:00', 950.00, 'Delivered'),
(1006, 5, 105, '2026-03-04 12:45:00', 780.00, 'Delivered');