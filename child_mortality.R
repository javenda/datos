%https://ourworldindata.org/child-mortality

child <- read.csv('child-deaths-igme-data.csv')
View(child)
library(dplyr)

ven_child <- filter(child, Entity==c('Venezuela','Colombia'))
dim(ven)
View(ven)