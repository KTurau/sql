
/*
string functions - TRIM, LTRIM, RTRIM, Replace, Upper, Lower, Substring
*/


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)


INSERT INTO EmployeeErrors VALUES 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')


SELECT *
FROM EmployeeErrors


-- Using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

SELECT EmployeeID, RTRIM(employeeID) AS IDRTRIM
FROM EmployeeErrors 

SELECT EmployeeID, LTRIM(employeeID) AS IDLTRIM
FROM EmployeeErrors 


-- Using Replace
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors


-- Using UPPER and lower
SELECT firstname, LOWER(firstname)
FROM EmployeeErrors

SELECT Firstname, UPPER(FirstName)
FROM EmployeeErrors

