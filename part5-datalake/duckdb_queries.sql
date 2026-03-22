-- Q1: List all customers along with the total number of orders they have placed

SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;


-- Q2: Find the top 3 customers by total order value

SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_order_value
FROM read_json_auto('orders.json') o
JOIN read_csv_auto('customers.csv') c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_order_value DESC
LIMIT 3;


-- Q3: List all orders placed by customers from Bangalore
-- (Adjusted: product-level detail not available)

SELECT 
    c.customer_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM read_json_auto('orders.json') o
JOIN read_csv_auto('customers.csv') c
    ON o.customer_id = c.customer_id
WHERE LOWER(c.city) = 'bangalore';


-- Q4: Join available data to show customer name, order date, and order details
-- (Adjusted: cannot include product_name due to missing product_id)

SELECT 
    c.customer_name,
    o.order_date,
    o.total_amount,
    o.num_items
FROM read_json_auto('orders.json') o
JOIN read_csv_auto('customers.csv') c
    ON o.customer_id = c.customer_id;
