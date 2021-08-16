-- Assignments Per Day
SELECT day, count(id) AS total_assigments
FROM assignments
GROUP BY day
ORDER BY day;