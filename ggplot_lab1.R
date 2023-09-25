#creating plots
#chapter:2 --> R Graphics Cookbook
attach(mtcars)
plot(mtcars$wt, mtcars$mpg, xlab = "Weight", ylab = "Miles/(US) gallon")
library(ggplot2)
help("qplot")
qplot(mtcars$wt, mtcars$mpg, xlab = "Weight", ylab = "Miles/(US) gallon")
qplot(wt,mpg, data = mtcars,xlab = "Weight", ylab = "Miles/(US) gallon")
help("ggplot")
help("aes")
help("geom_point")
ggplot(mtcars,aes(x=wt,y=mpg,color=cyl))+geom_point(size=3)
ggplot(mtcars,aes(x=wt,y=mpg,color=factor(cyl)))+geom_point(size=3)#Convert cyl to a factor

plot(pressure$temperature, pressure$pressure,xlab = "temperature", ylab = "pressure",type = "l",col="red",lwd = 3)
points(pressure$temperature, pressure$pressure, col="black",lwd = 2)

lines(pressure$temperature, pressure$pressure/2, col="orange",lwd =3)
lines(pressure$temperature, pressure$pressure/2, col="blue", lwd =3)

library(ggplot2)
qplot(pressure$temperature, pressure$pressure, xlab = "temperature", ylab = "pressure",geom = "line")
qplot(temperature, pressure, data = pressure, xlab = "temperature", ylab = "pressure",geom="line")

#lines and points together
ggplot(pressure, aes(x=temperature,y=pressure))+geom_line(color="orange")+geom_point(color="red",size=2)
#this is also equivalent to:
qplot(temperature,pressure, data= pressure, geom = c("line","point"))
