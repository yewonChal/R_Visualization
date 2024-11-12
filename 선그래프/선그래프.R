x <- c(1, 2, 3, 4, 5)
y1 <- c(2, 3, 5, 7, 11)
y2 <- c(1, 4, 6, 8, 10)
y3 <- c(3, 5, 7, 9, 12)

plot(x, y1, type="o", main="Example of Point Shapes", xlab="X Axis Label", ylab="Y Axis Label", xlim=c(1, 5), ylim=c(0, 12), col="blue", pch=19, lty=1)

lines(x, y2, type="o", col='red', pch=8, lty=2)
lines(x, y3, type="o", col='green', pch=15, lty=3)

legend("topleft", legend=c("Circle Points", "Star Points", "Square Points"), col=c("blue", "red", "green"), pch=c(19, 8, 15), lty=c(1, 2, 3))
