
library(readr)

train <- read.csv("/home/david/Downloads/all/train.csv",stringsAsFactors = FALSE)
test <- read.csv("/home/david/Downloads/all/test.csv",stringsAsFactors = FALSE)

test$Survived <- 2
input <- rbind(train, test)


#partition into train and test

mytrain <- input$Survived %in% c(1,0)
mytest <- !input$Survived %in% c(1,0)