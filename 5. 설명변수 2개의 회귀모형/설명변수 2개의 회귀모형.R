data(cars)
str(cars)
plot(dist ~ speed, data=cars, main="cars", xlim=c(0,30), ylim=c(-10,120))
linear.reg <- lm(dist ~ speed, data=cars)
abline(linear.reg, col="red", lty="dotted")

x11()
plot(dist ~ speed, data=cars, main="cars", xlim=c(0,30), ylim=c(-10,120))
lowess.reg <- lowess(cars)
lines(lowess.reg, col="red")

y.0 <- 3*unique(lowess.reg$y)[1]-2*unique(lowess.reg$y)[2]
x.0 <- 3*unique(lowess.reg$x)[1]-3*unique(lowess.reg$x)[2]
n.1 <- length(unique(lowess.reg$x))
y.1 <- 3*unique(lowess.reg$y)[n.1]-2*unique(lowess.reg$y)[n.1-1]
x.1 <- 3*unique(lowess.reg$x)[n.1]-2*unique(lowess.reg$x)[n.1-1]
segments(x.0,y.0,unique(lowess.reg$x[1]),unique(lowess.reg$y[1]), col="red")
segments(x.1,y.1,unique(lowess.reg$x)[n.1],unique(lowess.reg$y)[n.1], col="red")
