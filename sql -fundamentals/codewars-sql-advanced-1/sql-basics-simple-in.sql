-- create a SELECT statement, this SELECT statement will use an IN
-- to check whether a department has had a sale with a price over 98.00 dollars.
-- return table schema
--      id
--      name


SELECT
    d.id,
    d.name
FROM
    departments d
WHERE
    d.id IN (
        SELECT s.department_id
        FROM sales s
        WHERE s.price > 98.00
    );
