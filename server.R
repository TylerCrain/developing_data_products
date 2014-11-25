winPredictionSeason <- function(pointsFor, pointsAgainst, games) {
    ppg <- pointsFor / games
    oppg <- pointsAgainst / games
    seasonPointsFor <- round(ppg * 82)
    seasonPointsAgainst <- round(oppg * 82)
    round(82 * (seasonPointsFor^16.5) / (seasonPointsFor^16.5 + 
                                                 seasonPointsAgainst^16.5))
    
}
winPrediction <- function(pointsFor, pointsAgainst, games){
    round(games * (pointsFor^16.5) / (pointsFor^16.5 + 
                                              pointsAgainst^16.5))
}

shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$pointsFor})
        output$inputValue2 <- renderPrint({input$pointsAgainst})
        output$inputValue3 <- renderPrint({input$games})
        output$prediction <- renderPrint({winPrediction(input$pointsFor, 
                                                     input$pointsAgainst,
                                                     input$games)})
        output$prediction2 <- renderPrint({winPredictionSeason(input$pointsFor,
                                                               input$pointsAgainst,
                                                               input$games)})
        }
    )