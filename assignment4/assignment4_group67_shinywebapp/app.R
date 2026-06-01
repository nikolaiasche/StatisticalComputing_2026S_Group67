#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(ggplot2)
library(plotly)
library(DT)

data_cia <- jsonlite::fromJSON("data_cia2.json")
print(str(data_cia))

data_cia_clean <- data.frame(
  "Country" = data_cia$country,
  "Continent" = data_cia$continent,
  "Subcontinent" = data_cia$subcontinent,
  "Income status" = data_cia$status,
  "Expenditure on education" = data_cia$expenditure,
  "Youth unemployment rate" = data_cia$youth_unempl_rate,
  "Net migration rate" = data_cia$net_migr_rate,
  "Electricity from fossil fuels" = data_cia$electricity_fossil_fuel,
  "Area" = data_cia$area,
  "Population growth rate" = data_cia$pop_growth_rate,
  "Life expectancy" = data_cia$life_expectancy,
  "Population" = data_cia$population,
  "ISO3" = data_cia$ISO3,
  check.names = FALSE
)
selection_variables <- c(
  "Expenditure on education",
  "Youth unemployment rate",
  "Net migration rate",
  "Population growth rate",
  "Electricity from fossil fuels",
  "Life expectancy"
)

print(str(data_cia_clean))


# Define UI for application of assignment 4
ui <- fluidPage(

    # Application title
    titlePanel("CIA World Factbook 2020"),
    p("Welcome to my shiny app, which allows you to visualize variables 
      from the CIA 2020 data set using univariate, 
      multivariate and geographical graphics."),

    tabsetPanel(
      # Univariate tab
      tabPanel(
        "Univariate analysis",
        sidebarLayout(
          sidebarPanel(
            selectInput(
              inputId = "select_univar_variable",
              label = "Select a variable:",
              choices = selection_variables
              ),
            actionButton("btnRawData", "View raw data"),
            DTOutput("raw_dataTable")
          ),
          mainPanel(
            tabsetPanel(
              tabPanel("Map", plotlyOutput("map_plot")),
              tabPanel(
                "Global analysis",
                fluidRow(
                  column(6, plotlyOutput("hist_density_plot")),
                  column(6, plotlyOutput("boxplot_global"))
                )
              ),
              tabPanel(
                "Analysis per continent",
                fluidRow(
                  column(6, plotlyOutput("density_continent_plot")),
                  column(6, plotlyOutput("boxplot_continent"))
                )
              )
            )
          )
        )
      ),
      # Multivariate tab
      tabPanel(
        "Multivariate analysis",
        sidebarLayout(
          sidebarPanel(
            selectInput(
              inputId = "select_multivar_xvar",
              label = "Select variable 1:",
              choices = selection_variables
              ),
            selectInput(
              inputId = "select_multivar_yvar",
              label = "Select variable 2:",
              choices = selection_variables
              ),
            selectInput(
              inputId = "select_multivar_scale",
              label = "Scale points by:",
              choices = c("Area" = "area", "Population" = "population")
              )
            ),
            mainPanel(
              plotlyOutput("scatter_plot")
            )
          )
        )
      )
    )

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
