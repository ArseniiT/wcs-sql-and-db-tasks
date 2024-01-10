-- Use a select statement to list names, authors, and number of copies sold of the 5 books which were sold most.


SELECT
    name,
    author,
    copies_sold
FROM
    books
ORDER BY
    copies_sold DESC
LIMIT 5;
