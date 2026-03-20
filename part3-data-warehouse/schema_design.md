## Data Warehouse Schema Design

Based on the provided retail_transactions dataset, a Star Schema is designed to support analytical queries and business intelligence reporting.

### Fact Table: fact_sales

- transaction_id (Primary Key)
- customer_id (Foreign Key)
- product_id (Foreign Key)
- store_id (Foreign Key)
- date_id (Foreign Key)
- units_sold
- unit_price
- total_amount (derived: units_sold × unit_price)

This table stores quantitative transactional data for analysis.

---

### Dimension Table: dim_product

- product_id (Primary Key)
- product_name
- category

---

### Dimension Table: dim_store

- store_id (Primary Key)
- store_name
- store_city

---

### Dimension Table: dim_customer

- customer_id (Primary Key)

(Note: Only customer_id is available in the dataset, so no additional attributes are included.)

---

### Dimension Table: dim_date

- date_id (Primary Key)
- full_date
- day
- month
- year

---

### Design Justification

The dataset contains transactional sales data, making it suitable for a Star Schema design. The fact table captures measurable values such as units sold and revenue, while dimension tables provide descriptive context.

Separating product, store, customer, and date dimensions enables efficient aggregation and filtering for business intelligence queries. For example, this schema supports:

- Total sales by store city
- Revenue by product category
- Monthly sales trends
- Customer purchase patterns

The design reduces redundancy and improves query performance, which is essential for large-scale analytical workloads in data warehousing systems.
