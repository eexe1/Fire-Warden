# does not work, so I uploaded file to mapbox directly.
# gasStations <- rgdal::readOGR("data/California_Natural_Gas_Station.geojson", what = "sp")
# 
# pal <- colorNumeric("viridis", NULL)
library(rgdal)
fireThreat <- rgdal::readOGR("data/CPUC_Fire_Threat_Tier3_Elevated.geojson", "CPUC_Fire_Threat_Tier3_Elevated")

