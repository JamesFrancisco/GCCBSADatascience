###############################################
##                                           ##
##             Leader Tenure                 ##
##                                           ##
##                                           ##
###############################################
PioLeaderTenure <-as.data.frame(table(PioLeaders$Tenure))
PioLeaderTenure$Freq <- as.numeric(as.character(PioLeaderTenure$Freq))
PioLeaderTenure.plt<-barplot(table(PioLeaders$Tenure), col = c("orange", "darkblue", "red", "lawngreen", "aliceblue", "black"), ylim = c(0,110), ylab = "respondents", xlab = "Pio Leader Intent", main = "Pioneer Leader Tenure", sub="Column Headings = Percent of Respondents" )
legend("topleft", lwd = 5, col = c("orange", "darkblue", "red", "lawngreen", "aliceblue", "black"), legend = c("0-No Response", "1- 0 years--New to Scouting", "2- 1-3 years", "3- 4-10 years", "4- 10-20 years", "5 - Over 20 years"))
PioLeaderTenure$Percent<-(PioLeaderTenure$Freq/length(PioLeaders$Tenure))*100.00
PioLeaderTenure$Percent<-round(PioLeaderTenure$Percent, digits = 1)
text(x = PioLeaderTenure.plt, y = PioLeaderTenure$Freq, label = PioLeaderTenure$Percent, pos = 3, cex = 0.8, col = "red")
###############################################
##                                           ##
##       Leader Retention Plans              ##
##                                           ##
##                                           ##
###############################################
Pioyy <-as.data.frame(table(PioLeaders$Plan))
Pioyy$Freq <- as.numeric(as.character(Pioyy$Freq))
Pioxx<-barplot(table(PioLeaders$Plan), col = c("orange", "darkblue", "red", "lawngreen"), ylim = c(0,150), ylab = "respondents", xlab = "Leader Intent", main = "Pioneer Leader Retention Plans", sub="Column Headings = Percent of Respondents" )
legend("topright", lwd = 5, col = c("orange", "darkblue", "red", "lawngreen"), legend = c("0-No Response","1-End Association", "2-No Decision", "3-Continue Short Term", "4-Continue Long Term"))
Pioyy$Percent<-(Pioyy$Freq/length(PioLeaders$Plan))*100.00
Pioyy$Percent<-round(Pioyy$Percent, digits = 1)
text(x = Pioxx, y = Pioyy$Freq, label = Pioyy$Percent, pos = 3, cex = 0.8, col = "red")