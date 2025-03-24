## This activity from Coursera is to learn the basic logic data visualization in ggplot! 

- ggplot package lets you create high-quality plots of your data. Based on the grammar of graphics(system for describing and building data visualizations), you can create the same basic components like building blocks that include:
  - A dataset
  - A set of geoms: a geom is the geometric object used to show off the data, such as using points to create a scatterplot
  - A set of aesthetic attributes: an aesthetic is a visual property of an object in the plot like in a scatterplot; it includes things like size, shape, color, or location of the data points.
    - It's like an aesthetic as a connection between a visual feature in your plot and a variable in your data

-----------------------------------------------------------------------------------------------------------------
For a code like this:
**ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))**

- **ggplot(data=penguins)**: creates a coordinate system that you can add layers to. The first argument is the dataset to use in the plot, such as penguins

- **+**: adds a new layer to the plot

- **geom_point()**: uses points to create scatterplots
  - There are many different geom functions besides geom_point(), such as geom_bar, which is a function to use bars to create bar charts
  - Each geom function in ggplot takes a mapping argument

- **(mapping=aes(x=flipper_length_mm, y=body_mass_g))**: This argument defines how variables in the dataset are mapped to visual properties. 
  - The mapping argument is always paired with the aes() function.
  - The x and y arguments of the aes() function specify which variables to use to map to the x-axis and y-axis
