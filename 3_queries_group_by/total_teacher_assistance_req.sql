SELECT COUNT(*) AS total_assistances, teachers.name FROM assistance_requests
JOIN teachers ON (teachers.id = teacher_id)
GROUP BY name;