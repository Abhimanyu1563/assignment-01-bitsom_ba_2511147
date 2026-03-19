-- ===============================
-- TABLE: customers
-- ===============================
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(100) NOT NULL
);

INSERT INTO customers VALUES
('C101','Rahul Sharma','rahul@email.com','Mumbai'),
('C102','Anita Mehta','anita@email.com','Delhi'),
('C103','Karan Verma','karan@email.com','Mumbai'),
('C104','Priya Nair','priya@email.com','Bangalore'),
('C105','Rohit Singh','rohit@email.com','Pune');


-- ===============================
-- TABLE: products
-- ===============================
CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100),
    unit_price DECIMAL(10,2) NOT NULL
);

INSERT INTO products VALUES
('P201','Laptop','Electronics',55000),
('P202','Smartphone','Electronics',25000),
('P203','Headphones','Accessories',2000),
('P204','Office Chair','Furniture',7000),
('P205','Desk Lamp','Furniture',1200);


-- ===============================
-- TABLE: sales_reps
-- ===============================
CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address TEXT
);

INSERT INTO sales_reps VALUES
('S301','Amit Kapoor','amit@company.com','Delhi Office'),
('S302','Neha Joshi','neha@company.com','Mumbai Office'),
('S303','Arjun Malhotra','arjun@company.com','Delhi Office'),
('S304','Sneha Iyer','sneha@company.com','Bangalore Office'),
('S305','Raj Patel','raj@company.com','Mumbai Office');


-- ===============================
-- TABLE: orders
-- ===============================
CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10),
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

INSERT INTO orders VALUES
('ORD1001','C101','S301','2024-01-10'),
('ORD1002','C102','S302','2024-01-11'),
('ORD1003','C103','S303','2024-01-12'),
('ORD1004','C104','S304','2024-01-13'),
('ORD1005','C105','S305','2024-01-14');


-- ===============================
-- TABLE: order_items
-- ===============================
CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id VARCHAR(10) NOT NULL,
    product_id VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
('ORD1001','P201',1,55000),
('ORD1002','P202',2,25000),
('ORD1003','P203',3,2000),
('ORD1004','P204',1,7000),
('ORD1005','P205',4,1200);
