-- __________________________________________________
-- Exercise One
-- __________________________________________________

-- 1.1 Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.

-- SELECT CustomerID,
-- CompanyName AS 'Company Name',
-- [Address],
-- City,
-- PostalCode
-- FROM Customers
-- WHERE City='London' OR City='Paris'
-- ORDER BY City, [Company Name];


-- 1.2 List all products stored in bottles.

-- SELECT ProductName AS 'Bottled Products'
-- FROM Products
-- WHERE QuantityPerUnit LIKE '%bottle%';


-- 1.3 Repeat question above, but add in the Supplier Name and Country.

-- SELECT p.ProductName AS 'Bottled Products',
-- s.CompanyName AS 'Company Name',
-- s.Country
-- FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- WHERE QuantityPerUnit LIKE '%bottle%';


-- 1.4 Write an SQL Statement that shows how many products there are in each category. Include Category Name in result set and list the highest number first.

-- SELECT c.CategoryName,
-- SUM(p.CategoryID) AS 'Total Products in Category'
-- FROM Categories c
-- -- Must join to Products to find the total amount of products in each category
-- INNER JOIN Products p ON c.CategoryID = p.CategoryID
-- GROUP BY c.CategoryName;


-- 1.5 List all UK employees using concatenation to join their title of courtesy, first name and last name together. Also include their city of residence.

-- -- Concatenation allows for spaces to be inserted as follows
-- SELECT TitleOfCourtesy +' '+ FirstName +' '+ LastName AS 'Full Title',
-- City
-- FROM Employees WHERE Country='UK';


-- 1.6 List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000. Use rounding or FORMAT to present the numbers.

-- SELECT r.RegionDescription,
-- -- Gets the total of the sales for each region, including discount
-- FORMAT (SUM(UnitPrice * Quantity * (1-Discount)), 'C', 'en-us') AS 'Sales Totals'
-- FROM Region r
-- -- This is the path you have to take to get to Order Details from Region
-- INNER JOIN Territories t ON t.RegionID = r.RegionID
-- INNER JOIN EmployeeTerritories et ON et.TerritoryID = t.TerritoryID
-- INNER JOIN Orders o ON o.EmployeeID = et.EmployeeID
-- INNER JOIN [Order Details] od ON od.OrderID = o.OrderID
-- GROUP BY r.RegionDescription
-- -- Makes sure only regions with sales totals greater than 1,000,000 are dispalyed
-- HAVING SUM(UnitPrice * Quantity * (1-Discount))>1000000;


-- 1.7 Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.

-- -- Counts unique IDs in the parameters to prevent repetition
-- SELECT COUNT(OrderID) AS 'Large Freights'
-- FROM Orders
-- WHERE Freight>100.00 AND (ShipCountry='UK' OR ShipCountry='USA');


-- 1.8 Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.

-- TOP 1 ensures the query returns only the top answer
-- SELECT TOP 1 OrderID,
-- -- Calculates the amount of money saved on one order
-- FORMAT (SUM (UnitPrice * Quantity * Discount), 'C', 'en-us') AS 'Money saved'
-- FROM [Order Details]
-- GROUP BY OrderID
-- ORDER BY SUM(UnitPrice * Quantity * Discount) DESC;


-- __________________________________________________
-- Exercise Two
-- __________________________________________________

-- 2.2 Create an SQL file that contains all statements required to create and re-create this database. DDL only.

-- CREATE DATABASE SpartaAcademy;

-- USE SpartaAcademy;

-- DROP TABLE Rooms, Academies, CourseCatalog, Employees, CourseSchedule, CourseScheduleTrainers, CourseScheduleAttendees;

-- CREATE TABLE Rooms(
--     RoomID INT NOT NULL,
--     AcademyID INT,
--     RoomName VARCHAR (15),
--     [Description] TEXT,
--     Capacity INT
-- );

-- CREATE TABLE Academies(
--     AcademyID INT NOT NULL,
--     AcademyName VARCHAR(20)
-- );

-- CREATE TABLE CourseCatalog (
--     CourseID INT NOT NULL,
--     CourseName VARCHAR(15),
--     Duration INT
-- );

-- CREATE TABLE Employees (
--     EmployeeID INT NOT NULL,
--     FirstName VARCHAR (15),
--     LastName VARCHAR (15),
--     EmployeeType CHAR (1),
--     StartDate DATE
-- );

