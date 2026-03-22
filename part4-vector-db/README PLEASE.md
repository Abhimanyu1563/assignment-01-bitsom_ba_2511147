# Part 4 — Vector Databases

## Overview
This section demonstrates how vector embeddings capture semantic similarity between sentences using a pre-trained transformer model.

## Implementation Details
- Model used: `sentence-transformers/all-MiniLM-L6-v2`
- Total sentences: 10
- Topics covered:
  - Cricket
  - Cooking
  - Cybersecurity

## Tasks Completed
1. Generated embeddings for all sentences
2. Computed a 10×10 cosine similarity matrix
3. Visualized the similarity matrix using a heatmap
4. Processed a query sentence to find the top 2 most similar sentences along with similarity scores

## Important Note
GitHub may display an **"Invalid Notebook"** error due to rendering limitations with `.ipynb` files.

To properly view the notebook:
1. Download `embeddings_demo.ipynb`
2. Open it in Google Colab (https://colab.research.google.com)

All outputs (including the similarity matrix, heatmap, and query results) are correctly generated and stored in the notebook.

## Files Included
- `embeddings_demo.ipynb` — Main notebook containing code and outputs
- `vector_db_reflection.md` — Written explanation of vector database use case
