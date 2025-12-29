-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS customers_customer_id_seq;

-- Table Definition
CREATE TABLE "public"."customers" (
    "customer_id" int4 NOT NULL DEFAULT nextval('customers_customer_id_seq'::regclass),
    "first_name" text NOT NULL,
    "last_name" text NOT NULL,
    "email" text NOT NULL,
    "country" text NOT NULL,
    "created_at" date NOT NULL,
    PRIMARY KEY ("customer_id")
);

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS orders_order_id_seq;

-- Table Definition
CREATE TABLE "public"."orders" (
    "order_id" int4 NOT NULL DEFAULT nextval('orders_order_id_seq'::regclass),
    "customer_id" int4 NOT NULL,
    "order_date" date NOT NULL,
    "status" text NOT NULL CHECK (status = ANY (ARRAY['paid'::text, 'cancelled'::text, 'refunded'::text])),
    PRIMARY KEY ("order_id")
);

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS order_items_order_item_id_seq;

-- Table Definition
CREATE TABLE "public"."order_items" (
    "order_item_id" int4 NOT NULL DEFAULT nextval('order_items_order_item_id_seq'::regclass),
    "order_id" int4 NOT NULL,
    "product_id" int4 NOT NULL,
    "quantity" int4 NOT NULL,
    "unit_price" numeric(10,2) NOT NULL,
    PRIMARY KEY ("order_item_id")
);

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS products_product_id_seq;

-- Table Definition
CREATE TABLE "public"."products" (
    "product_id" int4 NOT NULL DEFAULT nextval('products_product_id_seq'::regclass),
    "product_name" text NOT NULL,
    "category" text NOT NULL,
    "price" numeric(10,2) NOT NULL,
    PRIMARY KEY ("product_id")
);



-- Indices
CREATE UNIQUE INDEX customers_email_key ON public.customers USING btree (email);
ALTER TABLE "public"."orders" ADD FOREIGN KEY ("customer_id") REFERENCES "public"."customers"("customer_id");
ALTER TABLE "public"."order_items" ADD FOREIGN KEY ("order_id") REFERENCES "public"."orders"("order_id");
ALTER TABLE "public"."order_items" ADD FOREIGN KEY ("product_id") REFERENCES "public"."products"("product_id");