-- CREATE TABLE CourseSchedule (
--     CourseScheduleID,
--     AcademyID INT,
--     RoomID INT, 
--     CourseID INT,
--     StartDate DATE,
--     EndDate DATE
-- );

-- CREATE TABLE CourseScheduleTrainers (
--     CourseScheduleID INT,
--     TrainerID INT,
--     TrainerType CHAR (1)
-- );

-- CREATE TABLE CourseScheduleAttendees (
--     CourseScheduleID INT,
--     AttendeeID INT,
--     Active INT
-- );

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
--      VALUES
--            (1
--            ,'Room 1'
--            ,'Next to the new Lo; sign'
--            ,12)
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
--      VALUES
--            (1
--            ,'Room 2'
--            ,'Behind the new Sparta sign'
--            ,18)
-- ;
-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
--      VALUES
--            (1
--            ,'Room 3'
--            ,'No air-con'
--            ,18)
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
--      VALUES
--            (1
--            ,'Room 4'
--            ,'Has second door with number lock'
--            ,10)
-- ;

-- INSERT INTO [Rooms]
--            ([AcademyID]
--            ,[RoomName]
--            ,[Description]
--            ,[Capacity])
--      VALUES
--            (1
--            ,'Boardroom'
--            ,'Use as last resort'
--            ,14)
-- ;

-- INSERT INTO [Academies]
--            ([AcademyName])
--      VALUES
--            ('Richmond')
-- ;


-- INSERT INTO [Academies]
--            ([AcademyName])
--      VALUES
--            ('Birmingham')
-- ;

-- INSERT INTO [Academies]
--            ([AcademyName])
--      VALUES
--            ('Leeds')
-- ;

-- INSERT INTO [CourseCatalog]
--            ([CourseName]
--            ,[Duration])
--      VALUES
--            ('BA-Test',
--            7)
-- ;
-- INSERT INTO [CourseCatalog]
--            ([CourseName]
--            ,[Duration])
--      VALUES
--            ('Engineering',
--            12)
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
--            ,[StartDate]
--            )
--      VALUES
-- 	 		     ('Tim','Cawte','T','07/14/2017')
-- 				 ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
--            ,[StartDate]
--            )
--      VALUES
-- 	 		     ('Richard','Gurney','T','07/01/2017')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Adam','Smith','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('John','Williams','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Nick','Willis','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Jenny','Jones','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Katie','Prince','S')
-- ;
-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Peter','Brown','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Mo','Khan','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Juan','Carlos','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Jan','Miller','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Kyle','Carpenter','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Alvarao','Carlos','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Margaret','Baker','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Oti','Mwase','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Joe','Mann','S')
-- ;

-- INSERT INTO [Employees]
--            ([FirstName]
--            ,[LastName]
--            ,[EmployeeType]
           
--            )
--      VALUES
-- 	 		     ('Steve','Harris','S')
-- ;

-- INSERT INTO [dbo].[CourseSchedule]
--            ([AcademyID]
--            ,[RoomID]
--            ,[CourseID]
--            ,[StartDate]
--            ,[EndDate])
--      VALUES
--            (1
--            ,1
--            ,1
--            ,'01/15/2018'
--            ,'03/02/2018'
-- 		  )
-- ;

