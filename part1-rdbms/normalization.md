## Anomaly Analysis

### Insert Anomaly
Columns involved: product_id, product_name, category, unit_price

In the dataset, product information exists only within order rows. Each product_id appears along with order_id and customer details. This means a new product cannot be inserted independently. For example, a new product cannot be added unless a corresponding order record is created, forcing unnecessary data insertion.

### Update Anomaly
Columns involved: customer_id, customer_name, customer_email, customer_city

Customer information is repeated across multiple rows. The same customer_id appears in several records with identical name, email, and city values. If a customer’s city or email changes, every row must be updated. Missing even one row results in inconsistent data within the dataset.

### Delete Anomaly
Columns involved: product_id, product_name, category, unit_price

Product data exists only within order records. If a product appears in only one row and that order is deleted, all information related to that product is lost. This results in unintended loss of product data.
