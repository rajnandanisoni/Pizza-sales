-- Join the necessary to table to find the total quantity of  each pizza category ordered

SELECT 
    pizza_types.category,
    SUM(orders_details.Quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    orders_details ON orders_details.Pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY quantity DESC;