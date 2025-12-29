# SQL Business Analysis 

This repository contains a small SQL portfolio project created to demonstrate practical SQL skills used in a Business Analyst / Junior Data Analyst role.

The project simulates a simple e-commerce database and focuses on querying business-relevant insights rather than advanced database engineering.

---

## Project overview
The database represents a basic online store and includes information about:
- customers
- products
- orders
- order items

The main goal of the project is to answer common business questions such as:
- how many customers come from each country
- how customer registrations change over time
- how many orders are paid, cancelled or refunded
- what revenue was generated from paid orders
- which countries generate the highest revenue

---

## Database structure

The database consists of four tables:
- **customers** – customer details and signup date  
- **products** – product catalog with categories and prices  
- **orders** – customer orders with order date and status  
- **order_items** – individual products within each order  

Relationships:
- one customer → many orders  
- one order → many order items  
- one product → many order items  

---

## Project structure
01_schema.sql – database schema (tables, keys, relations)<br>
02_data.sql – sample business data<br>
03_analysis.sql – analytical SQL queries<br>
README.md – project description


---

## Example analyses included

The `03_analysis.sql` file contains queries that answer the following questions:
- Number of customers per country
- Monthly customer signups
- Orders by status (paid / cancelled / refunded)
- Total revenue from paid orders
- Revenue by country (paid orders only)

All queries are written using standard PostgreSQL syntax and focus on clarity and readability.

---

## Tools used

- PostgreSQL
- VS Code
- TablePlus 

---

## Purpose

This project was created as a portfolio example to showcase:
- practical SQL querying
- joins and aggregations
- basic business analysis logic
- clean project structure and documentation

The data is intentionally small and easy to understand, making the focus purely on SQL logic and business interpretation.
