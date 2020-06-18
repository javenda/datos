#install.packages('jsonlite')

library(jsonlite)
url <- 'https://covid19.patria.org.ve/api/v1/timeline' #datos 

download.file(url, 'venpatria.json')

library(rjson)
ven_covid <- fromJSON(file='venpatria.json')

fecha <- as.Date(sapply(ven_covid, function(x) x[[1]]))

nuevos <- sapply(ven_covid, function(x) x[[3]][[2]])
nuevos_t <- sapply(ven_covid, function(x) x[[3]][[1]])

recuperados <- sapply(ven_covid, function(x) x[[4]][[2]])
recuperados_t <- sapply(ven_covid, function(x) x[[4]][[1]])

fallecidos <- sapply(ven_covid, function(x) x[[5]][[2]])
fallecidos_t <- sapply(ven_covid, function(x) x[[5]][[1]])

activos <- sapply(ven_covid, function(x) x[[6]][[1]])

ven_covid <- data.frame(fecha=fecha,
                       nuevos=nuevos,
                       nuevos_t=nuevos_t,
                       recuperados=recuperados,
                       recuperados_t=recuperados_t,
                       fallecidos=fallecidos,
                       fallecidos_t=fallecidos,
                       activos=activos,
                       stringsAsFactors = FALSE)

#ven_covid <- stream_in(file('venpatria.json'))
#ven_covid <- as.data.frame(ven_covid)
write.csv(ven_covid,'ven_covid.csv')
View(ven_covid)


library(apexcharter)

g_nuevos <- apex(data = ven_covid, type = "area", 
                 caption='Casos  COVID-19 acumulados Venezuela',
     mapping = aes(x = fecha, y =nuevos_t))%>%
  ax_subtitle(text = "Covid-19 acumulado Venezuela")
%>%
  theme=('Candy')

g_nuevos
