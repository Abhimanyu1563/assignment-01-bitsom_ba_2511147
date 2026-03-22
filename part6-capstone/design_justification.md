## Storage Systems

The system uses a combination of storage technologies tailored to each of the four goals. For predicting patient readmission risk, a Data Lakehouse is used to store historical treatment data in a structured and queryable format. This enables efficient feature extraction for machine learning models while retaining raw data flexibility.

For enabling doctors to query patient history in plain English, a Vector Database is used. Patient records are converted into embeddings and stored in the vector database, allowing semantic search rather than keyword matching. This improves accuracy when queries use varied medical terminology.

For generating monthly reports such as bed occupancy and department-wise costs, the Data Lakehouse again serves as the primary storage system. It supports OLAP-style queries and aggregations required for reporting and dashboarding.

For streaming and storing real-time ICU vitals, a Real-time Streaming system (Kafka) is used for ingestion, and a Real-time Store is used for low-latency access. This ensures continuous data flow and immediate availability for monitoring and alert systems.
