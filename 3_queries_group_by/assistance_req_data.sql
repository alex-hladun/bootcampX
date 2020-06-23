SELECT teachers.name AS teacher, student.name AS student, assignments.name AS assignment,
completed_at - started_at AS duration
FROM assistance_requests
JOIN student ON (student.id = student_id)
JOIN teachers ON (teachers.id = teacher_id)
JOIN assignments ON (assignments.id = assignment_id)
ORDER BY (completed_at - started_at);