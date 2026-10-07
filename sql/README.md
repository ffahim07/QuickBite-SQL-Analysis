# 🍔 QuickBite: Online Food Delivery SQL Analysis

## 📌 Project Overview
**QuickBite** is a portfolio-ready SQL project designed to analyze online food delivery operations. This project covers everything from database creation and data cleaning to advanced business insights using complex SQL queries, Subqueries, CTEs, and Window Functions.

## 🗄️ Database Schema & Entities
The database (`quickbite_db`) consists of four relational tables:
1. **`customers`**: Stores customer details (ID, name, email, join date).
2. **`restaurants`**: Stores restaurant partner information (ID, name, city, cuisine type).
3. **`delivery_partners`**: Stores delivery personnel data (ID, name, rating).
4. **`orders`**: Stores transaction and order statuses (Order ID, customer ID, restaurant ID, date, amount, status).

## 📂 Project Structure
```text
QuickBite_SQL_Project/
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_analysis.sql
│   └── 04_advanced_analysis.sql
│
└── README.md


