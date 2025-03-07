#Installation
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

#Libraries
library(tidyverse)
library(skimr)
library(janitor)

#Importing
hotel_bookings <- read_csv("hotel_bookings.csv")

#Knowing the data
head(hotel_bookings) #First 6
str(hotel_bookings) #Summary of the composition and type of the dataframe
glimpse(hotel_bookings) #Similar to top function but more horizontal

colnames(hotel_bookings) #Column names


#Arranging the column lead_time from least to greatest
arrange(hotel_bookings, lead_time)

#Arranging from greatest to least as we want to focus on bookings made far in advance
arrange(hotel_bookings, desc(lead_time))

head(hotel_bookings) #It won't be saved to the dataframe...

#So we will just create a new data frame
hotel_bookings_v2 <- arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)

#We don't need arrange if we use either max() or min()
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time) #Notice that it uses dataframe$column_name

mean(hotel_bookings$lead_time)
#Wouldn't matter if we use hotel_bookings_v2 since the values are
#still the same after arrange()

#Average lead time= 104.01

#Now what happens if your boss wants to know the average lead time before booking
#for just city hotels
hotel_bookings_city <- filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

head(hotel_bookings_city)

mean(hotel_bookings_city$lead_time)
#Average lead time for city hotel bookings = 108.74

#The boss now wants to know more info about city hotels including max and min
#Also interested in how different they are from resort hotels
hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
#To save time and not run code over and over again,
#Use group_by and summarize() in a pipe operator to make it easier to follow

head(hotel_summary)
