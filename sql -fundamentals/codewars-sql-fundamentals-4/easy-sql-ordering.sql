-- Your task is to sort the information in the provided table 'companies' by number of employees (high to low).
-- Returned table should be in the same format as provided

SELECT
    id,
    ceo,
    motto,
    employees
FROM
    companies
ORDER BY
    employees DESC;
