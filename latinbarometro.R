http://www.latinobarometro.org/latContents.jsp
install.packages('haven')
library(haven)
lb_2018_spss <- read_sav('Latinobarometro_2018_Esp_Spss_v20190303.sav')
lb_2017_spss <- read_sav('F00006503-Latinobarometro2017_sav/Latinobarometro2017Esp_v20180117.sav')
  
View(lb_2018_spss)
View(lb_2017_spss)
dim(lb_2017_r)

satisfecho <- lb_2017_spss$P1ST

boxplot(satisfecho)
