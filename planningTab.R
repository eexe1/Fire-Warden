library(shiny)
library(leaflet.extras)
source('map.R')

planningContent <- fluidPage(
  fireMap %>%
    addDrawToolbar(
      targetGroup = 'draw',
      editOptions = editToolbarOptions(selectedPathOptions = selectedPathOptions())
    )  %>%
    addLayersControl(
      overlayGroups = c('draw'),
      options =
        layersControlOptions(collapsed = FALSE)
    ),
  hr(),
  fluidRow(column(
    3,
    titlePanel("Settings"),
    sliderInput(
      "fireYear",
      "Year of Fire",
      min = 2015,
      max = 2019,
      value = 2019,
      sep = ""
    ),
    checkboxInput("showPrediction", "Fire Severity Level", FALSE),
  ))
)

planningTab <- tabPanel("Action Plan", planningContent)

