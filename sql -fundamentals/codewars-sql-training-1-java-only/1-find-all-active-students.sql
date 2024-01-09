-- create a simple SELECT query to display student information of all ACTIVE students.
-- Note:
--  IsActive (true = 1 or false = 0)
--  see specification: https://www.sqlite.org/datatype3.html


SELECT
    *
FROM
    students
WHERE
    IsActive = 1;
