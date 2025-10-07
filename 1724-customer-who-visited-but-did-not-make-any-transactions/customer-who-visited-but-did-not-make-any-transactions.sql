SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits
WHERE Visits.visit_id NOT IN (
    SELECT Transactions.visit_id
    FROM Transactions
)
GROUP BY customer_id