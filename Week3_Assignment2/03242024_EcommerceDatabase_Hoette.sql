CREATE DATABASE ecommerce;

CREATE TABLE ecommerce.customers (
    id int,
    name varchar(255),
    address varchar(255),
    credit_card_number varchar(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ecommerce.orders (
    id int,
    order_date DATETIME,
    cost float,
    customer_id int,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ecommerce.items (
    id int,
    name varchar(255),
    cost float,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ecommerce.items_orders (
    order_id int,
    item_id int,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO ecommerce.customers (id, name, address, credit_card_number, updated_at)
VALUES(1, 'Spunk Davis', "2 Long Branch ct", 123456789012345, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.customers (id, name, address, credit_card_number, updated_at)
VALUES(2, 'Wanda Hamlet', "33 East Westrock Ln", 5658268558264926, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.customers (id, name, address, credit_card_number, updated_at)
VALUES(3, 'Mikayla Harold', "47 Pennsylvania Ave", 1947294729472947, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items (id, name, cost, updated_at)
VALUES(1, 'The Great Gatsby', "14.99", CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items (id, name, cost, updated_at)
VALUES(2, 'A Wrinkle in Time', "9.99", CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items (id, name, cost, updated_at)
VALUES(3, 'Tom Sawyer', "15.76", CURRENT_TIMESTAMP);

INSERT INTO ecommerce.orders (id, order_date, cost, updated_at)
VALUES(1, CURRENT_TIMESTAMP, "14.99", 3, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.orders (id, order_date, cost, customer_id, updated_at)
VALUES(2, CURRENT_TIMESTAMP, "25.75", 1, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items_orders (order_id, item_id, updated_at)
VALUES(1, 1, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items_orders (order_id, item_id, updated_at)
VALUES(2, 2, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items_orders (order_id, item_id, updated_at)
VALUES(2, 3, CURRENT_TIMESTAMP);

UPDATE ecommerce.items
SET cost = 17.99, updated_at = CURRENT_TIMESTAMP
WHERE id = 1;

UPDATE ecommerce.orders
SET cost = 17.99, updated_at = CURRENT_TIMESTAMP
WHERE id = 1;

DELETE FROM ecommerce.customers
WHERE name='Wanda Hamlet';