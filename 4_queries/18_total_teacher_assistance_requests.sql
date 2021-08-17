-- We need to be able to see how many assistance requests any teacher has completed.

SELECT count(name) as total_assistances, name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
GROUP BY name
HAVING name = 'Waylon Boehm';