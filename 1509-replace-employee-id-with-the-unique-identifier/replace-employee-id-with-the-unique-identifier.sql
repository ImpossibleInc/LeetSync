# Write your MySQL query statement below

/*
SELECT unique_id, name
FROM Employees
CROSS JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id
UNION
SELECT NULL AS unique_id, name
FROM Employees
WHERE Employees.id NOT IN (
    SELECT id
    FROM EmployeeUNI)
*/
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id