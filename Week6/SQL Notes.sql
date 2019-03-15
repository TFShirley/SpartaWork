-- CREATE DATABASE my_db;
-- USE Northwind;

-- SELECT count(*) FROM Employees WHERE City='London';
-- SELECT FirstName, LastName FROM Employees WHERE TitleOfCourtesy='Dr.';

-- SELECT * FROM Products WHERE Discontinued=1 AND UnitsInStock!=0 ORDER BY UnitPrice DESC;
-- SELECT UnitsInStock, ProductName, UnitPrice  FROM Products WHERE UnitPrice<=30 AND UnitsInStock>0 ORDER BY UnitPrice DESC;
-- -- Distinct returns results without duplicates
-- SELECT DISTINCT City FROM Customers ORDER BY City

-- -- Wildcard Searches
-- -- _ is a blank char, % is any number of blank chars
-- -- [abc] is a range of value, [^abc] is NOT this range
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE '[ABC]%[abc]%' ORDER BY ContactName;

-- -- WHERE col_name IN ('option1', 'option2', ..) returns a value that matches any of the options
-- SELECT * FROM Customers WHERE Region IN ('AK', 'SP') ORDER BY Region;

-- -- BETWEEN selects data between a range of values
-- SELECT * FROM EmployeeTerritories WHERE TerritoryID BETWEEN 06897 AND 10038;

-- AS gives the column name an alias; mostly just for presentation.
-- col1 + col2 will concatenate the data
-- SELECT CompanyName AS "Company Name", city +','+Country AS city FROM Customers;
-- SELECT CompanyName, city FROM Customers;

-- NULLLLLLLLLLLLLLLLLLL
-- SELECT CompanyName AS "Company Name", city +','+Country AS city, Region FROM Customers WHERE Region IS NULL;

-- SELECT DISTINCT Country FROM Customers WHERE Region IS NOT NULL;

-- SELECT ProductID, ProductName FROM Products WHERE UnitPrice<5.00;
-- SELECT DISTINCT CategoryName FROM Categories WHERE CategoryName LIKE '[BS]%';
-- SELECT count(*) FROM Orders WHERE EmployeeID IN (5, 7);

-- CREATE TABLE film_table (
--     film_id INT NOT NULL IDENTITY PRIMARY KEY,
--     film_name VARCHAR(30) NOT NULL,
--     film_type VARCHAR(15),
--     release DATE,
--     director VARCHAR(25),
--     writer VARCHAR(25),
--     star VARCHAR (25),
--     film_language VARCHAR (20),
--     website VARCHAR(35),
--     summary TEXT NOT NULL DEFAULT 'Currently unavailable, sorry!'
-- );

-- get information about the table:
-- SP_HELP film_table;

-- delete the table:
-- DROP TABLE film_table;

-- ALTER TABLE film_table
-- Add a new column
-- ADD run_time INT;

-- Edit an existing column
-- ALTER COLUMN film_name VARCHAR(30) NOT NULL;

-- Alter existing column to have a default value
-- ADD CONSTRAINT summary DEFAULT 'Currently unavailable, sorry!';
-- ______________________________________________________________________________________________________________________

-- Update table data
-- UPDATE table SET attribute WHERE query
-- UPDATE film_table SET film_type='Thriller' WHERE director='Steven Spielberg'

-- Delete table data
-- DELETE FROM film_table WHERE film_id >= 6
-- ______________________________________________________________________________________________________________________

-- Seed data to a table (Add a new row)
-- INSERT INTO table_name (col1, col2, ..) VALUES (val1, val2, ..)
-- Single quotes around string values
-- Order doesn't matter as long as data is paired correctly
-- INSERT INTO film_table (film_name, film_type, director, film_language) VALUES ('Jaws', 'Horror', 'Steven Spielberg', 'English');
-- INSERT INTO film_table (film_name, film_type, film_language, director) VALUES ('Hot Fuzz', 'Comedy', 'English', 'Edgar Wright');
-- INSERT INTO film_table (film_name, film_type, film_language, director) VALUES ('Shaun of the Dead', 'Comedy', 'English', 'Edgar Wright');
-- INSERT INTO film_table (film_type, director, film_language) VALUES ('Horror', 'Ridley Scott', 'English');
-- ______________________________________________________________________________________________________________________

-- Queries
-- * = universal selector (wildcard character) - returns all columns
-- SELECT col1, col2, .. FROM table_name WHERE query ORDER BY col_name
-- SELECT * FROM film_table ORDER BY director;
-- ______________________________________________________________________________________________________________________

-- Arithmetic
--  + Addition,  - Subtraction,  + Multiply,  / Divide,  % Modulus
-- SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity*(1-Discount) AS "Net Total" FROM [Order Details] ORDER BY "Net Total" DESC;
-- ______________________________________________________________________________________________________________________

-- String functions

-- SELECT CompanyName,
-- LEFT(PostalCode, CHARINDEX(' ', PostalCode)-1) AS "Post Code Area",
-- LEN(REPLACE(CompanyName, ' ','')) AS "Without White Space",
-- CHARINDEX(' ',PostalCode) AS "Index of White Space" 
-- FROM [Customers]
-- WHERE Country='uk';

