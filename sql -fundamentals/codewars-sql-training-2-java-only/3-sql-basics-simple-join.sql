-- create a simple SELECT statement that will return all columns from the products table,
-- and join to the companies table so that you can return the company name.
-- return all product fields as well as the company name as "company_name".


SELECT
    products.id,
    products.name,
    products.isbn,
    products.company_id,
    products.price,
    companies.name AS company_name
FROM
    products
JOIN companies ON products.company_id = companies.id;
