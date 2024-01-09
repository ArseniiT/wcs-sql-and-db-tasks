-- create a simple SUM statement that will sum all the ages
-- NOTE2: You need to use ALIAS for creating age_sum


SELECT
    MIN(age) AS age_min,
    MAX(age) AS age_max
FROM
    people;
