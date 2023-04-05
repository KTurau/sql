
/*
temp tables
*/


CREATE TABLE #temp_Employee
(
EmployeeID int,
JobTitle varchar(100),
Salary int
);


INSERT INTO #temp_Employee
(
'1001', 'HR', '45000'
);


SELECT 
	*
FROM 
	#temp_Employee;
  
  
INSERT INTO #temp_Employee
SELECT 
	*
FROM
	EmployeeSalary;
  



--a lot of times temp tables are used in stored procedures 
DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2
(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)


INSERT INTO #Temp_Employee2
SELECT 
	JobTitle,
	COUNT(JobTitle),
	AVG(Age),
	AVG(Salary)
FROM 
	EmployeeDemographics dem
JOIN 
	EmployeeSalary sal
	ON 
		dem.EmployeeID = sal.EmployeeID
GROUP BY 
	JobTitle
  
  
SELECT 
	*
FROM 
	#Temp_Employee2;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
