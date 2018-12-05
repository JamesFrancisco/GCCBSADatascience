insert into dbo.LDS_Transition_Pool(First_Name, Last_Name, Position, Program, BSA_ID, Email, Zip_Code, LDS_Stake, District)
SELECT dbo.TrainedLeader_GCC.First_Name, TrainedLeader_GCC.Last_Name, TrainedLeader_GCC.Position, SUBSTRING(TrainedLeader_GCC.Program, 4,15) as Program, TrainedLeader_GCC.MemberID, TrainedLeader_GCC.Email, TrainedLeader_GCC.Zip_Code, TrainedLeader_GCC.Sub_District, TrainedLeader_GCC.District
From TrainedLeader_GCC
WHERE TrainedLeader_GCC.Program LIKE '%LDS%' AND TrainedLeader_GCC.Trained = 'YES' AND TrainedLeader_GCC.Position <> 'Unit Scouter Reserve'

