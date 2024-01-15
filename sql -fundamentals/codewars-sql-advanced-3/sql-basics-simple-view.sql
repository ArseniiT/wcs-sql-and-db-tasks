-- For this challenge you need to create a VIEW. This VIEW is used by a sales store to give out vouches
-- to members who have spent over $1000 in departments that have brought in more than $10000 total
-- ordered by the members id. The VIEW must be called members_approved_for_voucher
-- then you must create a SELECT query using the view.

-- The query should output the following columns:
--      id
--      name
--      email
--      total_spending

CREATE VIEW members_approved_for_voucher AS
SELECT
    m.id,
    m.name,
    m.email,
    SUM(p.amount) AS total_spending
FROM
    members m
JOIN
    purchases p ON m.id = p.member_id
JOIN
    departments d ON p.department_id = d.id
GROUP BY
    m.id, m.name, m.email
HAVING
    SUM(p.amount) > 1000
    AND SUM(d.total_sales) > 10000;
