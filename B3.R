library(ggplot2)
kinhte <- economics
p <- ggplot(kinhte,aes(date,unemploy))
p+geom_line()


setwd("C:/Users/Apple/Dropbox/Data_Ana/R")
wage <- read.csv("wages.csv",
                 stringsAsFactors = TRUE)

#######################################################

dlxe<- mpg
pp <- ggplot(dlxe,aes(cty, hwy,colour = class))
pp + geom_point(size = 4)


pp <- ggplot(dlxe,aes(displ, hwy,shape = drv))
pp + geom_point(size = 4)


pp <- ggplot(dlxe,aes(displ, hwy))
pp + geom_point(size=4) + facet_wrap(~drv)

pp <- ggplot(dlxe,aes(displ, hwy,colour=drv))
pp + geom_point(size=3) +
  labs(x="Engine Displacement", y= "Highway mileage per gallon",
       colour = "Drivetrain",
       title = "Fuel economy on highway") +
  scale_color_discrete(labels=c("4 wheels","Front","Rear"))
####################################################
kimcuong <- diamonds
p <- ggplot(kimcuong, aes(x=depth))

p + geom_histogram()
p + geom_histogram() + xlim(55, 70)

p <- ggplot(kimcuong, aes(x=depth))
p + geom_histogram(bins = 50,aes(y=..density..)) +
  xlim(55, 70)+ geom_density()


p + geom_histogram(bins = 50,
                   aes(y=..density..,fill=..density..)) +
  xlim(55, 70)+ geom_density(size=1) +
  scale_fill_gradient("density",low="green",high="red")

ggplot(diamonds, aes(depth, fill = cut, colour = cut)) +
  geom_density(alpha = 0.4, na.rm = TRUE) +
  xlim(58, 68)

library(gcookbook)
p <- ggplot(heightweight,aes(x=ageYear,y=heightIn))
p+ geom_point(size=2)

p <- ggplot(heightweight,aes(x=ageYear,y=heightIn))
p+ geom_point(size=2) + geom_smooth()

p <- ggplot(heightweight,
            aes(x=ageYear,y=heightIn,colour=sex,shape=sex))
p+ geom_point(size=2)

p <- ggplot(heightweight,
            aes(x=ageYear,y=heightIn,shape=sex,colour=sex))
p+ geom_point(size=3) + scale_shape_manual(values=c(1, 3)) +
  theme_classic()

p <- ggplot(heightweight,aes(x=ageYear,y=heightIn,
                             shape=sex,colour=sex))
p+ geom_point(size=3) + scale_shape_manual(values=c(1, 3)) +
  theme_classic() + geom_smooth(method = "lm")

p <- ggplot(heightweight,aes(x=ageYear,y=heightIn,
                             shape=sex,colour=sex))
p+ geom_point(size=3) + scale_shape_manual(values=c(1, 3)) +
  theme_classic() +
  geom_smooth(method = "lm",formula = y~x+I(x^2))

ggplot(heightweight, aes(x=ageYear, y=heightIn,
                         size=weightLb, colour=sex)) +
  geom_point(alpha=.5) +
  scale_colour_brewer(palette="Set1")

