
--запрос соединяющий данные таблиц customers и orders
SELECT
	*
FROM
	magazine.customers AS c
JOIN
	magazine.orders AS o
		ON c.customer_id = o.customer_id;


--запрос соединяющий данные таблиц orders и customers (отличается лишь порядок вывода)
SELECT
	*
FROM
	magazine.orders AS o
JOIN
	magazine.customers AS c
		ON c.customer_id = o.customer_id;


--вывод имени клиента, его адреса, номера заказа и даты покупки
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
