#install.packages("tabplot")
library(tabplot)
require(ggplot2)
data(diamonds)
str(diamonds)
#windows(height=6, width=7)
tableplot(diamonds, select=c(carat, cut, color, clarity, price), sortCol=price)

#windows(height=6, width=7)
tableplot(diamonds, select=c(carat, cut, color, clarity, price), sortCol=price,
     pals = list(cut = "Purples(2)", color = "Oranges(2)", clarity = "Greens"))

sum(diamonds$carat >= 1)
#windows(height=6, width=7)
tableplot(diamonds, select=c(carat, cut, color, clarity, price), sortCol=price,
     pals = list(cut = "Purples", color = "Oranges", clarity = "Greens"), 
     subset = (carat >= 1))
# savePlot("diamonds.png", type="png")

#windows(height=6, width=7)
tableplot(diamonds, select=c(carat, cut, color, clarity, price), sortCol=color,
     pals = list(cut = "Purples(2)", color = "Oranges(2)", clarity = "Greens"))
