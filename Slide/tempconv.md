---
title       : Temperature Conversion  
subtitle    : Celsius/Fahrenheit/Kelvin
author      : pbask
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction



This is an RStudio shiny application developed as a course project for Coursera's <b>Developing Data Products</b> course in the <b>Data Science Specialization</b> track. The application developed is a temperature conversion tool between different units (Celsius/Fahrenheit/Kelvin).


 

---

## The Application


This application uses 

1. Radio Buttons to choose from the various conversion types.

2. A text box with numeric value for the temperature value to be entered by the user for conversion.

The Documentation for the app is already included in the application's Documentation Tab

Example Calculation 


```r
#given an temprature input of 0 Cesius below would be the conversion to Kelvin
0 + 273.15
```

```
## [1] 273.15
```

---

## Formulae

The forumlae used in the application are 

1. Celsius to Fahrenheit
  F = (C * 9/5) + 32 where C is the input temperature in Celsius and F is the converted temperature in Fahrenheit

2. Fahrenheit to Celsius
  C = (F -32) * 5/9 where F is the input temperature in Fahrenheit and C is the converted temperature in Celsius

3. Kelvin to Celsius & Celsius to Kelvin
  Its a direct conversion where K = 273.15 + C where C is the input temperature in Celsius and K is the converted temperature in Kelvin. Viceversa, the formula C = K - 273.15 is used. 
  
4. Convert Kelvin to Fahrenheit
  F = (K * 9)/5 - 459.67 where K is the input temperature in Kelvin and F is the converted temperature in Fahrenheit

5. Convert Fahrenheit to Kelvin
  K = (F + 459.67) * 5 / 9 where F is the input temperature in Fahrenheit and K is the converted temperature in Kelvin


---

## Accesing the application

The application link on RStudio shinyapps.io is 

<a href="http://pbask.shinyapps.io/TempConv/"> <b>https://pbask.shinyapps.io/TempConv/</b></a>

The code for the following is hosted in gthub with the below URL

<a href="http://github.com/pbask/DataProductsProject"><b>http://github.com/pbask/DataProductsProject</b></a>

To run it from Rstudio or R, download the ui.R and server.R into the working directory of R or RStudio and execute runApp() in the console.
