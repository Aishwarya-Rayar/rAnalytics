
library(dplyr)

mtcars
names(mtcars)
colnames(mtcars)
?mtcars
head(mtcars)
tail(mtcars)
summary(mtcars)
hist(mtcars$mpg)

head(mtcars)
nrow(mtcars)
dim(mtcars)


mtcars
mtcars%>% filter(mpg > 25)
mtcars%>% filter(mpg > 25 & gear == 5)

mtcars %>% group_by(gear) %>% summarise(n=n())
mtcars %>% group_by(gear, carb) %>% summarise(n=n())


library(ggplot2)
# Basic histogram
ggplot(mtcars, aes(x=mpg)) + geom_histogram(bins=5)


library(ggplot2)
# Basic barplot
ggplot(data=mtcars, aes(x=gear)) +geom_bar(stat="count",color='red', fill='green')
p
ggplot(data=mtcars, aes(x=gear,fill=factor(gear))) +geom_bar(stat="count",color='red')
# Horizontal bar plot
p + coord_flip()

#Author DataFlair
x = rnorm(10)
y = rnorm(10)
x
y

t.test(x,y) #if p>0.5 do not reject null hypothesis conclusion:drawn from same population
