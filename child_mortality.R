%https://ourworldindata.org/child-mortality

child <- read.csv('child-deaths-igme-data.csv')
View(child)
library(dplyr)
<<<<<<< HEAD
paises_surame <- c('Colombia','Venezuela',
                   'Argentina','Peru','Ecuador')
ven_child <- filter(child, Entity %in% paises_surame)
dim(ven_child)
View(ven_child)

class(ven_child$Year)
library(ggplot2)
names(ven_child) <- c('Pais','codigo','año','cantidad')

ggplot(ven_child, aes(x=año, y=cantidad,colour=Pais))+
  geom_line()  


=======

ven_child <- filter(child, Entity==c('Venezuela','Colombia'))
dim(ven)
View(ven)

