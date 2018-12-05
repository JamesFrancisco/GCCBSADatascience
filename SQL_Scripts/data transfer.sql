Select a.Unit_Type, a.Unit_Num, a.Chartering_Org, a.[2018_District], b.Old_District_ID, c.LDS_Stake_ID
From dbo.[GCC Units] a 
JOIN dbo.Old_Districts b
ON a.Old_District = b.Old_District_Name
JOIN dbo.LDS_Stakes c
ON a.LDS_Stake = c.Stake_Name
