
/*
partition by
*/


--partitioning
SELECT 
	FirstName,
	LastName,
	Gender,
	Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM 
	EmployeeDemographics dem
JOIN 
	EmployeeSalary sal
	ON 
		dem.EmployeeID = sal.EmployeeID
    
    
--grouping
SELECT 
	Gender,
	COUNT(Gender) 
FROM 
	EmployeeDemographics dem
JOIN 
	EmployeeSalary sal
	ON 
		dem.EmployeeID = sal.EmployeeID
GROUP BY 
	Gender









