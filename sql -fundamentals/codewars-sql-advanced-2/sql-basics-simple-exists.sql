-- reate a SELECT statement that will contain data about departments that had a sale with a price over 98.00 dollars
-- This SELECT statement will have to use an EXISTS to achieve the task.
-- return table schema
--      id
--      name


SELECT
    id,
    name
FROM
    departments
WHERE EXISTS (
    SELECT
        *
    FROM
        sales
    WHERE
        departments.id = sales.department_id
    AND
        price > 98
);
