shinyUI(pageWithSidebar(
  headerPanel('Iris Data Set for Clustering'),
  sidebarPanel(
    radioButtons('xcol', 'X data input', names(iris[,-5])),
    radioButtons('ycol', 'Y data input', names(iris[,-5]),
                selected=names(iris)[[2]]),
    sliderInput('k', 'Number of clusters', 2,
                 min = 1, max = 10)
    
  ),
  mainPanel(
    plotOutput('clusterplot'),
    verbatimTextOutput("text"),
    p("Shiny Apps Guide:  "),
    p("1.- The Shiny App uses Iris data set which contains examples of iris plants.  "),
    p(" the App use Kmeans function to group values by number of clusters.  "),
    p("2.- The X and Y Data input value allow to change between differents values of plants:  "),
    p(" like length and widh in cm. just to choose the value adn that's all.  "),
    p("3.- The slidebar of number of clusters allow to choose the number of cluster to be  "),
    p(" used by Kmeans, jut move horizontally to increase or decrease it.  "),
    p("4.- the plot visualize the result after choosing X and Y data input value and number "),
    p(" of clusters, then we'll see group by cluster and with differen colours the result.  "),
    p("5.- finally we can see the average of neighbors depending on our X and Y choices and"),
    p(" the number of cluster chosen.  ")
  )
))


