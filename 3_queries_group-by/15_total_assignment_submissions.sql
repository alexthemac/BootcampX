-- Get the total number of assignment submissions for each cohort.
SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions 
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;