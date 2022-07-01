USE dados_pizza;

UPDATE supplier SET price_per_gram = 4.75 WHERE id = 3;

SELECT distinct clients.id AS Document,clients.name AS Name ,orders.id AS "Order ID",orders.date,pizzas.name AS "Pizza Flavor",
pizzas.price As Price,amount,waiters.name AS Waiter,cooks.name As Cook FROM orders 
INNER JOIN clients ON orders.id_client=clients.id 
INNER JOIN operations ON orders.id=operations.id_order
INNER JOIN waiters ON orders.waiter=waiters.id_w
INNER JOIN cooks ON orders.cook=cooks.id_c
INNER JOIN pizzas ON operations.id_pizza=pizzas.id;

SELECT pizzas.name AS "Pizza Flavor",  ingredients.id AS "ID Ingredient",ingredients.name AS Ingredient,
expend.amount_i AS Quantity,supplier.id AS "ID Supplier", supplier.name AS Store, supplier.price_per_gram AS Price
FROM expend
INNER JOIN pizzas ON pizzas.id=expend.id_pizza
INNER JOIN ingredients ON ingredients.id = expend.id_ingredient
INNER JOIN supplier ON supplier.id = ingredients.id_supplier
ORDER BY pizzas.name;
