hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)

install.packages('ggplot2')
library(ggplot2)

#Plots and Facets

```{r creating a plot}
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

{r bar chart}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

```{r faceting a plot}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

#Filtering 
```

install.packages('tidyverse')
library(tidyverse) #For dplyr

```{r filtering a dataset to just city hotels that are online TA}
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))

```{r View}
View(onlineta_city_hotels)
```

```{r filtering a dataset with the pipe operator}
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
```

```{r view second dataframe}
View(onlineta_city_hotels_v2)
```

```{r creating a plot part two}
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))
```
