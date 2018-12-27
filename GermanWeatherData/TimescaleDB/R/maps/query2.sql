SELECT s.state "state", avg(w.air_temperature_at_2m) "avg_temp"
FROM sample.weather_data w
    INNER JOIN sample.station s ON w.station_identifier = s.identifier
WHERE w.timestamp >= '{{start_date}}'::date AND w.timestamp < '{{end_date}}'::date
GROUP BY "state"