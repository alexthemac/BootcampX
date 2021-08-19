//Initial setup of postgreSQL and node
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

//Log connected once connection made
console.log("connected");

//Query that will use command line arguments. This is to prevent SQL injection attack ($1 is the first value in the values array, $2 is second etc...)
const queryString = `
SELECT DISTINCT teachers.name AS teacher, cohorts.name as cohort
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name LIKE $1
ORDER BY teacher;
`;

//Values that come from command line arguments. This is to prevent SQL injection attack
const like = process.argv[2] || 'JUL02';

const values = [`%${like}%`];

//Do the query
pool.query(queryString, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});