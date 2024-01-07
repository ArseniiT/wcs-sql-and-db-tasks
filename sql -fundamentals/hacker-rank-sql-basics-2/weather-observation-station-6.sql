-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.



SELECT DISTINCT
     CITY
FROM
    STATION
WHERE
    CITY REGEXP '^[aeiouAEIOU]';
    -- Wrong Answer :
    -- SUBSTRING(CITY, 1, 1) IN ('A', 'E',' O', 'I', 'U');