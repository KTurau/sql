/*
inner joins, full/left/right outer joins
*/


INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, 'Male'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')


INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)


SELECT
  *
FROM
  EmployeeDemographics
INNER JOIN 
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  
  
SELECT
  *
FROM
  EmployeeDemographics
FULL OUTER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID  
  
  
SELECT
  *
FROM
  EmployeeDemographics
LEFT OUTER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID  
 
 
SELECT
  *
FROM
  EmployeeDemographics
RIGHT OUTER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
  
  
SELECT
  EmployeeDemographics.EmployeeID,
  FirstName,
  LastName,
  JobTitle,
  Salary
FROM
  EmployeeDemographics
INNER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
  
  
  
SELECT
  EmployeeDemographics.EmployeeID,
  FirstName,
  LastName,
  JobTitle,
  Salary
FROM
  EmployeeDemographics
LEFT OUTER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID  
  
   
SELECT
  EmployeeDemographics.EmployeeID,
  FirstName,
  LastName,
  JobTitle,
  Salary
FROM
  EmployeeDemographics
INNER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
WHERE 
  FirstName <> 'Michael'
ORDER BY 
  Salary DESC;
 
     
SELECT
  JobTitle,
  AVG(Salary)
FROM
  EmployeeDemographics
INNER JOIN
  EmployeeSalary
ON 
  EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
WHERE
  JobTitle = 'Salesman'
GROUP BY JobTitle  
  
  
  
  
  
  
  
