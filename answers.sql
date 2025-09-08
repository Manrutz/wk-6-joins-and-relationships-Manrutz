#1
-- Select employee details and their corresponding officeCode
-- INNER JOIN only returns rows where there is a match in both tables
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;
#2
-- Select product details along with their product line
-- LEFT JOIN ensures all products are returned even if no matching productLine exists
SELECT p.productName, p.productVendor, pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;
#3
-- Select first 10 orders along with customerNumber
-- RIGHT JOIN ensures all orders are included, even if some customers are missing
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
