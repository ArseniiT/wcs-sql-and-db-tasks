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


CREATE OR REPLACE FUNCTION weekdays(date1 DATE, date2 DATE) RETURNS INTEGER AS $$
DECLARE
  start_date DATE;
  end_date DATE;
BEGIN
  IF date1 > date2 THEN
    start_date := date2;
    end_date := date1;
  ELSE
    start_date := date1;
    end_date := date2;
  END IF;

  RETURN (
    SELECT
      COUNT(*)
    FROM
      generate_series(start_date, end_date, '1 day') AS all_days
    WHERE
      EXTRACT(DOW FROM all_days) BETWEEN 1 AND 5
  );
END;
$$ LANGUAGE plpgsql;
