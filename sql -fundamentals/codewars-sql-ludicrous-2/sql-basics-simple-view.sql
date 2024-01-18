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
    SUM(p.price) as total_spending
FROM
    members m,
    sales s,
    products p
WHERE
    m.id = s.member_id
AND
    s.product_id = p.id
AND
    s.department_id IN (
        SELECT
            s.department_id
        FROM
            products p, sales s
        WHERE
            s.product_id = p.id
        GROUP BY s.department_id
        HAVING SUM(p.price) > 10000
)
GROUP BY m.id
HAVING SUM(p.price) > 1000
ORDER BY m.id;
SELECT * from members_approved_for_voucher;
