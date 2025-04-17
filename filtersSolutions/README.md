# Filtering and Plotting

The data in this example is originally from the article Hotel Booking Demand Datasets (https://www.sciencedirect.com/science/article/pii/S2352340918315191), written by Nuno Antonio, Ana Almeida, and Luis Nunes for Data in Brief, Volume 22, February 2019.

The data was downloaded and cleaned by Thomas Mock and Antoine Bichat for #TidyTuesday during the week of February 11th, 2020 (https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-02-11/readme.md).

You can learn more about the dataset here:
https://www.kaggle.com/jessemostipak/hotel-booking-demand

## Filtering your dataset before creating a plot with ggplot can make your visualization both more accurate and focused.
- In this R script, you can filter with just the function or you can use a pipe operator (It's basically containing it like a function for cleanliness)

### Plots Below:

1. {r creating a plot}
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

![image](https://github.com/user-attachments/assets/0a5589bb-2b68-4f8e-a37f-23b7f7b07013)

2. {r bar chart}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

![image](https://github.com/user-attachments/assets/b413cbc3-2f91-4555-89ac-fb4057acd2b6)

3. {r faceting a plot}
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

![image](https://github.com/user-attachments/assets/39422a6c-0206-4ce2-8df4-9ea0bd70c7d9)

4. {r creating a plot part two}
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))

![image](https://github.com/user-attachments/assets/3c64b73d-b62a-4629-99b4-bb2f9e5d4966)


