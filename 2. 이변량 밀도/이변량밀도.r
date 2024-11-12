
# MASS 패키지
library(MASS)

# geyser 데이터셋
data(geyser)

# 첫 번째 그래프: waiting vs. duration
plot(geyser$waiting, geyser$duration, 
     xlab="waiting", ylab="duration", 
     main="geyser")

# 두 번째 그래프: xlim과 ylim 설정하여 그리기
plot(geyser$waiting, geyser$duration, 
     xlim=c(30,120), ylim=c(0,6.5), 
     col="forestgreen", pch=20, 
     xlab="waiting", ylab="duration", 
     main="geyser")

# KernSmooth 패키지
library(KernSmooth)

# 2차원 밀도 추정(bkde2D) 수행
density <- bkde2D(geyser, bandwidth=c(5,0.5))

# 기존 그래프 위에 등고선(contour) 그리기
par(new=T)
contour(density$x1, density$x2, density$fhat, 
        xlim=c(30,120), ylim=c(0,6.5), 
        col=heat.colors(7)[7:1], nlevels=7, lwd=2)

# 식별(identify) 함수를 사용하여 데이터 포인트 식별
identify(geyser$waiting, geyser$duration, 
         cex=0.8, col="grey2")