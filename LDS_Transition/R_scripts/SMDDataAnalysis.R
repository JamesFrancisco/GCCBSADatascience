###############################################
##                                           ##
##             Leader Tenure                 ##
##                                           ##
##                                           ##
###############################################
SMSMLeaderTenure <-as.data.frame(table(SMLeaders$Tenure))
SMLeaderTenure$Freq <- as.numeric(as.character(SMLeaderTenure$Freq))
SMLeaderTenure.plt<-barplot(table(SMLeaders$Tenure), col = c("orange", "darkblue", "red", "lawngreen", "aliceblue"), ylim = c(0,75), ylab = "respondents", xlab = "Leader Intent", main = "South Mountain Leader Tenure", sub="Column Headings = Percent of Respondents" )
legend("topleft", lwd = 5, col = c("orange", "darkblue", "red", "lawngreen", "aliceblue"), legend = c("1- 0 years--New to Scouting", "2- 1-3 years", "3- 4-10 years", "4- 10-20 years", "5 - Over 20 years"))
SMLeaderTenure$Percent<-(SMLeaderTenure$Freq/length(SMLeaders$Tenure))*100.00
SMLeaderTenure$Percent<-round(SMLeaderTenure$Percent, digits = 1)
text(x = SMLeaderTenure.plt, y = SMLeaderTenure$Freq, label = SMLeaderTenure$Percent, pos = 3, cex = 0.8, col = "red")
###############################################
##                                           ##
##       Leader Retention Plans              ##
##                                           ##
##                                           ##
###############################################
SMyy <-as.data.frame(table(SMLeaders$Plan))
SMyy$Freq <- as.numeric(as.character(SMyy$Freq))
SMxx<-barplot(table(SMLeaders$Plan), col = c("orange", "darkblue", "red", "lawngreen"), ylim = c(0,100), ylab = "respondents", xlab = "Leader Intent", main = " Leader Retention Plans", sub="Column Headings = Percent of Respondents" )
legend("topright", lwd = 5, col = c("orange", "darkblue", "red", "lawngreen"), legend = c("1-End Association", "2-No Decision", "3-Continue Short Term", "4-Continue Long Term"))
SMyy$Percent<-(SMyy$Freq/length(SMLeaders$Plan))*100.00
SMyy$Percent<-round(SMyy$Percent, digits = 1)
text(x = SMxx, y = SMyy$Freq, label = SMyy$Percent, pos = 3, cex = 0.8, col = "red")