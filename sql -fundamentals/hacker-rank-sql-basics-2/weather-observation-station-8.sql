-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
-- Your result cannot contain duplicates.

SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    UPPER(SUBSTRING(CITY, 1, 1)) IN ('A', 'E', 'I', 'O', 'U')
AND
    UPPER(SUBSTRING(CITY, LENGTH(CITY), 1)) IN ('A', 'O', 'I', 'E', 'U');