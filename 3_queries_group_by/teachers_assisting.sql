SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(*) AS total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN student ON student_id = student.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY cohorts.name, teachers.name
ORDER BY teacher;