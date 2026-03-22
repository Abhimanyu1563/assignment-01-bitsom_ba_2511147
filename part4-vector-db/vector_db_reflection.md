## Vector DB Use Case

In a legal-tech system designed to search large contracts using natural language queries, traditional keyword-based search is often insufficient. Keyword search depends on exact word matches and fails when different terminology or phrasing is used. For example, a clause related to “termination” may be written as “the agreement may be ended,” which would not be captured effectively using simple keyword matching.

Vector databases address this limitation by using embeddings that capture the semantic meaning of text. Instead of matching exact words, both the query and the contract content are converted into vector representations, allowing the system to identify semantically similar content even when the wording differs.

In such a system, long contracts are broken into smaller chunks and stored as embeddings in a vector database. When a user enters a natural language query, it is converted into an embedding and compared against stored vectors using similarity metrics like cosine similarity. The system then retrieves the most relevant sections based on meaning rather than exact terms.

This approach significantly improves search accuracy and user experience. It allows lawyers to quickly locate relevant clauses without knowing the exact terminology used in the contract, making vector databases a powerful tool for intelligent document search.
