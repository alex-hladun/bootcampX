SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN student ON (student.id = student_id)
JOIN cohorts ON (cohorts.id = student.cohort_id)
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1