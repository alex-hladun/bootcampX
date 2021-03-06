const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT student.id AS student_id, student.name AS name, cohorts.name AS cohort
FROM student
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE ('%${process.argv[2]}%')
LIMIT ${process.argv[3]};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));