-- SELECT ProductName,
-- CHARINDEX('''', ProductName)
-- FROM Products
-- WHERE CHARINDEX('''', ProductName) > 0;

-- SELECT ORDERID,
-- YEAR(OrderDate) AS "Year of Order",
-- MONTH(OrderDate) AS "Month of Order",
-- DAY(OrderDate) AS "Day of Order"
-- FROM Orders;

-- SELECT *,
-- GETDATE() AS 'Current Date'
-- FROM Orders;

-- SELECT OrderDate, 
-- DATEADD(d, 5, OrderDate) AS "Due Date"
-- FROM Orders;
-- ______________________________________________________________________________________________________________________

-- Case Statements

-- SELECT OrderID, 
-- CASE
--     WHEN DATEDIFF(d, OrderDate, ShippedDate)<7 THEN 'On Time'
--     ELSE 'Overdue'
--     END AS "Status" FROM Orders;

-- SELECT FirstName + ' ' + LastName AS "Name",
-- DATEDIFF(yy, BirthDate, GETDATE()) AS "Age",
-- CASE
--     WHEN DATEDIFF(yyyy,BirthDate, GETDATE())>65 THEN 'Retired'
--     WHEN DATEDIFF(yyyy, BirthDate, GETDATE())>60 THEN 'Near Retirement'
--     ELSE 'Keep Working'
--     END AS 'Retired?'
-- FROM Employees ORDER BY Age DESC;
-- ______________________________________________________________________________________________________________________

-- Aggregate Functions

-- SELECT SupplierID,
-- SUM(UnitsOnOrder) AS "Total On Order",
-- AVG(UnitsOnOrder) AS "Average On Order",
-- MIN(UnitsOnOrder) AS "Minimum On Order",
-- MAX(UnitsOnOrder) AS "Maximum On Order"
-- FROM Products GROUP BY SupplierID;

-- SELECT CategoryID,
-- AVG(ReorderLevel) AS 'Average Reorder Level'
-- FROM Products GROUP BY CategoryID ORDER BY 'Average Reorder Level' DESC ;

-- SELECT SupplierID,
-- SUM(UnitsOnOrder) AS "Total On Order",
-- AVG(UnitsOnOrder) AS "Average On Order"
-- FROM Products GROUP BY SupplierID HAVING SUM(UnitsOnOrder)>50;
-- ______________________________________________________________________________________________________________________

-- Subqueries
-- (Nested queries inside SELECT statements; you can do funky stuff with this data)

-- Which customers currently have orders with us?
-- Queries for all customers with orders, then compares with the list of all customers without an order.
-- SELECT CompanyName AS "Customer"
-- FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
--                                        ^ Here's it is!

-- SELECT OrderID,
-- ProductID,
-- UnitPrice
-- Quantity,
-- Discount,
-- (SELECT MAX(UnitPrice) FROM [Order Details]) AS "Max Price"
-- ^ Here's another subquery!
-- FROM [Order Details]; 

-- UNION ALL includes duplicates, whereas UNION returns unique values.
-- SELECT EmployeeID AS "Employee/Supplier",
-- FirstName + ' ' + LastName AS "Name"
-- FROM Employees
-- UNION
-- SELECT SupplierID,
-- CompanyName
-- FROM Suppliers;

-- SELECT *
-- FROM [Order Details]
-- WHERE ProductID NOT IN 
-- (SELECT ProductID
-- FROM Products
-- WHERE Discontinued=0);
-- ______________________________________________________________________________________________________________________

-- Joins (yay)
-- INNER JOIN returns all rows where there's at least one match in BOTH tables; they overlap.
-- LEFT (OUTER) JOIN returns all rows from the left table and the matched rows from the right table, and vice versa for RIGHT JOIN
-- FULL JOIN returns all rows regardless of any matches. If a match doesn't exist, the missing side is NULL

SELECT p.SupplierID AS "Supplier ID",
    CompanyName AS "Company Name",
    AVG(UnitsOnOrder) AS "Average Units On Order"
FROM Products p
    INNER JOIN Suppliers s
    ON p.SupplierID = s.SupplierID
GROUP BY p.SupplierID, CompanyName;

-- SELECT ProductName,
-- UnitPrice,
-- CompanyName AS "Supplier",
-- CategoryName AS "Category"
-- FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- INNER JOIN Categories c ON p.CategoryID = c.CategoryID

-- SELECT CompanyName,
-- Region,
-- ProductName
-- FROM Suppliers s
-- INNER JOIN Products p ON s.SupplierID = p.SupplierID;

-- SELECT OrderID,
-- OrderDate,
-- Freight,
-- CompanyName AS "Customer",
-- FirstName +' '+ LastName AS "Employee Name"
-- FROM Orders o
-- LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
-- LEFT JOIN Employees e ON o.EmployeeID = e.EmployeeID
-- ______________________________________________________________________________________________________________________

-- Convert

-- SELECT OrderID, OrderDate FROM Orders;
-- Pre 2012
-- SELECT OrderID CONVERT(VARCHAR(100), OrderDate,121) 

-- Post 2012
-- SELECT OrderID, FORMAT(OrderDate,'dd / mm / yyyy') FROM Orders;