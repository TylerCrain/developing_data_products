shinyUI(
    pageWithSidebar(
        # Application Title
        headerPanel("Basketball Wins Predictor"),
        
        sidebarPanel(
            numericInput('pointsFor', 'Total Points Scored', value = 0),
            
            numericInput('pointsAgainst', 'Total Points Allowed', value = 0),
            
            numericInput('games', 'Number of Games Played', value = 0),
            
            submitButton('Submit')
            ),
        
        mainPanel(
            h3('Results of prediction'),
            h4('Total Points Scored'),
            verbatimTextOutput("inputValue"),
            h4('Total Points Allowed'),
            verbatimTextOutput("inputValue2"),
            h4('Number of Games Played'),
            verbatimTextOutput("inputValue3"),
            h4('Predicted Number of Wins'),
            verbatimTextOutput("prediction"),
            h4('Predicted Number of Wins for Season'),
            verbatimTextOutput("prediction2")
            )
        )
    )

