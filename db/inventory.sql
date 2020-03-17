DROP TABLE products;
DROP TABLE customers;

CREATE TABLE customers (
  id SERIAL primary key,
  name VARCHAR(255) not null
);

CREATE TABLE products (
  id SERIAL primary key,
  name VARCHAR(255) not null,
  total_stock INT,
  leased_stock INT,
  stock_price INT,
  customer_id INT REFERENCES customers(id) ON DELETE CASCADE
);
