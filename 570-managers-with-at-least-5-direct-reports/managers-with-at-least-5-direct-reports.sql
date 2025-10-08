# Write your MySQL query statement below
/*
SELECT Employee.name
FROM Employee
JOIN Employee Underlings
WHERE Employee.id = (
    SELECT Underlings.managerId
    GROUP BY Underlings.managerId
    HAVING COUNT(Underlings.managerID) >= 5
);

SELECT managerId
FROM Employee 
GROUP BY managerId
HAVING COUNT(managerID) >= 5
*/

SELECT b.name
FROM Employee b
WHERE b.id IN (
    SELECT e.managerId
    FROM Employee e
    GROUP BY e.managerId
    HAVING COUNT(e.managerID) >= 5
)