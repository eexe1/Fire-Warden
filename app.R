#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source('map.R')
source('planningTab.R')
source('communityTab.R')

ui <- navbarPage("Fire Warden",
                 planningTab,
                 communityTab,
                 tags$head(HTML("<script src='https://account.snatchbot.me/script.js'></script><script>window.sntchChat.Init(76126)</script>"))
                 )

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$map <- renderLeaflet({
        fireMap(input$showPrediction)
    })
    
    src1 = "images/dry_spells_Los Angeles_NEX-GDDP_RCP85.png"
    src2 = "images/average_high_temperature_Los Angeles_NEX-GDDP_RCP85.png"
    src3 = "images/max_consecutive_dry_days_Los Angeles_NEX-GDDP_RCP85.png"
    
    output$img1 <- renderUI({
        tags$img(src = src1)
    })
    
    output$img2 <- renderUI({
        tags$img(src = src2)
    })
    
    output$img3 <- renderUI({
        tags$img(src = src3)
    })
    
}

# Run the application
shinyApp(ui = ui, server = server)
