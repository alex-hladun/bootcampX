SELECT name, id
FROM student
WHERE email is null 
OR phone is null;