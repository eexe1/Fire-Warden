library(shiny)

communityContent <- fluidPage(
  titlePanel("Azavea with NASA NEX"),
  tabsetPanel(
    tabPanel("Dry Spell", uiOutput('img1')),
    tabPanel("Average High Temperature", uiOutput('img2')),
    tabPanel("Max Consecutive Dry Days", uiOutput('img3'))
  )
)

communityTab <- tabPanel("Graph", communityContent)

