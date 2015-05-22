## Function to convert Celsius to Fahrenheit                
ctof <- function(c)
{
  return ((c * 9)/5 + 32)
}
## Function to convert Fahrenheit to Celsius                
ftoc <- function(f)
{
  return ((f - 32) * 5/9)
}
## Function to convert Celsius to Kevin
ctok <- function(c)
{
  return (c + 273.15) 
}    
## Function to convert Kevin to Celsius

ktoc <- function(k)
{
  return (k - 273.15) 
}

## Function to convert Kevin to Fahrenheit

ktof <- function(k)
{
  return ((k * 9)/5 - 459.67)
}

## Function to convert Fahrenheit to Kevin

ftok <- function(f)
{
  return ((f + 459.67) * 5 / 9 )
}

## Load shiny library
library(shiny)
## Standard shinyserver function to caculate the outputs to be displayed
shinyServer(
  function(input, output) {
    
    
    ## Render the input temperature
    output$text_input_temperature <- renderText({
      input_temperature()
    })      
    
    ## To find the input units from radio button values             
    input_temperature <- reactive({
      
      if(input$type == 1 || input$type == 4)
        input_temperature <- paste(input$inpTemp, "Celsius")    
      else if(input$type == 2 || input$type == 6)
        input_temperature <- paste(input$inpTemp, "Fahrenheit") 
      else if(input$type == 3 || input$type == 5)
        input_temperature <- paste(input$inpTemp, "Kelvin")     
      
    })
    
    ## Calculate and render the output temperature with units            
    converted <-  reactive({
      if(input$type == 1)
        converted <- paste(ctof(input$inpTemp), "Fahrenheit")    
      else if(input$type == 2)
        converted <- paste(ftoc(input$inpTemp), "Celsius") 
      else if(input$type == 3)
        converted <- paste(ktoc(input$inpTemp), "Celsius") 
      else if(input$type == 4)
        converted <- paste(ctok(input$inpTemp), "Kelvin") 
      else if(input$type == 5)
        converted <- paste(ktof(input$inpTemp), "Fahrenheit") 
      else if(input$type == 6)
        converted <- paste(ftok(input$inpTemp), "Kelvin") 
    })                         
    
    output$text_output_temperature <- renderText({
      converted()
    })                 
       
  }
)