###############################################
##                                           ##
##             Leader Tenure                 ##
##                                           ##
##                                           ##
###############################################
MogLeaderTenure <-as.data.frame(table(MogLeaders$Tenure))
MogLeaderTenure$Freq <- as.numeric(as.character(MogLeaderTenure$Freq))
MogLeaderTenure.plt<-barplot(table(MogLeaders$Tenure), col = c("orange", "darkblue", "red", "lawngreen", "aliceblue"), ylim = c(0,60), ylab = "respondents", xlab = "Mog Leader Intent", main = "Mogollon Leader Tenure", sub="Column Headings = Percent of Respondents" )
legend("topleft", lwd = 5, col = c("orange", "darkblue", "red", "lawngreen", "aliceblue"), legend = c("1- 0 years--New to Scouting", "2- 1-3 years", "3- 4-10 years", "4- 10-20 years", "5 - Over 20 years"))
MogLeaderTenure$Percent<-(MogLeaderTenure$Freq/length(MogLeaders$Tenure))*100.00
MogLeaderTenure$Percent<-round(MogLeaderTenure$Percent, digits = 1)
text(x = MogLeaderTenure.plt, y = MogLeaderTenure$Freq, label = MogLeaderTenure$Percent, pos = 3, cex = 0.8, col = "red")
###############################################
##                                           ##
##       Leader Retention Plans              ##
##                                           ##
##                                           ##
###############################################
Mogyy <-as.data.frame(table(MogLeaders$Plan))
Mogyy$Freq <- as.numeric(as.character(Mogyy$Freq))
Mogxx<-barplot(table(MogLeaders$Plan), col = c("orange", "darkblue", "red", "lawngreen"), ylim = c(0,60), ylab = "respondents", xlab = "Leader Intent", main = "Mogollon Leader Retention Plans", sub="Column Headings = Percent of Respondents" )
legend("topright", lwd = 5, col = c("orange", "darkblue", "red", "lawngreen"), legend = c("1-End Association", "2-No Decision", "3-Continue Short Term", "4-Continue Long Term"))
Mogyy$Percent<-(Mogyy$Freq/length(MogLeaders$Plan))*100.00
Mogyy$Percent<-round(Mogyy$Percent, digits = 1)
text(x = Mogxx, y = Mogyy$Freq, label = Mogyy$Percent, pos = 3, cex = 0.8, col = "red")