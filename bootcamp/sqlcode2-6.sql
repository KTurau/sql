/*
aliasing
*/


SELECT 
	FirstName AS Fname,
	FirstName + ' ' + LastName AS FullName
FROM 
	EmployeeDemographics;


SELECT 
	AVG(Age) AS AvgAge
FROM 
	EmployeeDemographics;
  
  
SELECT 
	Demo.EmployeeID,
  Sal.Salary  
FROM 
	EmployeeDemographics AS Demo
JOIN 
  EmployeeSalary AS Sal
	ON 
    Demo.EmployeeID = Sal.EmployeeID  
    
  
SELECT 
	Demo.EmployeeID,
	Demo.FirstName,
	Demo.LastName,
	Sal.JobTitle,
	Ware.Age
FROM 
	EmployeeDemographics Demo
LEFT JOIN 
	EmployeeSalary Sal
	ON 
		Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN
	WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
