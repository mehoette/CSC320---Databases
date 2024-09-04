#Real Quick I’m going to add more books to my list to make it easier

INSERT INTO ecommerce.items (id, name, cost, created_at, updated_at)
VALUES(4, 'Dracula', "17.82", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items (id, name, cost, created_at, updated_at)
VALUES(5, 'The Very Hungry Caterpillar', "8.78", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items (id, name, cost, created_at, updated_at)
VALUES(6, 'The Hobbit', "11.19", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO ecommerce.items (id, name, cost, created_at, updated_at)
VALUES(7, 'They Both Die at the End', "9.99", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

#This subquery Lists the id and name along with the average cost in the list
SELECT id, name, cost, (SELECT AVG(cost) FROM ecommerce.items)
FROM ecommerce.items;

#This subquery gets the name and cost for books that cost more than the average cost in the list
SELECT name, cost
FROM ecommerce.items
WHERE cost > (
	SELECT AVG(cost)
	FROM ecommerce.items
);

#This subquery gets the cost and order for every order made by Spunk Davis
SELECT cost, order_date
FROM ecommerce.orders
WHERE customer_id = (SELECT id from ecommerce.customers where name = ("Spunk Davis"));

#This subquery gets the id of every order that ordered The Great Gatsby
SELECT order_id
FROM ecommerce.items_orders
WHERE item_id = (SELECT id from ecommerce.items where name = ("The Great Gatsby"));

#These next 2 subqueries are related

#This uses 2 subqueries to make a new order for Mikayla Harold that costs the same amount as the book Dracula (they only ordered Dracula)
INSERT INTO ecommerce.orders (id, order_date, cost, customer_id, created_at, updated_at)
VALUES(3, CURRENT_TIMESTAMP, (SELECT cost From ecommerce.items where name = "Dracula"), (SELECT id From ecommerce.customers where name = "Mikayla Harold"), CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

#this subquery completes the last one by adding that order and connecting it to dracula
INSERT INTO ecommerce.items_orders(order_id, item_id, created_at, updated_at)
values(3, (SELECT item_id From ecommerce.items where name = "Dracula"),  CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

#this subquery selects all orders that cost more than buying just the book A Wrinkle in Time
Select *
from ecommerce.orders
where cost > (Select cost from ecommerce.items where name = "A Wrinkle in Time");
