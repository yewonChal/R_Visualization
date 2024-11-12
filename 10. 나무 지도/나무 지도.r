#install.packages('treemap')
library(treemap)
data(GNI2010)
str(GNI2010)
#windows(height=7, width=5.8)
treemap(GNI2010,index=c("continent", "iso3"),vSize="population",vColor="GNI",type="value",bg.labels="yellow")
# savePlot("treemap_1.png", type="png")

GNI2010$GNI.total <- GNI2010$population*GNI2010$GNI
GNI2010.a <- aggregate(GNI2010[,4:6],by=list(GNI2010$continent),sum)
GNI2010.a$GNI.percapita <- GNI2010.a$GNI.total/GNI2010.a$population
#windows(height=7, width=5.8)
treemap(GNI2010.a,index=c("Group.1"),vSize="population",vColor="GNI.percapita",type="value",bg.labels="yellow")
