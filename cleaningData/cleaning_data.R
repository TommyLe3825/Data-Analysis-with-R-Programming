#As a junior data analyst working for a hotel booking company, I have the task of cleaning up a .csv file that was created after querying a database to combine two different tables from different hotels
#You will need to use functions to preview the data's structure as well as basic leaning functions to prepare the data for analysis!


#if you haven't installed the packages at all, we should be using these
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

#Needs to be opened every session
library(tidyverse)
library(skimr)
library(janitor)

#Importing data
bookings_df <- read_csv("hotel_bookings.csv")

#Preview
head(bookings_df)
str(bookings_df)
glimpse(bookings_df)

colnames(bookings_df)

skim_without_charts(bookings_df)

#Cleaning data
trimmed_df <- bookings_df %>%
  select('hotel','is_canceled','lead_time') %>%
  rename('hotel_type' = hotel) #Making it easier to understand

#Combing the arrival month and year into one column using unite() example
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

#New column to add up all adults, children, and babies on a reservation
example_df <- bookings_df %>%
  mutate(guests = 'adults','children','babies')

head(example_df)

#Total number of canceled bookings and the average lead time for booking
example_df <- bookings_df %>%
  summarize(
    number_canceled = sum(is_canceled), 
    average_lead_time = mean(lead_time)
  )
  
  head(example_df)
