DROP TABLE products;
DROP TABLE customers;

CREATE TABLE products (
  id SERIAL primary key,
  name VARCHAR(255) not null,
  total_stock INT,
  leased_stock INT,
  current_stock INT,
  stock_level VARCHAR,
  stock_price FLOAT,
  monthly_return FLOAT,
  subscriber_id INT REFERENCES customers(id) ON DELETE CASCADE,

);

CREATE TABLE customers (
  id SERIAL primary key,
  name VARCHAR(255) not null,
  product_purchased VARCHAR(255),
  purchase_date VARCHAR(255),
  product_id INT REFERENCES products(id) ON DELETE CASCADE
);
