-- Number of customers per country
SELECT
  country,
  COUNT(*) AS customers_count
FROM customers
GROUP BY country
ORDER BY customers_count DESC;

-- Monthly customer signups
SELECT
   DATE_TRUNC('month', created_at) AS signup_month,
   COUNT (*) AS customers_count
FROM customers
GROUP BY signup_month
ORDER BY signup_month;

-- Orders by status (paid / cancelled / refunded)
SELECT
  status,
  COUNT(*) AS orders_count
FROM orders
GROUP BY status
ORDER BY orders_count DESC;

-- Revenue (paid orders only)
SELECT
  SUM(oi.quantity * oi.unit_price) AS revenue_paid
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
WHERE o.status = 'paid';

-- Revenue by country (paid orders only)
SELECT
  c.country,
  SUM(oi.quantity * oi.unit_price) AS revenue_paid
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN order_items oi ON oi.order_id = o.order_id
WHERE o.status = 'paid'
GROUP BY c.country
ORDER BY revenue_paid DESC;

-- Top products by revenue (paid orders only)
SELECT
  p.product_name,
  SUM(oi.quantity * oi.unit_price) AS revenue_paid
FROM products p
JOIN order_items oi ON oi.product_id = p.product_id
JOIN orders o ON o.order_id = oi.order_id
WHERE o.status = 'paid'
GROUP BY p.product_name
ORDER BY revenue_paid DESC;