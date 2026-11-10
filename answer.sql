-- ==========================================
-- Week 6 Assignment: SQL Joins and Relationships
-- Student: Henry Benjamin
-- ==========================================

-- Question 1: INNER JOIN – Employees and Offices
-- Retrieves employee details and their respective office codes using INNER JOIN.
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;


-- Question 2: LEFT JOIN – Products and Product Lines
-- Retrieves product name, vendor, and product line using LEFT JOIN between products and productlines.
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;


-- Question 3: RIGHT JOIN – Customers and Orders
-- Retrieves order date, shipped date, status, and customer number for the first 10 orders using RIGHT JOIN.
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber
LIMIT 10;