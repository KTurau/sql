SELECT
	*
FROM
	magazine.customers AS c
JOIN
	magazine.orders AS o
		ON c.customer_id = o.customer_id;


SELECT
	*
FROM
	magazine.orders AS o
JOIN
	magazine.customers AS c
		ON c.customer_id = o.customer_id;


SELECT
	c.customer_name,
	c.address,
	o.order_id,
	o.purchase_date
FROM
	magazine.orders AS o
JOIN
	magazine.customers AS c
		ON c.customer_id = o.customer_id;
