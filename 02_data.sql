INSERT INTO "public"."customers" ("customer_id", "first_name", "last_name", "email", "country", "created_at") VALUES
(1, 'Anna', 'Kowalska', 'anna.kowalska@mail.com', 'Poland', '2024-01-10'),
(2, 'Piotr', 'Nowak', 'piotr.nowak@mail.com', 'Poland', '2024-01-18'),
(3, 'Kasia', 'Zielinska', 'kasia.zielinska@mail.com', 'Poland', '2024-02-05'),
(4, 'John', 'Smith', 'john.smith@mail.com', 'USA', '2024-01-12'),
(5, 'Emma', 'Brown', 'emma.brown@mail.com', 'UK', '2024-02-02'),
(6, 'Oliver', 'Taylor', 'oliver.taylor@mail.com', 'UK', '2024-03-11'),
(7, 'Mia', 'Muller', 'mia.muller@mail.com', 'Germany', '2024-02-20'),
(8, 'Lukas', 'Schmidt', 'lukas.schmidt@mail.com', 'Germany', '2024-03-02'),
(9, 'Maria', 'Garcia', 'maria.garcia@mail.com', 'Spain', '2024-03-20'),
(10, 'Sofia', 'Lopez', 'sofia.lopez@mail.com', 'Spain', '2024-03-28');

INSERT INTO "public"."orders" ("order_id", "customer_id", "order_date", "status") VALUES
(1, 1, '2024-03-01', 'paid'),
(2, 1, '2024-03-20', 'cancelled'),
(3, 2, '2024-03-05', 'paid'),
(4, 3, '2024-03-15', 'paid'),
(5, 4, '2024-03-02', 'paid'),
(6, 4, '2024-04-01', 'refunded'),
(7, 5, '2024-03-08', 'paid'),
(8, 6, '2024-03-21', 'paid'),
(9, 7, '2024-03-10', 'paid'),
(10, 8, '2024-03-18', 'paid'),
(11, 9, '2024-03-25', 'paid'),
(12, 10, '2024-03-27', 'cancelled');

INSERT INTO "public"."order_items" ("order_item_id", "order_id", "product_id", "quantity", "unit_price") VALUES
(1, 1, 1, 1, 19.99),
(2, 1, 4, 2, 4.49),
(3, 2, 2, 1, 79.99),
(4, 3, 3, 1, 34.99),
(5, 3, 5, 1, 6.99),
(6, 4, 7, 2, 12.99),
(7, 5, 2, 1, 79.99),
(8, 5, 1, 1, 19.99),
(9, 6, 8, 1, 39.99),
(10, 7, 6, 1, 14.99),
(11, 7, 4, 1, 4.49),
(12, 8, 8, 1, 39.99),
(13, 8, 1, 1, 19.99),
(14, 9, 3, 1, 34.99),
(15, 10, 7, 1, 12.99),
(16, 10, 5, 2, 6.99),
(17, 11, 2, 1, 79.99),
(18, 11, 6, 1, 14.99),
(19, 12, 1, 1, 19.99);

INSERT INTO "public"."products" ("product_id", "product_name", "category", "price") VALUES
(1, 'Wireless Mouse', 'Electronics', 19.99),
(2, 'Mechanical Keyboard', 'Electronics', 79.99),
(3, 'USB-C Hub', 'Electronics', 34.99),
(4, 'Notebook A5', 'Stationery', 4.49),
(5, 'Pen Set', 'Stationery', 6.99),
(6, 'Reusable Bottle', 'Lifestyle', 14.99),
(7, 'T-shirt Basic', 'Apparel', 12.99),
(8, 'Hoodie', 'Apparel', 39.99);

