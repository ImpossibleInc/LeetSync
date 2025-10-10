# Write your MySQL query statement below

SELECT 
    s.user_id, 
    ROUND(COALESCE(SUM(c.action = 'confirmed') / COUNT(c.action), 0), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;

/*
SELECT
    user_id,
    COUNT(action = 'confirmed') AS confirmed,
    COUNT(action) AS total,
    COUNT(action = 'confirmed') / COUNT(action) AS average,
    ROUND((COUNT(action = 'confirmed') / COUNT(action)), 2) AS confirmation_rate
FROM Confirmations
GROUP BY user_id
*/

