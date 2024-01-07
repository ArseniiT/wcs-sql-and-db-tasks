-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT
    CITY
FROM
    STATION
WHERE
    UPPER(SUBSTRING(CITY, LENGTH(CITY), 1)) IN ('A', 'E', 'I', 'O', 'U');