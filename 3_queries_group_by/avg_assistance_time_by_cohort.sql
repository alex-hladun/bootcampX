SELECT AVG(average_total_duration) as average_total_duration FROM (SELECT sum(completed_at - started_at) AS average_total_duration
FROM assistance_requests
JOIN student ON (student.id = student_id)
JOIN cohorts ON (cohorts.id = student.cohort_id)
GROUP BY cohorts.name) b;