# server.R
library(shiny)
library(googleVis)

WorldPopulation=data.frame(Country=Population$Country,
                           Population.in.millions=round(Population$Population/1e6,0),
                           Rank=paste(Population$Country, "Rank:", Population$Rank))
WorldPopulation$var2 = rnorm(195)


shinyServer(function(input, output) {
 
   output$view <- renderGvis({
      gvisGeoMap(WorldPopulation, "Country", input$maVar, "Rank",
                       options=list(dataMode="regions", width=600, height=600, color="blue"))
   })
})

