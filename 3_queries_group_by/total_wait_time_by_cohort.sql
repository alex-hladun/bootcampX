SELECT cohorts.name, AVG(completed_at - started_at) AS total_duration
FROM assistance_requests
JOIN student ON (student.id = student_id)
JOIN cohorts ON (cohorts.id = student.cohort_id)