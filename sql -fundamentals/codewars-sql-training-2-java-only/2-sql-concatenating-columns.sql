-- use a select statement to return a single column table containing the full title of the person
-- concatenate all columns together except id, as follows:
-- output table schema:
--      title
-- don't forget to add spaces.

SELECT
    CONCAT_WS(
        ' ',
        prefix,
        first,
        last,
        suffix
    ) AS title
FROM
    names;
