INSERT INTO dbo.[Membership Change](Unit_ID, Members_2016, Members_2017)
select * from dbo.Youth_Members_Year_End
PIVOT(
	  max (Headcount)
	  for Year_ID in ([2016],[2017])
	  )
as MaxHeadcount

delete from dbo.[Membership Change]