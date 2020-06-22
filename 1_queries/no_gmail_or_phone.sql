SELECT name, id, email, cohort_id
FROM student
WHERE email NOT LIKE ('%gmail.com') 
AND phone is null;