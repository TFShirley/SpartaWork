-- Drop statement allows us to refresh the page by recreating it.
DROP TABLE CourseScheduleAttendees, CourseScheduleTrainers, CourseSchedule, Employees, CourseCatalog, Rooms, Academies;

CREATE TABLE Academies(
    AcademyID INT NOT NULL IDENTITY PRIMARY KEY,
    AcademyName VARCHAR(20)
);

CREATE TABLE Rooms(
    RoomID INT NOT NULL IDENTITY PRIMARY KEY,
    AcademyID INT FOREIGN KEY REFERENCES Academies(AcademyID),
    RoomName VARCHAR (15),
    [Description] TEXT,
    -- This CHECK statement only allows a capacity less than or equal to 25 to be entered.
    Capacity INT CHECK (Capacity<=25)
);

CREATE TABLE CourseCatalog (
    CourseID INT NOT NULL IDENTITY PRIMARY KEY,
    CourseName VARCHAR(15),
    Duration INT
);

CREATE TABLE Employees (
    EmployeeID INT NOT NULL IDENTITY PRIMARY KEY,
    FirstName VARCHAR (15),
    LastName VARCHAR (15),
    -- This CHECK statement only allows the characters T or S to be entered.
    EmployeeType CHAR (1) CHECK (EmployeeType='T' OR EmployeeType='S'),
    StartDate DATE
);

CREATE TABLE CourseSchedule (
    CourseScheduleID INT NOT NULL IDENTITY PRIMARY KEY,
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

-- Insert statements below

INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Richmond')
;
INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Birmingham')
;
INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Leeds')
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 1'
           ,'Next to the new Lo; sign'
           ,12)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 2'
           ,'Behind the new Sparta sign'
           ,18)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 3'
           ,'No air-con'
           ,18)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 4'
           ,'Has second door with number lock'
           ,10)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Boardroom'
           ,'Use as last resort'
           ,14)
;
INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('BA-Test',
           7)
;
INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('Engineering',
           12)
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Tim','Cawte','T','07/14/2017')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Richard','Gurney','T','07/01/2017')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Adam','Smith','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('John','Williams','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Nick','Willis','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jenny','Jones','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Katie','Prince','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Peter','Brown','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Mo','Khan','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Juan','Carlos','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jan','Miller','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Kyle','Carpenter','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Alvarao','Carlos','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Margaret','Baker','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Oti','Mwase','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Joe','Mann','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Steve','Harris','S')
;
INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,1
           ,1
           ,'01/15/2018'
           ,'03/02/2018'
		  )
;
INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,3
           ,2
           ,'01/22/2018'
           ,'03/03/2018'
		  )
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (1
           ,1
           ,'T')
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (2
           ,2
           ,'T')
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,3
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,4
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,5
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,6
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,7
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,8
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,9
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,10
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,11
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,12
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,13
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,14
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,15
           ,1)
;
-- Dummy Values below

INSERT INTO Employees
        (FirstName,
        LastName,
        EmployeeType)
    VALUES
        ('Rob',
        'Whitehouse',
        'T')
;
INSERT INTO Employees 
        (FirstName,
        LastName,
        EmployeeType)
    VALUES
        ('Tom',
        'Shirley',
        'S')
;
INSERT INTO Employees
        (FirstName,
        LastName,
        EmployeeType)
    VALUES
        ('Jozef',
        'McLaughlin',
        'S')
;
INSERT INTO Employees
        (FirstName,
        LastName,
        EmployeeType)
    VALUES 
        ('Zac',
        'Harrison',
        'S')
;
INSERT INTO Employees
        (FirstName,
        LastName,
        EmployeeType)
    VALUES
        ('Ashley',
        'Whitehouse',
        'S')
;
INSERT INTO Employees
        (FirstName,
        LastName,
        EmployeeType)
    VALUES 
        ('Bob',
        'Bluehouse',
        'A')
;

-- Beginning of query
SELECT cc.CourseName AS 'Course Name',
cs.StartDate AS 'Start Date',
cs.EndDate AS 'End Date',
-- Case Statement used to separately increment each course's Check Date by the specified amount
CASE
    -- DATEADD allows us to specify the unit and amount of time added to any given date.
    WHEN cc.CourseName='BA-Test' THEN DATEADD(day,8,cs.StartDate)
    WHEN cc.CourseName='Engineering' THEN DATEADD(day,12,cs.StartDate)
    -- Each outputs to a single column "Check Date"
    END AS 'Check Date',
a.AcademyName AS 'Academy',
r.RoomName AS 'Room Name',
-- Formatted names to concatenate nicely
e1.FirstName+' '+e1.LastName AS 'Trainer',
e2.FirstName+' '+e2.LastName AS 'Spartans',
-- LEFT cuts off the string after a predefined amount of characters. To get the initials, cut off after the first character.
LEFT(e2.FirstName,1)+'.'+LEFT(e2.LastName,1) AS 'Spartans (Initials)'
-- From CourseSchedule, I can directly join to every necessary table other than Course Schedule Trainers & Attendees
FROM CourseSchedule cs
INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID
INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- I can get the trainer names by joining to Employees through the Course Schedule Trainers table
INNER JOIN CourseScheduleTrainers cst ON cs.CourseID = cst.CourseScheduleID
INNER JOIN Employees e1 ON cst.TrainerID = e1.EmployeeID
-- To get the attendees from the employee table, I had to refer to it with a different alias
INNER JOIN CourseScheduleAttendees csa ON cs.CourseID = csa.CourseScheduleID
INNER JOIN Employees e2 ON csa.AttendeeID = e2.EmployeeID;