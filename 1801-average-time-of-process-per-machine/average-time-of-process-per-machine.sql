# Write your MySQL query statement below
/*
SELECT End.machine_id, End.process_id, (End.timestamp - Start.timestamp) AS process_time
FROM Activity Start
JOIN Activity End
WHERE End.machine_id = Start.machine_id AND End.process_id = Start.process_id
*/


SELECT Start.machine_id, ROUND(AVG(End.timestamp - Start.timestamp), 3) AS processing_time
FROM Activity Start
JOIN Activity End
WHERE Start.machine_id = End.machine_id AND Start.process_id = End.process_id AND Start.   activity_type = 'start' AND End.activity_type = 'end'
GROUP BY Start.machine_id