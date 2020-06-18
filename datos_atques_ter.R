'https://gtd.terrorismdata.com/'

library(readxl)
ter <- read_xlsx('globalterrorismdb_0919dist.xlsx')  
dim(ter)
View(ter)
ven_ter <- filter(ter, ter$country_txt=='Venezuela')
dim(ven_ter)
View(ven_ter)
