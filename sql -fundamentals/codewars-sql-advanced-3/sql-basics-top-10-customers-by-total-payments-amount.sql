-- You are working for a company that wants to reward its top 10 customers with a free gift.
-- You have been asked to generate a simple report that returns the top 10 customers by total amount
-- spent ordered from highest to lowest. Total number of payments has also been requested.

-- The query should output the following columns:
--      customer_id [int4]
--      email [varchar]
--      payments_count [int]
--      total_amount [float]
--      and has the following requirements:

--      only returns the 10 top customers, ordered by total amount spent from highest to lowest

SELECT
    customer_id,
    email,
    COUNT(*) AS payments_count,
    SUM(amount) AS total_amount
FROM
    payment
GROUP BY
    customer_id, email
ORDER BY
    total_amount DESC
LIMIT
    10;

