
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


-- Using Substring
SELECT Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	AND Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)


-- Using UPPER and lower
SELECT firstname, LOWER(firstname)
FROM EmployeeErrors

SELECT Firstname, UPPER(FirstName)
FROM EmployeeErrors

