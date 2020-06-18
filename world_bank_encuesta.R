https://microdata.worldbank.org/index.php/catalog/2993/get-microdata
https://microdata.worldbank.org/index.php/catalog/2993/data-dictionary/F1?file_name=gicphonesurvey
unzip('WLD_2017_GICS_v01_M_CSV.zip')
data_wb <- read.csv('WLD_2017_GICS_v01_M_CSV/3_gicphonesurvey.csv')
View(data_wb)
