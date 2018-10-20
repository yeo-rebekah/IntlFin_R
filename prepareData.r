library(dplyr, warn.conflicts = false)
library(reshape, warn.conflicts = false)
#prepare GDP dataframe
gdp_df <- dplyr::select(GDP, date,indicator, country,value)

write.csv(gdp_df,file="gdp_FH.csv")

#prepare investments dataframe
Inv_df <- dplyr::select(Inv, date,indicator, country,value)

write.csv(Inv_df,file="Inv_FH.csv")

#prepare savings
Svg_df <- dplyr::select(Svg, date,indicator, country,value)

write.csv(Svg_df,file="Svg_FH.csv")

#GDP deflator
Infl <- dplyr::mutate(Infl,defl=value/100+1)
ASEANInfl <- dplyr::mutate(ASEANInfl,defl=value/100+1)
Infl_df <- dplyr::select(Infl, date,indicator, country,defl)
ASEANInfl_df <- dplyr::select(ASEANInfl, date,indicator, country,defl)

write.csv(Infl_df,file="defl_FH.csv")




#prepare GDP dataframe
ASEANgdp_df <- dplyr::select(ASEANgdp, date,indicator, country,value)

write.csv(ASEANgdp_df,file="ASgdp_FH.csv")

#prepare investments dataframe
ASInv_df <- dplyr::select(ASEANInv, date,indicator, country,value)

write.csv(ASInv_df,file="ASInv_FH.csv")

#prepare savings
ASSvg_df <- dplyr::select(ASEANSvg, date,indicator, country,value)

write.csv(ASSvg_df,file="ASSvg_FH.csv")

#GDP deflator
Infl <- dplyr::mutate(Infl,defl=value/100+1)
ASEANInfl <- dplyr::mutate(ASEANInfl,defl=value/100+1)
Infl_df <- dplyr::select(Infl, date,indicator, country,defl)
ASEANInfl_df <- dplyr::select(ASEANInfl, date,indicator, country,defl)

write.csv(ASEANInfl_df,file="ASdefl_FH.csv")


