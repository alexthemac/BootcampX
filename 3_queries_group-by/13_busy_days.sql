-- Assignments Per Day where total > 10 assigments per day
SELECT day, count(id) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(id) > 9
ORDER BY day;
