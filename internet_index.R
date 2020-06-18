url <- 'https://theinclusiveinternet.eiu.com/assets/external/downloads/3i-index-data.csv '

internet <- read.csv('3i-index-data.csv')
View(internet)
library(dplyr)
ven_int <- filter(internet, internet$Country.Group=='Venezuela')
ven_int
