# cook's distance example using mtcars
mtcars
head(mtcars)
str(mtcars)
model1 <- lm(mpg~cyl+wt, data = mtcars)
model1
help("cooks.distance")
help("which")
plot(model1, pch = 18, col = 'red', which = c(4))
cooks.distance(model1)
cooksDist <- cooks.distance(model1)
# Round it to 5 decimal points for easy to read
round(cooksDist,5)
# we can sort the values in ascending order
sort(round(cooksDist,5))
