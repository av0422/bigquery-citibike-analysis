-- Top 10 busiest start stations by trip count
SELECT
  start_station_name,
  COUNT(*) AS trip_count
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE tripduration IS NOT NULL
  AND start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY trip_count DESC
LIMIT 10
