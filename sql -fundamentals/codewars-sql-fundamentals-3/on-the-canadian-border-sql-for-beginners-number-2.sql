-- Select names, and countries of origin of all the travelers, excluding anyone from Canada, Mexico, or The US.


SELECT
    name,
    country
FROM
    travelers
WHERE
    country NOT IN ('Canada', 'Mexico', 'USA');
