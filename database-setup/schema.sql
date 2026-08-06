-- Customers table
CREATE TABLE customers (
    customer_id   VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(100),
    segment       VARCHAR(50),
    city          VARCHAR(100),
    state         VARCHAR(100),
    country       VARCHAR(100),
    postal_code   VARCHAR(20),
    region        VARCHAR(50)
);

-- Products table
CREATE TABLE products (
    product_id   VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(200),
    category     VARCHAR(50),
    subcategory  VARCHAR(50)
);

-- Orders table
CREATE TABLE orders (
    order_id    VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    product_id  VARCHAR(50),
    order_date  DATE,
    ship_date   DATE,
    ship_mode   VARCHAR(50),
    quantity    INT,
    sales       DECIMAL(10,2),
    profit      DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id)  REFERENCES products(product_id)
);
