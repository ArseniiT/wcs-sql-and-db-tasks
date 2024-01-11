-- create a UNION statement, there are two tables ussales and eusales the parent company tracks each sale
-- at its respective location in each table, you must all filter the sale price so it only returns rows
-- with a sale greater than 50.00. You have been tasked with combining that data for future analysis.
-- Order by location (US before EU), then by id.

-- return table schema
--      location (EU for eusales and US for ussales)
--      id
--      name
--      price (greater than 50.00)
--      card_name
--      card_number
--      transaction_date


SELECT
    *
FROM
    (
        SELECT
            'US' AS location,
            *
        FROM
            ussales

        UNION ALL

        SELECT
            'EU' AS location,
            *
        FROM
            eusales
    ) AS us_eu_sales
WHERE
    price > 58;


-- BEST SOLUTION

-- SELECT 'US' as location, *
--   FROM ussales
--   WHERE price > 50
-- UNION ALL
-- SELECT 'EU' as location, *
--   FROM eusales
--   WHERE price > 50
