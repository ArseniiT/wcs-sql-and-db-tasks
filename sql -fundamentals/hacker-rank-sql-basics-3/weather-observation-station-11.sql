-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    UPPER(SUBSTRING(CITY, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U')
OR
    UPPER(SUBSTRING(CITY, LENGTH(CITY), 1)) NOT IN ('A', 'O', 'I', 'E', 'U');