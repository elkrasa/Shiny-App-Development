library(xlsx)
library(shiny)
library(ggplot2)
library(dplyr)
    my_data <- read.xlsx("Measurments.xlsx",1)
    head(my_data)
          ui <- fluidPage(
        sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "trajectory", 
                        label = "Date Range:",
                        min = as.Date("2021-03-01","%Y-%m-%d"),
                        max = as.Date("2021-09-01","%Y-%m-%d"),
                        value = c(as.Date("2021-05-01"), as.Date("2021-07-01")), 
                        timeFormat="%Y-%m-%d", step = 1)),
        mainPanel(
            tabsetPanel(type="tabs",
                        tabPanel("Plot",plotOutput(outputId = "lines", height = "70vh")),
                        tabPanel("Documentation",
                                 tags$p("I wrote this simple app to keep track of my body volumes while i'm loosing weight.
        Every 2 months i do volume measurments in cm of different parameters of my body (waist, breast, hips, arm, etc.)
        and write data to the speadsheet",
                                        tags$a("Measurments.", href = "http://www.imdb.com/"),
 tags$p("The data is being taken from the spreadsheet and plotted to the Volume loosing diagramm. There are sliders on 
        the diagramm that aloud to choose particular period of time. Looking at this diagramm i can keep track of body
        fat loosing and making sure all my parameters have positive dynamic. It's not much data there yet, but after a
        year it will be interesting to see what progress i had.")
                        ))))))
