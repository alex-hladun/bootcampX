SELECT sum(assignments.duration)
FROM assignment_submissions JOIN assignments
ON (assignment_id = assignments.id)
WHERE student_id = (SELECT id FROM student WHERE name = 'Ibrahim Schimmel');

SELECT sum(duration) 
from assignment_submissions JOIN student
ON (student_id = student.id)
WHERE name = 'Ibrahim Schimmel';