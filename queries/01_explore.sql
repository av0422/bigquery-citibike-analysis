-- Initial exploration of the dataset
SELECT
  starttime,
  start_station_name,
  end_station_name,
  tripduration
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE tripduration IS NOT NULL
LIMIT 10
