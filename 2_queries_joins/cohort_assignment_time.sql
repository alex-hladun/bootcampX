SELECT sum(duration) as total_duration
from assignment_submissions JOIN student
ON (student_id = student.id)
JOIN cohorts
ON (cohorts.id = student.cohort_id)
WHERE cohorts.name = 'FEB12';