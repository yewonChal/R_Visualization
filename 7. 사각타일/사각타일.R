prop <- c(47,23,18,11,1)
type <- "systematic" # type <- "random"
m <- length(prop)

# pie chart
#windows(height=5, width=4.5)
pie(prop, col=2:(m+1), main="proportions", labels=paste(LETTERS[1:m], prop))

# bar chart
#windows(height=5, width=4.5); par(oma=c(0,0,1,1))
names(prop) <- LETTERS[1:m]
barplot(prop, col=2:(m+1), ylim=c(0,50), main="proportions")

# square tiles
p.vec <- rep(1:m, prop)
if (type=="random") p.vec <- sample(p.vec)
P <- matrix(p.vec, 10, 10)
color <- 2:(m+1) 
#windows(height=5, width=4.5); par(oma=c(0,0,1,1))
image(P, col=color, axes=F, main="proportions")
abline(h=seq(-0.05,1.05,1.1/10),col="white",lwd=4)
abline(v=seq(-0.05,1.05,1.1/10),col="white",lwd=4)
# savePlot("square tiles_1.png", type="png")

# color sticksers
P <- cbind(rep(1:10,10), rep(1:10, rep(10,10)))
color <- rep(2:(m+1), prop)
if (type=="random") color <- sample(color)
#windows(height=5, width=4.5); par(oma=c(0,0,1,1))
plot(P, pch=20, xlim=c(0,11), ylim=c(0,11), col=color, axes=F, xlab="", ylab="", cex=3, main="proportions")