-- INSERT INTO [dbo].[CourseSchedule]
--            ([AcademyID]
--            ,[RoomID]
--            ,[CourseID]
--            ,[StartDate]
--            ,[EndDate])
--      VALUES
--            (1
--            ,3
--            ,2
--            ,'01/22/2018'
--            ,'03/03/2018'
-- 		  )
-- ;
-- INSERT INTO [CourseScheduleTrainers]
--            ([CourseScheduleID]
--            ,[TrainerID]
--            ,[TrainerType])
--      VALUES
--            (1
--            ,1
--            ,'T')
-- ;
-- INSERT INTO [CourseScheduleTrainers]
--            ([CourseScheduleID]
--            ,[TrainerID]
--            ,[TrainerType])
--      VALUES
--            (2
--            ,2
--            ,'T')
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (1
--            ,3
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (1
--            ,4
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (1
--            ,5
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (1
--            ,6
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (1
--            ,7
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (1
--            ,8
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,9
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,10
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,11
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,12
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,13
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,14
--            ,1)
-- ;

-- INSERT INTO [CourseScheduleAttendees]
--            ([CourseScheduleID]
--            ,[AttendeeID]
--            ,[Active])
--      VALUES
--            (2
--            ,15
--            ,1)
-- ;


-- -- 2.3 Add more sample data to include all current trainers and at least one TA (Training Assistant) and Spartans on your current course.

-- INSERT INTO Employees (
--     FirstName,
--     LastName,
--     EmployeeType
-- ) VALUES (
--   'Rob',
--   'Whitehouse',
--   'T'  
-- );

-- INSERT INTO Employees (
--     FirstName,
--     LastName,
--     EmployeeType
-- ) VALUES (
--   'Tom',
--   'Shirley',
--   'S'  
-- );

-- INSERT INTO Employees (
--     FirstName,
--     LastName,
--     EmployeeType
-- ) VALUES (
--   'Jozef',
--   'McLaughlin',
--   'S'  
-- );

-- INSERT INTO Employees (
--     FirstName,
--     LastName,
--     EmployeeType
-- ) VALUES (
--   'Zac',
--   'Harrison',
--   'S'  
-- );

-- INSERT INTO Employees (
--     FirstName,
--     LastName,
--     EmployeeType
-- ) VALUES (
--   'Ashley',
--   'Whitehouse',
--   'S'  
-- );

-- INSERT INTO Employees (
--     FirstName,
--     LastName,
--     EmployeeType
-- ) VALUES (
--   'Bob',
--   'Bluehouse',
--   'A'  
-- );

-- __________________________________________________
-- Exercise Three
-- __________________________________________________

-- 3.1 Produce a report similar to the above table (see 2.1) from all 7 tables using one SQL statement (use FORMAT for the dates).

-- SELECT cc.CourseName AS 'Course Name',
-- cs.StartDate AS 'Start Date',
-- cs.EndDate AS 'End Date',
-- a.AcademyName AS 'Academy',
-- r.RoomName AS 'Room Name',
-- -- Formatted names to look like names
-- e1.FirstName+' '+e1.LastName AS 'Trainer',
-- e2.FirstName+' '+e2.LastName AS 'Spartans'
-- -- From CourseSchedule, I can directly join to every necessary table other than Course Schedule Trainers & Attendees
-- FROM CourseSchedule cs
-- INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- -- I can get the trainer names by joining to Employees through the Course Schedule Trainers table
-- INNER JOIN CourseScheduleTrainers cst ON cs.CourseID = cst.CourseScheduleID
-- INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- -- To get the attendees from the employee table, I had to refer to it with a different alias
-- INNER JOIN CourseScheduleAttendees csa ON cs.CourseID = csa.CourseScheduleID
-- INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;


-- 3.2 Repeat 3.1 above but replace the Spartan Name column with Spartan Initials.

-- SELECT cc.CourseName AS 'Course Name',
-- cs.StartDate AS 'Start Date',
-- cs.EndDate AS 'End Date',
-- a.AcademyName AS 'Academy',
-- r.RoomName AS 'Room Name',
-- e1.FirstName+' '+e1.LastName AS 'Trainer',
-- -- LEFT allows me to cut off the string after a predefined amount of characters. To get the initials, simply cut it off after the first character.
-- LEFT(e2.FirstName,1)+'.'+LEFT(e2.LastName,1) AS 'Spartans (Initials)'
-- FROM CourseSchedule cs
-- INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseScheduleTrainers cst ON cs.CourseID = cst.CourseScheduleID
-- INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- INNER JOIN CourseScheduleAttendees csa ON cs.CourseID = csa.CourseScheduleID
-- INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;


-- 3.3 Add a new column after End Date headed “Check Date” which uses the DATEADD function
-- to add 8 weeks to the Start Date column for BA Test courses and 12 weeks for any others.

-- SELECT cc.CourseName AS 'Course Name',
-- cs.StartDate AS 'Start Date',
-- cs.EndDate AS 'End Date',
-- -- Case Statement used to separately increment each course's Check Date by the specified amount
-- CASE
--     -- DATEADD allows us to specify the unit and amount of time added to any given date.
--     WHEN cc.CourseName='BA-Test' THEN DATEADD(day,8,cs.StartDate)
--     WHEN cc.CourseName='Engineering' THEN DATEADD(day,12,cs.StartDate)
--     -- Each outputs to a single column "Check Date"
--     END AS 'Check Date',
-- a.AcademyName AS 'Academy',
-- r.RoomName AS 'Room Name',
-- e1.FirstName+' '+e1.LastName AS 'Trainer',
-- e2.FirstName+' '+e2.LastName AS 'Spartans'
-- FROM CourseSchedule cs
-- INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseScheduleTrainers cst ON cs.CourseID = cst.CourseScheduleID
-- INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- INNER JOIN CourseScheduleAttendees csa ON cs.CourseID = csa.CourseScheduleID
-- INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;

-- __________________________________________________
-- Exercise Four
-- __________________________________________________

-- 4.1 Add Primary Keys and Foreign Keys to the Sparta Academy database, where needed. (If not already included).

-- CREATE TABLE Academies(
--     AcademyID INT NOT NULL PRIMARY KEY,
--     AcademyName VARCHAR(20)
-- );

-- CREATE TABLE Rooms(
--     RoomID INT NOT NULL PRIMARY KEY,
--     AcademyID INT FOREIGN KEY REFERENCES Academies(AcademyID),
--     RoomName VARCHAR (15),
--     [Description] TEXT,
--     Capacity INT
-- );

-- CREATE TABLE CourseCatalog (
--     CourseID INT NOT NULL PRIMARY KEY,
--     CourseName VARCHAR(15),
--     Duration INT
-- );

-- CREATE TABLE Employees (
--     EmployeeID INT NOT NULL PRIMARY KEY,
--     FirstName VARCHAR (15),
--     LastName VARCHAR (15),
--     EmployeeType CHAR (1),
--     StartDate DATE
-- );

-- CREATE TABLE CourseSchedule (
--     CourseScheduleID INT PRIMARY KEY,
--     AcademyID INT FOREIGN KEY REFERENCES Academies(AcademyID),
--     RoomID INT FOREIGN KEY REFERENCES Rooms(RoomID), 
--     CourseID INT FOREIGN KEY REFERENCES CourseCatalog(CourseID),
--     StartDate DATE,
--     EndDate DATE
-- );

-- CREATE TABLE CourseScheduleTrainers (
--     CourseScheduleID INT FOREIGN KEY REFERENCES CourseSchedule(CourseScheduleID),
--     TrainerID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
--     TrainerType CHAR (1)
-- );

-- CREATE TABLE CourseScheduleAttendees (
--     CourseScheduleID INT FOREIGN KEY REFERENCES CourseSchedule(CourseScheduleID),
--     AttendeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
--     Active INT
-- );


-- 4.2 Add constraints for other tables including Trainer Type ('T' Trainer or 'A' Training Assistant)
-- and Employee Type ('T' Trainer, 'S' Spartan) and set a maximum capacity for Rooms to 25.

CREATE TABLE Academies(
    AcademyID INT NOT NULL PRIMARY KEY,
    AcademyName VARCHAR(20)
);

CREATE TABLE Rooms(
    RoomID INT NOT NULL PRIMARY KEY,
    AcademyID INT FOREIGN KEY REFERENCES Academies(AcademyID),
    RoomName VARCHAR (15),
    [Description] TEXT,
    -- This CHECK statement only allows a capacity less than or equal to 25 to be entered.
    Capacity INT CHECK (Capacity<=25)
);

CREATE TABLE CourseCatalog (
    CourseID INT NOT NULL PRIMARY KEY,
    CourseName VARCHAR(15),
    Duration INT
);

CREATE TABLE Employees (
    EmployeeID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR (15),
    LastName VARCHAR (15),
    -- This CHECK statement only allows the characters T or S to be entered.
    EmployeeType CHAR (1) CHECK (EmployeeType='T' OR EmployeeType='S'),
    StartDate DATE
);

CREATE TABLE CourseSchedule (
    CourseScheduleID INT PRIMARY KEY,
    AcademyID INT FOREIGN KEY REFERENCES Academies(AcademyID),
    RoomID INT FOREIGN KEY REFERENCES Rooms(RoomID), 
    CourseID INT FOREIGN KEY REFERENCES CourseCatalog(CourseID),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE CourseScheduleTrainers (
    CourseScheduleID INT FOREIGN KEY REFERENCES CourseSchedule(CourseScheduleID),
    TrainerID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    -- This CHECK statement only allows the characters T or A to be entered.
    TrainerType CHAR (1) CHECK (TrainerType='T' OR TrainerType='A')
);

CREATE TABLE CourseScheduleAttendees (
    CourseScheduleID INT FOREIGN KEY REFERENCES CourseSchedule(CourseScheduleID),
    AttendeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    Active INT
);