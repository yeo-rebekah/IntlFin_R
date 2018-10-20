library(wbstats)

gdp<- wbsearch("gdp.*US\\$")
GDP<- wb(country=c("AUS","AUT","BEL","CAN","DNK"),
         indicator=c("NY.GDP.MKTP.CD"),
         startdate = 1960, enddate=2017)

ASEANgdp<- wb(country=c("BRN","KHM","IDN","MYS","MMR","LAO","PHL","SGP","THA"),
         indicator=c("NY.GDP.MKTP.CD"),
         startdate = 1960, enddate=2017)

investments<- wbsearch("capital.*US\\$")

Inv <- wb(country=c("AUS","AUT","BEL","CAN","DNK"),
         indicator=c("NE.GDI.FTOT.CD"),
         startdate = 1960, enddate=2017)

ASEANInv<- wb(country=c("BRN","KHM","IDN","MYS","MMR","LAO","PHL","SGP","THA"),
              indicator=c("NE.GDI.FTOT.CD"),
              startdate = 1960, enddate=2017)

savings<- wbsearch("saving.*US\\$")

Svg <- wb(country=c("AUS","AUT","BEL","CAN","DNK"),
          indicator=c("NY.GNS.ICTR.CD"),
          startdate = 1960, enddate=2017)

ASEANSvg<- wb(country=c("BRN","KHM","IDN","MYS","MMR","LAO","PHL","SGP","THA"),
              indicator=c("NY.GNS.ICTR.CD"),
              startdate = 1960, enddate=2017)

#inflation information
infl <- wbsearch("inflation")

Infl <- wb(country=c("AUS","AUT","BEL","CAN","DNK"),
          indicator=c("NY.GDP.DEFL.KD.ZG"),
          startdate = 1960, enddate=2017)

ASEANInfl<- wb(country=c("BRN","KHM","IDN","MYS","MMR","LAO","PHL","SGP","THA"),
              indicator=c("NY.GDP.DEFL.KD.ZG"),
              startdate = 1960, enddate=2017)
