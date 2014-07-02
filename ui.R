library(shiny)

# ui.R
shinyUI(pageWithSidebar(
   headerPanel("Exemple Shiny"),
   sidebarPanel(
      selectInput("maVar", "Choose a variable", 
                  choices = c("var2", "Population.in.millions"))
   ),
   mainPanel(
      htmlOutput("view")
   )
))
