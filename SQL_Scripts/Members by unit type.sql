SELECT dbo.Districts.District_Name AS District, dbo.Youth_Members_Year_End.Year_ID AS Year, dbo.Units.Unit_Type, sum(dbo.Youth_Members_Year_End.Headcount) AS Members
FROM dbo.Units JOIN dbo.Districts
ON dbo.Districts.District_ID = dbo.Units.District_ID 
JOIN dbo.Youth_Members_Year_End 
ON dbo.Youth_Members_Year_End.Unit_ID = dbo.Units.ID
GROUP BY dbo.Districts.District_Name, dbo.Youth_Members_Year_End.Year_ID, dbo.Units.Unit_Type
Order by dbo.Districts.District_Name asc