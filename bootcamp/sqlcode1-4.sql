SELECT 
	Gender,
  Age,
	COUNT(Gender)
FROM
	[dbo].[EmployeeDemographics]
GROUP BY
	Gender,
  Age;
  
  
SELECT 
	Gender,
	Age,
	COUNT(Gender)
FROM
	[dbo].[EmployeeDemographics]
WHERE Age > 31
GROUP BY
	Gender,
	Age;
  
  
  SELECT 
	Gender,
	Age,
	COUNT(Gender) AS CountGender
FROM
	[dbo].[EmployeeDemographics]
WHERE Age > 31
GROUP BY
	Gender,
	Age
ORDER BY 
  CountGender;


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
ORDER BY 
	Age DESC;














