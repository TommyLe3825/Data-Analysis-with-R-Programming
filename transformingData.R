#Already installed tidyr
library(tidyr)

#Manually creating dataframe
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)

print(employee)

#separate name column of employee into first and last name at every blank space
separate(employee, name, into=c('first_name', 'last_name'), sep=' ')

##Purpose of showing off unite()
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)
print(employee)

#Choosing the dataframe employee and making a column name to unite
#first and last name together by the ' '
unite(employee,'name',first_name,last_name,sep=' ')

#To use the penguin dataset that has already been installed
library(palmerpenguins)
#Same for dplyr
library(dplyr)
View(penguins)

#A tibble
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)
