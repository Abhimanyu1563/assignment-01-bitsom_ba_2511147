## ETL Decisions

### Decision 1 – Standardizing Date Formats
Problem: The raw dataset contained inconsistent date formats, making it difficult to join and analyze time-based data.
Resolution: All dates were converted into a standard DATE format and a separate date dimension table (dim_date) was created with attributes such as day, month, and year.

### Decision 2 – Handling NULL Values
Problem: Some records had missing values in important fields like price or quantity, which could affect revenue calculations.
Resolution: Missing numeric values were either removed or replaced with appropriate defaults to ensure accurate aggregation in the fact table.

### Decision 3 – Consistent Category Naming
Problem: Product categories had inconsistent casing (e.g., "electronics", "Electronics", "ELECTRONICS").
Resolution: All category values were standardized to a consistent format before loading into the dimension table to avoid duplication and ensure correct grouping.
