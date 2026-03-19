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

## Normalization Justification

Keeping all data in a single table may appear simpler, but it creates serious issues in practice. In the given dataset, customer details such as name, email, and city are repeated across multiple rows for every order. For example, the same customer_id appears multiple times with identical information. If a customer’s email changes, every row must be updated, increasing the risk of inconsistency.

Similarly, product details such as product_name, category, and unit_price are duplicated across orders. If the price of a product changes or needs correction, updating all rows is error-prone. This demonstrates the update anomaly clearly.

The dataset also shows delete anomalies. If a product appears in only one order and that order is deleted, all information about that product is lost. This indicates that product data is not stored independently.

By normalizing the data into separate tables—customers, products, sales_reps, orders, and order_items—each entity is stored only once. Relationships are maintained using foreign keys, eliminating redundancy and ensuring consistency.

Therefore, normalization is not over-engineering but a necessary step to ensure data integrity, reduce redundancy, and support scalable database design.
