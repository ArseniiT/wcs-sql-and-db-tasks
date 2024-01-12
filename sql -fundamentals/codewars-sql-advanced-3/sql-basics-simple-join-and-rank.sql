-- create a simple SELECT statement that will return all columns from the people table,
-- and join to the sales table so that you can return the COUNT of all sales and RANK each person by their sale_count.
-- You should return all people fields as well as the sale count as "sale_count" and the rank as "sale_rank".


SELECT
    p.id,
    p.name,
    COUNT(s.id) AS sale_count,
    RANK() OVER (ORDER BY COUNT(s.id) DESC) AS sale_rank
FROM
    people p
LEFT JOIN
    sales s ON p.id = s.people_id
GROUP BY
    p.id, p.name
ORDER BY sale_count DESC;
