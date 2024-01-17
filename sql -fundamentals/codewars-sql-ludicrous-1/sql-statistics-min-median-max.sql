-- For this challenge you need to create a simple SELECT statement.
-- Your task is to calculate the MIN, MEDIAN and MAX scores of the students from the results table.

-- expected result schema
--      min
--      median
--      max

SELECT
    MIN(score) AS min,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY score) AS median,
    MAX(score) AS max
FROM result;