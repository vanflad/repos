library(tidyverse)
library(gapminder)

gapminder

head(gapminder)
tail(gapminder)
str(gapminder)
summary(gapminder)
glimpse(gapminder)

plot(lifeExp ~ year, gapminder)

#"basic care and feeding of data in r" on cm004 stat site for more

#data frames are also lists, more similar than to matrices

typeof(TRUE)

#data types: logical, integer, characters, doubles

gapminder$country

list(5, c(1, 2, 3), "hello")

