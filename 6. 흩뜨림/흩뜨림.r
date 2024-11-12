data(quakes)
str(quakes)
#windows(height=5, width=9)
par(mfrow=c(1,2))
plot(depth ~ mag, data=quakes, col=rainbow(1000)[rank(mag)], main="quakes")
mag.1 <- quakes$mag+runif(1000,-0.05,0.05)
plot(depth ~ mag.1, data=quakes, col=rainbow(1000)[rank(mag)], main="quakes")

#windows(height=5, width=9)
par(mfrow=c(1,2))
plot(lat ~ long, data=quakes, col=heat.colors(1000)[rank(-depth)], main="quakes: depth")
plot(lat ~ long, data=quakes, col=heat.colors(1000)[rank(-mag)], main="quakes: magnitude")

# jittering on the stripchart

data(OrchardSprays)
str(OrchardSprays)
table(OrchardSprays$treatment)
#windows(height=5, width=9)
par(mfrow=c(1,2))
boxplot(decrease ~ treatment, main = "OrchardSprays", data=OrchardSprays, col=rainbow(8))
boxplot(log(decrease) ~ treatment, main = "OrchardSprays", data=OrchardSprays, col=rainbow(8))
 
#windows(height=5, width=9)
par(mfrow=c(1,2))
stripchart(decrease ~ treatment, main = "OrchardSprays", method="overplot", pch=20, col=rainbow(8), vertical = TRUE, log = "y", data = OrchardSprays)
stripchart(decrease ~ treatment, main = "OrchardSprays", method="jitter", pch=20, col=rainbow(8), vertical = TRUE, log = "y", data = OrchardSprays)

library(beeswarm)
#windows(height=5, width=9)
par(mfrow=c(1,2))
beeswarm(decrease ~ treatment, data = OrchardSprays, main = "OrchardSprays", log = TRUE, pch = 16, col = rainbow(8), method="swarm")
beeswarm(decrease ~ treatment, data = OrchardSprays, main = "OrchardSprays", log = TRUE, pch = 16, col = rainbow(8), method="square")

# artistic brushing
n <- 100
distributions <- list(grp.1 = runif(n, -1.2, 0), grp.2 = runif(1.5*n,-0.8,0.8), grp.3 = runif(n, 0, 1.2))
#windows(height=7, width=5)
beeswarm(distributions, pch=20, col = 2:4, main="simulated three groups", ylim=c(-1,1))
# savePlot("simulated brushing_1.png", type="png")

n <- 800
distributions <- list(grp.1 = runif(n, -1.2, 0), grp.2 = runif(1.5*n,-0.8,0.8), grp.3 = runif(n, 0, 1.2))
#windows(height=7, width=5)
beeswarm(distributions, pch=20, col = 2:4, main="simulated three groups", ylim=c(-1,1))

