SELECT student.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN student ON student.id = student_id
WHERE student.end_date IS NULL
GROUP BY student.name
HAVING count(assignment_submissions.*) < 100;