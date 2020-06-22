SELECT name AS student, AVG(duration) AS average_assignment_duration
FROM student
JOIN assignment_submissions ON (student.id = student_id)
WHERE end_date IS null
GROUP BY student
ORDER BY average_assignment_duration DESC;