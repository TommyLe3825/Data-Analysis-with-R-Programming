# Aesthetics and Visualizations

The data in this example is originally from the article Hotel Booking Demand Datasets (https://www.sciencedirect.com/science/article/pii/S2352340918315191), written by Nuno Antonio, Ana Almeida, and Luis Nunes for Data in Brief, Volume 22, February 2019.

The data was downloaded and cleaned by Thomas Mock and Antoine Bichat for #TidyTuesday during the week of February 11th, 2020 (https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-02-11/readme.md).

You can learn more about the dataset here:
https://www.kaggle.com/jessemostipak/hotel-booking-demand


## Analyze the dataset and create charts! After exploring your bar chart, your stakeholder has more questions. Now they want to know if the number of bookings for each distribution type is different depending on whether or not there was a deposit or what market segment they represent. 


Charts/Facets:

ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x = distribution_channel))

![image](https://github.com/user-attachments/assets/4480a901-228c-4a18-b903-d6531030ee8a)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))

![image](https://github.com/user-attachments/assets/e425028b-cd09-4d69-bbc3-08f570f01e59)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))

![image](https://github.com/user-attachments/assets/39978ddb-16cf-430b-82b1-85bb576f2191)

ggplot(data = hotel_bookings) +   
  geom_bar(mapping = aes(x = distribution_channel)) +   
  facet_wrap(~deposit_type)

![image](https://github.com/user-attachments/assets/15c6799d-ed4c-464b-a297-9f7cc4738e3b)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment)

![image](https://github.com/user-attachments/assets/82f60b11-0524-4197-ab84-cb391ac8b814)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type)

![image](https://github.com/user-attachments/assets/8ab7d7da-9d2e-4cdb-9692-c45490cada9f)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment)

![image](https://github.com/user-attachments/assets/ed7f9759-710c-4a69-b3c6-dfc414e5640e)
