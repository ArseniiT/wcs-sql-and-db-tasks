-- Your task is to turn the numeric columns (arms, legs) into equivalent hexadecimal values.
-- NOTE: for PostgreSQL


SELECT
    TO_HEX(legs) AS legs,
    TO_HEX(arms) AS arms
FROM
    monsters;
