# Write your MySQL query statement below

SELECT WeatherToday.id AS id
FROM Weather WeatherToday
JOIN Weather WeatherYesterday
WHERE WeatherToday.temperature > (
    SELECT WeatherYesterday.temperature
    WHERE WeatherYesterday.recordDate = WeatherToday.recordDate - INTERVAL 1 DAY
)