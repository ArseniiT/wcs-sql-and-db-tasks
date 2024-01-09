-- create a simple SUM statement that will sum all the ages.
-- NOTE2: You need to use ALIAS for creating age_sum


SELECT
    SUM(age) AS age_sum
FROM
    people;
