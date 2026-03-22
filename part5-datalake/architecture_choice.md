## Architecture Recommendation

For a fast-growing food delivery startup handling GPS logs, customer reviews, payment transactions, and menu images, a Data Lakehouse architecture is the most suitable choice.

First, the system must handle diverse data types. While transactions are structured, GPS logs are semi-structured, and reviews and images are unstructured. A traditional data warehouse is not designed for such variety, whereas a data lakehouse allows storing all formats in their raw form without strict schema constraints.

Second, scalability is essential. Data such as GPS logs and user-generated content grows rapidly and continuously. A data lakehouse, built on distributed storage, can scale efficiently and at a lower cost compared to traditional warehouse systems.

Third, the architecture supports both analytics and advanced processing. The startup needs not only reporting (like order trends) but also machine learning tasks such as sentiment analysis on reviews or route optimization using GPS data. A data lakehouse enables both types of workloads on the same data platform.

Finally, it improves data accessibility and performance by combining the reliability of warehouses with the flexibility of lakes. This ensures that data remains queryable while still supporting raw data storage.

Therefore, a Data Lakehouse provides the best balance of flexibility, scalability, and analytical capability for this use case.
