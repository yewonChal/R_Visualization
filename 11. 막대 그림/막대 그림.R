data(VADeaths)
VADeaths

#windows(height=4,width=3)
par(mfrow=c(1,2))
colnames(VADeaths) <- c("rM","rF","uM","uF")
barplot(round(VADeaths[1,]), col=2:5, border="white", ylim=c(0,25), main="VADeath (50-54)") # default
#windows(height=4,width=3)
barplot(round(VADeaths[1,]), col=c("green2","darkgreen","blue","blue4"), border="white", ylim=c(0,25), main="VADeath (50-54)") 
abline(h=1:25, col="white", lwd=2)

#windows(height=4,width=6)
barplot(round(VADeaths), beside = TRUE, col = rainbow(7)[6:2], border="white", ylim = c(0, 110))
abline(h=seq(0,110,5), col="white", lwd=2)
legend(21,110,rownames(VADeaths), text.col =rainbow(7)[6:2], pch=15, col = rainbow(7)[6:2], cex=0.8)
title(main = "Deaths per 1,000")

#windows(height=8,width=9)
colnames(VADeaths) <- c("rM","rF","uM","uF")
par(mfrow=c(1,2))
barplot(VADeaths, border ="black", col=rainbow(7)[6:2], ylim=c(0,400), fill="grey", main = "Deaths per 1,000")
legend(3, 400, rownames(VADeaths), text.col=rainbow(7)[6:2], pch=15, col=rainbow(7)[6:2], cex=0.8)
library(RColorBrewer)
barplot(VADeaths, border ="forestgreen", col=brewer.pal(6,"Greens")[6:2], ylim=c(0,400), fill="grey", main = "Deaths per 1,000")
legend(3, 400, rownames(VADeaths), text.col=brewer.pal(6,"Greens")[6:2], border="grey",  pch=15, col=brewer.pal(6,"Greens")[6:2], cex=0.8)

