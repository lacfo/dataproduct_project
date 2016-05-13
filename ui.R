library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Predict child's height using parents' height"),
    sidebarPanel(
        h3("This app helps predict child's height with parents' height"),
        h4("First you need to input the mother's height"),
        h4("Then you input the father's height"),
        h4("Finally click on the submit button"),
        numericInput("mheight", "Please input mother's height", value = 60, min = 50, max = 75, step = 1),
        numericInput("fheight", "Please input father's height", value = 65, min = 60, max = 85, step = 1),
        submitButton("Submit")
    ),
    mainPanel(
        h1("Show the prediction"),
        p("The mother's height: "),
        verbatimTextOutput("mheight"),
        p("The father's height: "),
        verbatimTextOutput("fheight"),
        p("The prediction result: "),
        verbatimTextOutput("prediction")
    )
))
