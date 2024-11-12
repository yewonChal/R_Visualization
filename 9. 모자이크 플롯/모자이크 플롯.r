# mosaic plot of Berkeley Admissions data
data(UCBAdmissions)
str(UCBAdmissions)
addmargins(apply(UCBAdmissions, c(2,1), sum))

addmargins(t(UCBAdmissions[,,1]))
addmargins(t(UCBAdmissions[,,2]))
addmargins(t(UCBAdmissions[,,3]))
addmargins(t(UCBAdmissions[,,4]))
addmargins(t(UCBAdmissions[,,5]))
addmargins(t(UCBAdmissions[,,6]))

require(graphics)
#windows(height=5, width=4.6)
mosaicplot(apply(UCBAdmissions, c(2,1), sum), color=c("red","grey"), main = "UC Berkeley Admissions")
# savePlot("berkeley_1.png", type="png")

#windows(height=5, width=7)
mosaicplot(~Dept+Gender+Admit, data=UCBAdmissions, color=c("red","grey"), dir=c("v","v","h"), off=1, main = "UC Berkeley Admissions")
