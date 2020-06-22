SELECT name, id, cohort_id
FROM student
WHERE end_date is null
ORDER BY cohort_id;