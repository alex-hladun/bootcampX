SELECT assignments.name
FROM assignments 
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN student ON student.id = student_id
  WHERE student.name = 'Ibrahim Schimmel'
);