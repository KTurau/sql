SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  FirstName = 'Jim';


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  FirstName <> 'Jim';


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  Age > 30;


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  Age > 30 AND Gender = 'Male';


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  Age > 30 OR Gender = 'Male';


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  LastName LIKE 'S%';


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  FirstName IS NOT NULL;


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
WHERE 
  FirstName IN ('Jim', 'Michael');





