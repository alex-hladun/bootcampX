SELECT student.name AS student, 
AVG(assignment_submissions.duration) AS average_assignment_duration, 
AVG(assignments.duration) AS average_estimated_duration
FROM student
JOIN assignment_submissions ON (student.id = student_id)
JOIN assignments ON (assignments.id = assignment_id)
WHERE end_date IS null
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;