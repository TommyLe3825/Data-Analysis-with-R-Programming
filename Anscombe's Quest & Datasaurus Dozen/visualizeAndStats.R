#Two examples that show not to solely rely on stats but also visualize the data as it can turn out much differently from each other

#Anscombe's quartet
install.packages('Tmisc')

library(Tmisc)

library(dplyr) #To use summarize

library(ggplot2) #To use ggplot

data(quartet)
View(quartet)

quartet %>% #Grouping each one using a pipe into sets to see stats, which should be all pretty similar
  group_by(set) %>% 
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

#Display in Plots which should display 
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set)

install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3) 
