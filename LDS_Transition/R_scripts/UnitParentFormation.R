parentUnitFormation <- as.character(LDSBSA.Data.Parents$Continuing[1])
parentUnitFormation <- trim(strsplit(as.character(parentUnitFormation), ","))
parentUnitFormation <-data.frame(parentUnitFormation)
names(parentUnitFormation) <-c("unit type intent")
for (i in 1:length(LDSBSA.Data.Parents$Continuing))
  {
       df <-as.character(LDSBSA.Data.Parents$Continuing[i]) 
       df <- trim(strsplit(as.character(df), ","))
       df <-data.frame(df)
       names(df) <-c("unit type intent")
       parentUnitFormation <-rbind(parentUnitFormation, df)
     }
parentUnitFormation.df <- table(parentUnitFormation$`unit type intent`)
parentUnitFormation.df<-data.frame(parentUnitFormation.df)
names(parentUnitFormation.df)<-c("Options", "Interest")
parentUnitFormation.df$Options <-as.character(parentUnitFormation.df$Options)
parentUnitFormation.df[parentUnitFormation.df$Options == "Supporting others in their efforts to keep LDS Scouting experiences available.",]$Options = "Supporting Others in Scouting"
parentUnitFormation.df[parentUnitFormation.df$Options == "or Sea Scout Ship (high adventure).",]$Options = "Sponsoring/Chartering a Sea Scout Ship."
parentUnitFormation.df[parentUnitFormation.df$Options == "Explorer Post",]$Options = "Sponsoring/Chartering an Explorer Post."
parentUnitFormation.df[parentUnitFormation.df$Options == "I will be RETIRING from Scouting when the Church ends its relationship with BSA.",]$Options = "Retiring from Scouting"
parentUnitForm.plt<-ggplot(data = parentUnitFormation.df, aes(x=Options, y=Interest))+
  geom_bar(stat = "identity", color = "blue", fill = "white")+
  coord_flip() +
  xlab("Unit Types") + ylab("parent Interest") + ggtitle("Unit Types parents are Interested in forming")+ 
  geom_text_repel(aes(label=Interest), size = 3)
print(parentUnitForm.plt)