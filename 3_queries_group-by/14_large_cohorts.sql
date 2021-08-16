-- Get all cohorts with 18 or more students (Same as above, two diff ways to write same thing).
SELECT cohorts.name AS cohort_name, COUNT(students.cohort_id) AS student_count
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohort_name
HAVING COUNT(students.cohort_id) >= 18
ORDER BY COUNT(students.cohort_id);

-- -- Get all cohorts with 18 or more students.
-- SELECT cohorts.name AS cohort_name, COUNT(students.cohort_id) AS student_count
-- FROM cohorts
-- JOIN students ON students.cohort_id = cohorts.id
-- GROUP BY cohort_name
-- HAVING COUNT(students.cohort_id) >= 18
-- ORDER BY COUNT(students.cohort_id);
