# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.Find out more about building applications with Shiny here:
# http://shiny.rstudio.com/
#
# There are two parts to a shiny file, the UI and the server. 
# Today, you only need to change the server part. See my comments there. 
# Do not alter the rest of the code

library(shiny)

# Define UI
ui <- fluidPage(
  
  tmapOutput("my_tmap")
  
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$my_tmap = renderTmap({
    
    #Delete this section of code between the hashtags and paste the code for your map instead
    tm_shape(World) + tm_polygons("HPI", legend.title = "Happy Planet Index")
    #
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
