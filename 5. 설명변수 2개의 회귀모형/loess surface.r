# rgl surface plot, geyser data

library(MASS)
data(geyser); attach(geyser)
x1 <- waiting[1:298]
x2 <- duration[1:298]
y <- waiting[2:299]
model <- loess(y ~ x1 + x2)

library(rgl)
open3d()
plot3d(x1, x2, y, col=topo.colors(298)[rank(y)], type="s", size=1.2, zlim=c(40,110),
     aspect=c(1,1,0.75), xlab="waiting", ylab="duration", zlab="predicted")

open3d()
plot3d(x1, x2, model$fitted, col=topo.colors(298)[rank(model$fitted)], type="s", size=1.2, zlim=c(40,110),
     aspect=c(1,1,0.75), xlab="waiting", ylab="duration", zlab="predicted")

n <- length(x1); n
summary(geyser)
x1.s <- seq(35,115,1)
x2.s <- seq(0,6,0.1)
new <- expand.grid(x1.s, x2.s); colnames(new)=c("x1","x2")
str(new)
pred.s <- matrix(predict(model, newdata=new),length(x1.s),length(x2.s))

open3d()
surface3d(x1.s, x2.s*10, pred.s, col=topo.colors(100)[cut(pred.s, 100)],
    aspect=c(1,1,0.75), xlab="waiting", ylab="duration", zlab="predicted")

open3d()
plot3d(new[,1], new[,2], pred.s, col=topo.colors(100)[cut(pred.s, 100)],
    aspect=c(1.2,1,0.75), xlab="waiting", ylab="duration", zlab="predicted")


# end