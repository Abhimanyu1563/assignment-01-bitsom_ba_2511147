## Storage Systems

The system uses a combination of storage technologies tailored to each of the four goals. For predicting patient readmission risk, a Data Lakehouse is used to store historical treatment data in a structured and queryable format. This enables efficient feature extraction for machine learning models while retaining raw data flexibility.

For enabling doctors to query patient history in plain English, a Vector Database is used. Patient records are converted into embeddings and stored in the vector database, allowing semantic search rather than keyword matching. This improves accuracy when queries use varied medical terminology.

For generating monthly reports such as bed occupancy and department-wise costs, the Data Lakehouse again serves as the primary storage system. It supports OLAP-style queries and aggregations required for reporting and dashboarding.

For streaming and storing real-time ICU vitals, a Real-time Streaming system (Kafka) is used for ingestion, and a Real-time Store is used for low-latency access. This ensures continuous data flow and immediate availability for monitoring and alert systems.

## OLTP vs OLAP Boundary

The OLTP system consists of operational sources such as Electronic Health Records, ICU monitoring devices, and hospital administrative systems. These systems handle real-time transactions and updates.

The boundary between OLTP and OLAP occurs at the ingestion layer. Once data passes through Batch Ingestion (ETL) or Real-time Streaming (Kafka), it transitions into the analytical system. The Data Lakehouse represents the OLAP layer, where data is stored in a structured format for querying, analytics, and model training.

This separation ensures that transactional workloads are not impacted by heavy analytical queries, while still enabling near real-time data availability through streaming pipelines.

## Trade-offs

A key trade-off in this design is the increased architectural complexity introduced by combining batch processing (ETL), real-time streaming (Kafka), a Data Lakehouse, and a Vector Database. While this hybrid approach provides flexibility and supports diverse use cases, it also increases system maintenance overhead and integration challenges.

To mitigate this, a unified data orchestration and monitoring layer can be implemented. Tools such as workflow schedulers and centralized logging systems can ensure smooth coordination between batch and streaming pipelines. Additionally, standardizing data formats and using schema management practices can reduce inconsistencies across systems.

This trade-off is justified because the benefits of scalability, flexibility, and advanced analytics capabilities outweigh the added complexity, especially for a healthcare system requiring both real-time responsiveness and deep analytical insights.
