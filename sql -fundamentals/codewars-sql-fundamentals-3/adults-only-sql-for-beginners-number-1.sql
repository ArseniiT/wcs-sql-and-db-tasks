--  get a list of names and ages of users from the users table, who are 18 years old or older


SELECT
    name,
    age
FROM
    users
WHERE
    age >= 18;
