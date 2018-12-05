Declare @Yes nvarchar = 'Yes'
Declare @No nvarchar = 'No' 
Insert into dbo.[LeaderTraining](District_ID, Position, Trained, Trained_Count)
Select LEFT([dbo].[TrainedLeader__Staging].District, 2) as District, [dbo].[TrainedLeader__Staging].Position as Position, @Yes as Trained,
	COUNT([dbo].[TrainedLeader__Staging].Position) as Trained_Count
FROM [dbo].[TrainedLeader__Staging] where [dbo].[TrainedLeader__Staging].Trained = 'YES'
Group by District, Position
Union
Select LEFT(dbo.TrainedLeader__Staging.District, 2) as District, dbo.TrainedLeader__Staging.Position as Position, @No as Trained,
	COUNT(dbo.TrainedLeader__Staging.Position) as Trained_Count
FROM TrainedLeader__Staging where dbo.TrainedLeader__Staging.Trained = 'NO'
Group by District, Position

