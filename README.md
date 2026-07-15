# BigQuery Practice: NYC Citibike Analysis

Small hands-on project to get practical experience with BigQuery SQL — 
querying, filtering, aggregating, and ranking data from a public dataset.

## What I did
- Explored the NYC Citibike public dataset in BigQuery
- Handled a schema inconsistency: the dataset mixes older columns 
  (`starttime`, `tripduration`) with newer ones (`started_at`, `ended_at`) 
  across different time periods, causing nulls depending on which 
  columns are queried — filtered on legacy-only columns to isolate valid rows
- Aggregated trip counts by start station using GROUP BY
- Ranked stations by trip volume using a window function (RANK())

## Tools
BigQuery (Google Cloud), SQL

## Files
- `queries/` — SQL queries used, in order
- `data/top_stations_ranked.csv` — final ranked output
