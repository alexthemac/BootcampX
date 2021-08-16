SELECT name, email, phone, end_date
FROM students
WHERE github IS NULL AND end_date IS NOT NULL;
