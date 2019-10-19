

library(leaflet)
source('data.R')

map <- leaflet() %>%
  addTiles(
    "https://api.mapbox.com/styles/v1/firewarden/ck1xdwyca241f1ctb5qg9k4oj/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1IjoiZmlyZXdhcmRlbiIsImEiOiJjazF4ZHRwaXQwYmw2M2ptdXF4eDRlcWw0In0.7pwZEAfL8n5l0VEoQ-9FVA"
  ) %>%
  setView(lng = -121.474002,
          lat = 38.602580,
          zoom = 10) %>%
  addDrawToolbar(
    targetGroup = 'draw',
    editOptions = editToolbarOptions(selectedPathOptions = selectedPathOptions())
  )  %>%
  addLayersControl(overlayGroups = c('draw'),
                   options =
                     layersControlOptions(collapsed = FALSE))

fireMap <- function(showFireThreat) {
  if (showFireThreat) {
    map <-
      addPolygons(
        map,
        data = fireThreat,
        stroke = TRUE,
        smoothFactor = 0.3,
        fillOpacity = 1,
        fillColor = 'red'
      )
  }
  return(map)
}

# plot(fireThreat, axes=TRUE, border="gray")
