library(shiny)

planningContent <- fluidPage(
  tags$style(type = "text/css", "#map {height: calc(100vh - 250px) !important;}"),
  leafletOutput("map"),
  hr(),
  fluidRow(column(
    3,
    titlePanel("Settings"),
    checkboxInput("showPrediction", "Show Fire Threat Level 3", FALSE)
  ))
)

planningTab <- tabPanel("Action Plan", planningContent)

