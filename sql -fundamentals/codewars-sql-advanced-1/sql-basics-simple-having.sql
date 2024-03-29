-- create a simple HAVING statement, you want to count how many people have the same age
-- and return the groups with 10 or more people who have that age.
-- return table schema
--      age
--      total_people


SELECT
    age,
    COUNT(id) AS total_people
FROM
    people
GROUP BY
    age
HAVING
    COUNT(id) >= 10;
