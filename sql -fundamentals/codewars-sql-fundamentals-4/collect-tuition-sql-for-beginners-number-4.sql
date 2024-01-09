-- Write a select statement to get a list of all students who haven't paid their tuition yet.
-- The list should include all the data available about these students.

SELECT
    *
FROM
    students
WHERE
    tuition_received = 0;
