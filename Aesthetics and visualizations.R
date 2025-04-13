library(ggplot2)
library(tidyverse)

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

#Bar chart of the # of bookings for each distribution type
{r example chart}
ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x = distribution_channel))

#Checking to see if each distribution type is different based on
#if there was deposit/ what market segment they represent

#Adds colors to the bars based on deposit_type within each channel
```{r pressure, echo=FALSE}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))

#Market segments colored within each distribution channel
```{r pressure, echo=FALSE}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))

#Faceting breaks one chart into multiple subplots

#Creates a separate bar chart for each deposit type
```{r creating a plot} 
ggplot(data = hotel_bookings) +   
  geom_bar(mapping = aes(x = distribution_channel)) +   
  facet_wrap(~deposit_type)

#Creates a subplot for each market segment
```{r creating a plot}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment)

#facet_grid will include plots even if they are empty
```{r creating a plot}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type)

#A bit messy but you can have both deposit type and market segment in one chart
{r creating a plot}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment)

#It generate a grid of lots where rows represent deposit types
#Columns represent market segments
