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
	COUNT(Gender)
FROM
	[dbo].[EmployeeDemographics]
WHERE Age > 31
GROUP BY
	Gender;
  
  
  SELECT 
	Gender,
	COUNT(Gender) AS CountGender
FROM
	[dbo].[EmployeeDemographics]
WHERE 
	Age > 31
GROUP BY
	Gender
ORDER BY 
  CountGender DESC;


SELECT 
	*
FROM
	[dbo].[EmployeeDemographics]
ORDER BY 
	Age DESC,
	Gender DESC;














