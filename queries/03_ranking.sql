-- Ranking stations using a window function
SELECT
  start_station_name,
  trip_count,
  RANK() OVER (ORDER BY trip_count DESC) AS station_rank
FROM (
  SELECT
    start_station_name,
    COUNT(*) AS trip_count
  FROM `bigquery-public-data.new_york_citibike.citibike_trips`
  WHERE tripduration IS NOT NULL
    AND start_station_name IS NOT NULL
  GROUP BY start_station_name
)
ORDER BY station_rank
LIMIT 10
