
/*
select statement 
*, top, distinct, count, as, max, min, avg
*/


SELECT
	*
FROM
	[dbo].[EmployeeDemographics];
  
 
SELECT 
	TOP 5 *
FROM
	[dbo].[EmployeeDemographics];
  
  
SELECT 
	DISTINCT(Gender)
FROM
	[dbo].[EmployeeDemographics];  
  
  
SELECT 
	COUNT(LastName) AS LastNameCount
FROM
	[dbo].[EmployeeDemographics];
  
  
SELECT 
	MAX(Salary) AS MaxSalary
FROM
	[dbo].[EmployeeSalary];  
    
  
SELECT 
	MIN(Salary) AS MinSalary
FROM
	[dbo].[EmployeeSalary]; 
      
  
SELECT 
	AVG(Salary) AS AvgSalary
FROM
	[dbo].[EmployeeSalary]; 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
