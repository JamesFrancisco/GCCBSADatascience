unitPreference <- as.character(LDSBSA.Data.Parents$YouthOpportunity[1])
unitPreference <- trim(strsplit(as.character(unitPreference), ","))
unitPreference <-data.frame(unitPreference)
names(unitPreference) <-c("unit type")
for (i in 1:length(LDSBSA.Data.Parents$YouthOpportunity))
{
	df <-as.character(LDSBSA.Data.Parents$YouthOpportunity[i]) 
	df <- trim(strsplit(as.character(df), ","))
	df <-data.frame(df)
	names(df) <-c("unit type")
	unitPreference <-rbind(unitPreference, df)
}
unitPreference.df <- table(unitPreference$`unit type`)
unitPreference.df<-data.frame(unitPreference.df)
unitPreference.df<-unitPreference.df[-6,]
names(unitPreference.df)<-c("Options", "Interest")
unitPreference.df$Options <-as.character(unitPreference.df$Options)
unitPreference.df[unitPreference.df$Options == "Cub Scouts (age 8-10 as now exists in the Church)",]$Options = "Cub Scouts (age 8-10)"
unitPreference.df[unitPreference.df$Options == "Family Program units that allow girls in specific Cub Dens or all girl troops.",]$Options = "Family Program Units"
unitPreference.df[unitPreference.df$Options == "Lions and Tiger Cub Scout Dens that allow youth ages K-7 to participate (currently only in community units)",]$Options = "Lions and Tiger Cub Scout Dens"
parInterest.plt<-ggplot(data = unitPreference.df, aes(x=Options, y=Interest))+
    geom_bar(stat = "identity", color = "blue", fill = "white")+
    coord_flip() +
    xlab("Unit Types") + ylab("Family Interest") + ggtitle("Unit Types Parents are Interested About")+ 
	geom_text_repel(aes(label=Interest), size = 3)
print(parInterest.plt)	
