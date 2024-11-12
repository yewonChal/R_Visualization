# 패키지 설치
#install.packages("hexbin")

library(hexbin)
data(NHANES)
str(NHANES)
#windows(height=7, width=6.4)
plot(BMI ~ Weight, data=NHANES, main="NHANES")
#windows(height=6.4, width=6.4)
hexbinplot(BMI ~ Weight, xlim=c(0,210), colorkey=F, data=NHANES, main="NHANES")
hexbinplot(BMI ~ Weight, xlim=c(0,210), colorkey=F, xbins=100, data=NHANES, main="NHANES")

NHANES$Race <- factor(NHANES$Race)
levels(NHANES$Race) <- c("Race 1", "Race 2")
#windows(height=5, width=10)
hexbinplot(BMI ~ Weight | Race, colorkey=F, xbins=100, xlim=c(0,210), data=NHANES, main="NHANES")
hexbinplot(BMI ~ Weight | Race, colorkey=F, xbins=50, xlim=c(0,210), style = "lattice", data=NHANES, main="NHANES")
hexbinplot(BMI ~ Weight | Race, colorkey=F, xbins=50, xlim=c(0,210), style = "nested.centroids", data=NHANES, main="NHANES")
