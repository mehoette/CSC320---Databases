SELECT *
FROM ecommerce.customers
JOIN ecommerce.orders
ON customers.id = orders.customer_id;

SELECT *
FROM ecommerce.orders
JOIN ecommerce.items_orders
ON items_orders.order_id = orders.id;

SELECT *
FROM ecommerce.items
JOIN ecommerce.items_orders
ON items_orders.item_id = items.id;
