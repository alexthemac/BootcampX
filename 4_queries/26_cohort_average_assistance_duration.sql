-- Calculate the average total duration of assistance requests for each cohort.

SELECT AVG (total_duration) AS average_total_duration FROM (SELECT SUM (completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration) AS total_duration;
