install.packages("ggplot2")
library(ggplot2)

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

#Stalkholder wants you to target people who booked early
#You have a hypothesis that people with children have to book in advance

ggplot(data=hotel_bookings)+
  geom_point(mapping = aes(x= lead_time, y = children))

#The plot should show that your hypothesis is wrong

#Stakeholder says that she wants to increase weekend bookings and wants to know
#what group of guests book the most weekend nights to target that group in a new marketing campaign
#She suggests guests without children book the most weekend nights

ggplot(data=hotel_bookings)+
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))

#Based on the plot created, it seems to be mostly guests with no children books the most
#weekend nights
