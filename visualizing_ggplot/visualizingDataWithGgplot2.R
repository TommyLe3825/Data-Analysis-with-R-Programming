install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)

#Suppose you want to plot the relationship between body mass and flipper length
#in the three penguin species, you can choose a specific geom

#scatterplot of points can help display the relationship between two variables
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#Gotta try the nycflights13 package
install.packages("nycflights13")
library(nycflights13)

data(flights)
head(flights)

ggplot(data = flights, mapping = aes(x = dep_time, y = arr_time)) +  geom_point()
#The plot is expected as the eariler flights departs, the eariler it arrives
#We also need to factor in flight duration though