leaderUnitPreference <- as.character(LDSBSA.Data.Leaders$YouthOpportunity[1])
leaderUnitPreference <- trim(strsplit(as.character(leaderUnitPreference), ","))
leaderUnitPreference <-data.frame(leaderUnitPreference)
names(leaderUnitPreference) <-c("unit type")
for (i in 1:length(LDSBSA.Data.Leaders$YouthOpportunity))
{
	df <-as.character(LDSBSA.Data.Leaders$YouthOpportunity[i]) 
	df <- trim(strsplit(as.character(df), ","))
	df <-data.frame(df)
	names(df) <-c("unit type")
	leaderUnitPreference <-rbind(leaderUnitPreference, df)
}
leaderUnitPreference.df <- table(leaderUnitPreference$`unit type`)
leaderUnitPreference.df<-data.frame(leaderUnitPreference.df)
leaderUnitPreference.df<-leaderUnitPreference.df[-3,]
names(leaderUnitPreference.df)<-c("Options", "Interest")
leaderUnitPreference.df$Options <-as.character(leaderUnitPreference.df$Options)
leaderUnitPreference.df[leaderUnitPreference.df$Options == "Cub Scouts (age 8-10 as now exists in the Church)",]$Options = "Cub Scouts (age 8-10)"
leaderUnitPreference.df[leaderUnitPreference.df$Options == "Family Program units that allow girls in specific Cub Dens or all girl troops.",]$Options = "Family Program Units"
leaderUnitPreference.df[leaderUnitPreference.df$Options == "Lions and Tiger Cub Scout Dens that allow youth ages K-7 to participate (currently only in community units)",]$Options = "Lions and Tiger Cub Scout Dens"
LeadInterest.plt<-ggplot(data = leaderUnitPreference.df, aes(x=Options, y=Interest))+
    geom_bar(stat = "identity", color = "blue", fill = "white")+
    coord_flip() +
    xlab("Unit Types") + ylab("Leader Interest") + ggtitle("Unit Types Leaders are Interested About")+ 
	geom_text_repel(aes(label=Interest), size = 3)
print(LeadInterest.plt)	
