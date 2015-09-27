shinyServer(function(input, output, session) {
  
  # new data frame with input data
  selectedData <- reactive({
    iris[, c(input$xcol, input$ycol)]
  })
  
  # clustering by number of clusters
  k <- reactive({kmeans(selectedData(), input$k)})
  
  output$clusterplot <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
         col = k()$cluster,
         pch = 10, cex = 2)
    points(k()$centers, pch = 7, cex = 3, lwd = 3)
  })
  
  # Average by K value
  output$text <- renderText({
    paste0("Average neighbors by cluster:  ", 
           (length(iris$Sepal.Length) / input$k))
  })
  
})