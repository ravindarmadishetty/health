
# example from http://shiny.rstudio.com/gallery/kmeans-example.html
library(sp)
library(leaflet)
library(readxl)
library(shinythemes)
library(shiny)
library(tidyverse)
library(dplyr)
library(esquisse)

healthDf <- read_xlsx("C:/Users/31322/Desktop/disease/healthDf.xlsx")

shinyUI(fluidPage(theme = shinytheme("united"),
                        titlePanel(HTML("<h1><center><font size=14> India Health care from 2013 to 2017</font></center></h1>")), 
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("yearInput", label = h3("Year"),choices = c(2013,
                                                    2014,
                                                    2015,
                                                    2016,
                                                    2017,
                                                    2018,
                                                    2019,
                                                    2020)),
                            selectInput("diseaseInput", label = h3("Diseases"),choices = c("Malaria_Cases",
                                                    "Dengue_Cases",
                                                    "TB_Cases",
                                                    "HIV_Cases",
                                                    "Swine_Flu_Cases",
                                                    "AES_Cases",
                                                    "Malaria_Deaths",
                                                    "Dengue_Deaths",
                                                    "TB_Deaths",
                                                    "HIV_Deaths",
                                                    "Swine_Flu_Deaths",
                                                    "AES_Deaths"
                                        ))),
                          mainPanel(leafletOutput(outputId = 'map', height = 
                                                    800) 
                          ))
                  ))
