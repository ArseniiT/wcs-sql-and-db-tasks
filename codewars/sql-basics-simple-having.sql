-- create a function that calculates the number of weekdays (Monday through Friday) between two dates inclusively.
-- The function should be named weekdays, accept two arguments of type DATE and return an INTEGER value.

-- weekdays(DATE, DATE) INTEGER
-- The order of arguments shouldn't matter. To illustrate both of the following queries

-- SELECT weekdays('2016-01-01', '2016-01-10');
-- SELECT weekdays('2016-01-10', '2016-01-01');
-- should produce the same result

--  weekdays
-- ----------
--         6
-- (1 row)


CREATE OR REPLACE FUNCTION weekdays(date, date) RETURNS INTEGER AS $$

  SELECT
    COUNT(*)
  FROM
    generate_series($1, $2, '1 day') AS all_days
  WHERE
    EXTRACT(DOW FROM all_days) BETWEEN 1 AND 5;

$$ LANGUAGE SQL;

