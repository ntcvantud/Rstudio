library(ggplot2)



setwd("C:/Users/Apple/Dropbox/Data_Ana/R")
wage <- read.csv("wages.csv",
                 stringsAsFactors = TRUE)

p <- ggplot(wage, aes(x=sex))
p + geom_bar(stat = "count",position = "dodge")


p <- ggplot(wage, aes(x=race))
p + geom_bar(stat = "count",position = "dodge")

#############################################
#way1
w<- data.frame(wage)

wage <- data.frame(table(w$race,w$sex))
names(wage) <- c("race","NOTE","Count")

ggplot(wage, aes(x = race,y=Count)) + 
  geom_bar(aes(fill = NOTE), position = 'fill',stat="identity")

#######################################
#way2
p<-ggplot(wage, aes(race, fill = sex)) 
  p + geom_bar(stat = "count",position = "dodge")
  
###########################################
  
p <- ggplot(wage, aes(x=earn))
  
  p + geom_histogram(bins = 50,aes(y=..density..)) + geom_density()
  
  
  p <- ggplot(wage, aes(x=height))
  
  p + geom_histogram(bins = 50,aes(y=..density..)) + geom_density()
#################################################  
  p<-ggplot(wage, aes(earn,y = ..density.., fill = sex)) 
  p + geom_histogram(bins = 50) + geom_density(alpha=0.1)
  
  
  p<-ggplot(wage, aes(height, y = ..density..,fill = sex )) 
  p + geom_histogram(bins = 50) + geom_density(alpha = 0.1)
  
  #################################################################
  p <- ggplot(wage,
              aes(x=sex,y=height,shape=sex,colour=sex))
  p+ geom_point(size=3) + scale_shape_manual(values=c(1, 3)) +
    theme_classic()
  
  
