
http://ghdx.healthdata.org/record/ihme-data/global-health-spending-1995-2017

url <- 'http://ghdx.healthdata.org/sites/default/files/record-attached-files/IHME_HEALTH_SPENDING_1995_2017_CSV.zip'
download.file(url, 'gasto_salud.zip')
unzip('gasto_salud.zip')
gasto_salud <- read.csv("IHME_HEALTH_SPENDING_1995_2017_Y2020M04D23.CSV")
View(gasto_salud)
