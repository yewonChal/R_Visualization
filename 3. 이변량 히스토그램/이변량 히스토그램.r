# bivariate (three-dim) histogram

library(lattice)
library(latticeExtra)
library(MASS)
data(geyser)
str(geyser)

#windows(height=4, width=9); par(mfrow=c(1,2))
hist(geyser$waiting, nclass=20, main="geyser", xlab="waiting", xlim=c(40,120), ylim=c(0,80))
hist(geyser$duration, nclass=16, main="geyser", xlab="duration", xlim=c(0,8), ylim=c(0,80))

x.waiting <- cut(geyser$waiting,10); levels(x.waiting) <- paste("w",1:10)
y.duration <- cut(geyser$duration,8); levels(y.duration) <- paste("d",1:8)
geyser.freq <- table(x.waiting, y.duration)

#windows(height=8, width=7.4)
cloud(geyser.freq,  panel.3d.cloud = panel.3dbars, main="geyser",
   xlab="waiting", ylab="duration", zlab="freq", 
   xbase = 1, ybase = 1, zlim = c(0, max(geyser.freq)*1.5), 
   scales = list(arrows = FALSE, just = "right"), 
   col.facet = level.colors(geyser.freq, at = do.breaks(range(geyser.freq), 24), col.regions = terrain.colors, colors = TRUE),
   screen = list(z = 30, x = -30),
   par.settings = list(axis.line = list(col = "transparent")))
#  par.box = c(col = "transparent"))  # removes 3d box lines

#windows(height=8, width=7.4)
cloud(geyser.freq,  panel.3d.cloud = panel.3dbars, main="geyser",
   xlab="waiting", ylab="duration", zlab="freq", 
   xbase = 1, ybase = 1, zlim = c(0, max(geyser.freq)*1.5), 
   scales = list(arrows = FALSE, just = "right"), 
   col.facet = level.colors(geyser.freq, at = do.breaks(range(geyser.freq), 24), col.regions = terrain.colors, colors = TRUE),
   screen = list(z = 60, x = -30),
   par.settings = list(axis.line = list(col = "transparent")))

# savePlot("geyser histogram.png", type="png")
# end
