
library(leaflet)

fireMap <- leaflet() %>%
  addTiles("https://api.mapbox.com/styles/v1/firewarden/ck1xdwyca241f1ctb5qg9k4oj/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZmlyZXdhcmRlbiIsImEiOiJjazF4ZHRwaXQwYmw2M2ptdXF4eDRlcWw0In0.7pwZEAfL8n5l0VEoQ-9FVA") %>%  # Add default OpenStreetMap map tiles
  setView(lng=-121.474002, lat=38.602580, zoom = 10)
fireMap  # Print the map

