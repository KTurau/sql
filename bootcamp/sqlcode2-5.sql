
/*
updating/deleting data in a table
*/


SELECT 
	*
FROM 
	EmployeeDemographics


UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'


UPDATE EmployeeDemographics
SET EmployeeID = 1012, Age = 31, Gender = 'Female' 
WHERE FirstName = 'Holly' AND LastName = 'Flax'


DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005


--delete everything from the entire table and you could not get that data back 
DELETE FROM EmployeeDemographics


--deleting Tip. Select--> Delete
SELECT *
FROM EmployeeDemographics
WHERE EmployeeID = 1004
-->-->-->
DELETE
FROM EmployeeDemographics
WHERE EmployeeID = 1004

















