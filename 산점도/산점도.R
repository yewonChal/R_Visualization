#install.packages('ggplot2')

nba_data <- read.csv("/Users/jeon-yewon/Desktop/random_NBA_data.csv")

head(nba_data)
summary(nba_data)

ggplot(nba_data, aes(x=points, y=assists)) +
  geom_point(aes(color=age, size=salary)) +
  labs(title="Points vs Assists", x="Points", y="Assists") +
  theme_minimal()
