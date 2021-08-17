-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.id) as total_assistances
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;