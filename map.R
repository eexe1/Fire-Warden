
library(leaflet)

fireMap <- leaflet() %>%
  addTiles("https://api.mapbox.com/styles/v1/eexe1/ck1x99i6s0kr21cmfud60dta7/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZWV4ZTEiLCJhIjoicmptalNFbyJ9.EJaMKJRWgaoW9EqATfU2rA") %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-121.474002, lat=38.602580, popup="Sacramento")
fireMap  # Print the map

