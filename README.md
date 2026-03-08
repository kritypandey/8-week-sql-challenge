# Danny's Diner SQL Case Study

This project is part of the **8 Week SQL Challenge** by Danny Ma.

The goal of this case study is to analyze restaurant sales data and answer business questions using SQL.

---

## 📊 Dataset

The dataset contains three tables:

### 1. sales
- customer_id
- order_date
- product_id

### 2. menu
- product_id
- product_name
- price

### 3. members
- customer_id
- join_date

---

## 🛠 Tools Used

- PostgreSQL
- SQL
- pgAdmin
- GitHub

---

## 📌 Business Questions

1. What is the total amount each customer spent at the restaurant?
2. How many days has each customer visited the restaurant?
3. What was the first item from the menu purchased by each customer?
4. What is the most purchased item on the menu?
5. Which item was the most popular for each customer?

---

## 💻 Example SQL Query

```sql
-- Question 1
-- Total amount spent by each customer

SELECT
s.customer_id,
SUM(m.price) AS total_spent
FROM sales s
JOIN menu m
ON s.product_id = m.product_id
GROUP BY s.customer_id
ORDER BY total_spent DESC;
```

---

## 📂 Project Structure

```
dannys-diner-sql-case-study
│
├── datasets
│   ├── sales.csv
│   ├── menu.csv
│   └── members.csv
│
├── sql_queries
│   └── solutions.sql
│
├── database_setup
│   └── create_tables.sql
│
└── README.md
```

---

## 🚀 Skills Demonstrated

- SQL Joins
- Aggregations (SUM, COUNT)
- Window Functions (ROW_NUMBER)
- Data Analysis Thinking
- Query Writing and Optimization

---

## 📈 Project Objective

The objective of this project is to practice SQL queries for real-world data analysis scenarios such as customer behavior, purchase patterns, and menu performance.

---

## 📚 Reference

8 Week SQL Challenge by Danny Ma  
https://8weeksqlchallenge.com

---
