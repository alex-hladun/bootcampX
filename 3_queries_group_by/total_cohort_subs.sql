SELECT cohorts.name AS cohort, count(*) AS total_submissions
FROM cohorts
JOIN student ON (cohorts.id = cohort_ID)
JOIN assignment_submissions ON (student.id = student_id)
GROUP BY cohorts.name
ORDER BY count(*) DESC;