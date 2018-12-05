leaderUnitFormation <- as.character(LDSBSA.Data.Leaders$Continuing[1])
leaderUnitFormation <- trim(strsplit(as.character(leaderUnitFormation), ","))
leaderUnitFormation <-data.frame(leaderUnitFormation)
names(leaderUnitFormation) <-c("unit type intent")
for (i in 1:length(LDSBSA.Data.Leaders$Continuing))
  {
       df <-as.character(LDSBSA.Data.Leaders$Continuing[i]) 
       df <- trim(strsplit(as.character(df), ","))
       df <-data.frame(df)
       names(df) <-c("unit type intent")
       leaderUnitFormation <-rbind(leaderUnitFormation, df)
     }
leaderUnitFormation.df <- table(leaderUnitFormation$`unit type intent`)
leaderUnitFormation.df<-data.frame(leaderUnitFormation.df)
names(leaderUnitFormation.df)<-c("Options", "Interest")
leaderUnitFormation.df$Options <-as.character(leaderUnitFormation.df$Options)
leaderUnitFormation.df[leaderUnitFormation.df$Options == "Supporting others in their efforts to keep LDS Scouting experiences available.",]$Options = "Supporting Others in Scouting"
leaderUnitFormation.df[leaderUnitFormation.df$Options == "or Sea Scout Ship (high adventure).",]$Options = "Sponsoring/Chartering a Sea Scout Ship."
leaderUnitFormation.df[leaderUnitFormation.df$Options == "Explorer Post",]$Options = "Sponsoring/Chartering an Explorer Post."
leaderUnitFormation.df[leaderUnitFormation.df$Options == "I will be RETIRING from Scouting when the Church ends its relationship with BSA.",]$Options = "Retiring from Scouting"
leaderUnitForm.plt<-ggplot(data = leaderUnitFormation.df, aes(x=Options, y=Interest))+
  geom_bar(stat = "identity", color = "blue", fill = "white")+
  coord_flip() +
  xlab("Unit Types") + ylab("Leader Interest") + ggtitle("Unit Types Leaders are Interested in forming")+ 
  geom_text_repel(aes(label=Interest), size = 3)
print(leaderUnitForm.plt)	