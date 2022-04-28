SELECT first_name, last_name, order_date, amount, amount
FROM customer
FULL OUTER JOIN "order"
ON customer.customer_id = "order".customer_id;