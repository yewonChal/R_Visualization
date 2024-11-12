#install.packages("latticeExtra")
library(latticeExtra)

stock_data <- read.csv("/Users/jeon-yewon/Desktop/학습/R/R 시각화/1. 채색달력/kospi.csv")

str(stock.data)
#windows(height=7, width=14)
calendarHeat(dates=stock.data$time, values=stock.data$kospi, color="g2r", varname="KOSPI Index")

#windows(height=7, width=14)
calendarHeat(dates=stock.data$time, values=log(stock.data$volume,10), color="g2r", varname="KOSPI Volume")

