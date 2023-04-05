/*
union, union all
*/


CREATE TABLE WareHouseEmployeeDemographics 
(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)


INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')


SELECT 
  *
FROM 
  EmployeeDemographics
FULL OUTER JOIN 
  WareHouseEmployeeDemographics
ON
  EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID


SELECT
  *
FROM 
  EmployeeDemographics
UNION
SELECT 
  *
FROM
  WareHouseEmployeeDemographics
  
  
  SELECT
  *
FROM 
  EmployeeDemographics
UNION ALL
SELECT 
  *
FROM
  WareHouseEmployeeDemographics
ORDER BY 
  EmployeeID  
  


  











