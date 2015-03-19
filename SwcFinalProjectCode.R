# this script is to analyze some gapminder data for the SWC final project
# Eric D. Johnson March 19, 2015
# eric.johnson.d@gmail.com

getwd()

data.in <- read.table("../data/gapminderDataFiveYear.txt", sep="\t", header = TRUE)


Afgstn.data <- subset(data.in, country=="Afghanistan", 
               select=c(year, gdpPercap))

Zmbw.data<- subset(data.in, country=="Zimbabwe", 
            select=c(year, gdpPercap))


US.data<- subset(data.in, country=="United States", 
          elect=c(year, gdpPercap))

ggplot(Afgstn.data, aes(x=year, y=gdpPercap)) +
        geom_point() +
        geom_smooth(method=lm) +
        ggtitle("Afghanistan")

ggplot(US.data, aes(x=year, y=gdpPercap)) +
  geom_point() +
  geom_smooth(method=lm) +
  ggtitle("United States")

ggplot(Zmbw.data, aes(x=year, y=gdpPercap)) +
  geom_point() +
  geom_smooth(method=lm) +
  ggtitle("Zimbabwe")