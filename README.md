# 📊 SQL Superstore Sales Analysis

## Overview
This project analyzes sales data from a fictional retail superstore using SQL. It is part of my SQL mastery roadmap and demonstrates core analytics skills used in Data Analyst, Business Analyst, and Financial Analyst roles.

## Business Problem
Management wants to understand:
- Which regions and customer segments drive the most revenue.
- Which product categories are most profitable.
- Who our top customers are.
- How sales trend over time.

## Dataset
- **Tables:** customers, products, orders
- **Rows:** 5 customers, 8 products, 15 orders (sample, expandable)
- **Fields:** customer segment, region, category, sales, profit, order/ship dates

## ER Diagram
ER diagram is in the Superstore ER Diagram.jpg file.

## Key SQL Skills Demonstrated
- Basic querying: `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- Aggregations: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- Grouped analysis: `GROUP BY`, `HAVING`
- Table relationships: `INNER JOIN`, `LEFT JOIN`
- Business reporting queries (KPIs, top N, breakdowns)

## Example Business Insights
From the sample data:
- West region generates the highest revenue and has the highest average order value.
- All products have equal profit margin.
- A small number of customers contribute a large share of sales.
- Daily sales show unsteady activity across the last two weeks of January 2024.

## Files
- `database-setup/schema.sql` – Table definitions
- `database-setup/data_import.sql` – Sample data inserts
- `queries/01_basic_queries.sql` – Data exploration queries
- `queries/02_filter_sort.sql` – WHERE, ORDER BY, LIMIT
- `queries/03_aggregations_groupby.sql` – Aggregate and grouped analysis
- `queries/04_joins.sql` – Joining tables for richer views
- `queries/05_dashboard_queries.sql` – KPI and dashboard-style queries
- `insights/business_insights.md` – Narrative summary of findings

## How to Run
1. Open an online PostgreSQL playground like DB Fiddle (`https://www.db-fiddle.com/`).
2. Copy the contents of `schema.sql` into the **Schema** section and run.
3. Copy the contents of `data_import.sql` and run.
4. Copy queries from the `queries` folder into the **Query** section and run them one by one.

## Role Relevance
This project is relevant for:
- **Data Analyst:** Sales KPIs, customer and product analysis.
- **Business Analyst:** Revenue trends, region and segment performance.
- **Financial Analyst:** Profit and margin analysis by product and category.

## Next Steps
- Add window functions for ranking customers and products.
- Add time-series analysis (month-over-month growth).
- Extend the dataset using real-world Superstore data from Kaggle.
- Connect this SQL work to a BI dashboard (Power BI / Tableau).
