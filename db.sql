CREATE extension IF NOT EXISTS "uuid-ossp";

CREATE TABLE carts (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  created_at DATE NOT NULL,
  updated_at DATE NOT NULL
)

INSERT INTO carts (id, created_at, updated_at) 
VALUES ("ac1326b9-304d-40cc-aa67-28272b9f6948", now(), now())

CREATE TABLE cart_items (
  cart_id uuid,
  product_id uuid,
  count INTEGER,
  FOREIGN KEY ("cart_id") REFERENCES "carts" ("id")
)

INSERT INTO cart_items (cart_id, product_id, count)
VALUES ("ac1326b9-304d-40cc-aa67-28272b9f6948", "3892a03c-6377-4b0f-b94e-708aea060c34", 2)