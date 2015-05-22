## Load shiny library
library(shiny)
## Standard shinyUI for GUI display
shinyUI(pageWithSidebar(
  titlePanel("Temperature conversion"),
  ## Sidebarpanel
  sidebarPanel(
    helpText(p(h5("This application converts the temperature between different units (Celsius/Fahrenheit/Kelvin)"))),            
    br(),            
    radioButtons("type", label = p(h5("Choose conversion type")),
                 choices = list("Celsius to Fahrenheit" = 1,"Fahrenheit to Celsius" = 2, 
                                "Kelvin to Celsius" = 3, "Celcius to Kelvin" = 4,
                                "Kelvin to Fahrenheit" = 5, "Fahrenheit to Kelvin" = 6),selected = 1),
    br(),            
    numericInput(inputId="inpTemp", label = "Enter Temperature", 0)
   
    ),
  
  ## MainPanel
  mainPanel(
    tabsetPanel(
      tabPanel("Output",
               p(h5("Your Input:")),
               textOutput("text_input_units"),
               textOutput("text_input_temperature"),
               br(),
               p(h5("Converted Temperature:")),
               textOutput("text_output_temperature"),
               textOutput("text_output_units")
      ),
      tabPanel("Documentation",
               p(h4("Temperature Converter Tool")),
               br(),
               helpText("This application converts the temperature from one unit to another 
                              (Celsius/Fahrenheit/Kelvin)."),
               HTML("<u><b>Formula used for the conversion is: </b></u>
                        <br> <br>
                        <p><b> F = (C * 9/5) + 32 </b></p>
                        <p><b> C =  (F - 32) * 5/9 </b></p>
                        <p><b> K = C - 273.15 </b></p>  
                        <p><b> C =  K + 273.15 </b></p>
                        <p><b> K = (F + 459.67) * 5 / 9 </b></p>
                        <p><b> F =  (K * 9)/5 - 459.67 </b></p>
                        <br>
                        Enter any numeric vaue of your choice <br>
                        <br>USAGE:
                        User selects one of the conversion type and enters the temperature in the text box, the application converts the temperature and displays the output in the converted units <br>
                    ")                
      )
    )
  )      
))