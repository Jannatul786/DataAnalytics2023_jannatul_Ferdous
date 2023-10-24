# Normality Tests
# Normal Distribution 
# Normal Distribution function "rnorm"
help("rnorm")
# rnorm(n, mean = 0, sd = 1)
set.seed(10)
data1 <- rnorm(50)
data1

set.seed(30)
data2 <- rnorm(50)
data2

# Shapiro-Wilk Normality Test
help("shapiro.test")
# As the test returns the p-values 0.05, we reject the null hypothesis and
# conclude that population data is not normally distributed.
s_test1 <- shapiro.test(data1)
s_test1
#interpretetion
if(s_test1$p.value < 0.05){
  print("Since the data value is less than 0.05, we reject the null hypothesis and conclude that the population data is not normally distributed.")
}else{
  print("Since the data value is not less than 0.05, we assume that the sample value comes from population that is normally distributed.hence, we fail to reject the null hypothesis.")
}
hist(data1, col = "green")

s_test2 <- shapiro.test(data2)
s_test2
#interpretetion
if(s_test2$p.value < 0.05){
  print("Since the data value is less than 0.05, we reject the null hypothesis and conclude that the population data is not normally distributed.")
}else{
  print("Since the data value is not less than 0.05, we assume that the sample value comes from population that is normally distributed.hence, we fail to reject the null hypothesis.")
}
hist(data2, col = "steelblue")

set.seed(0)
data <- rnorm(100)
s_test <- shapiro.test(data)
if(s_test$p.value < 0.05){
  print("Since the data value is less than 0.05, we reject the null hypothesis and conclude that the population data is not normally distributed.")
}else{
  print("Since the data value is not less than 0.05, we assume that the sample value comes from population that is normally distributed.hence, we fail to reject the null hypothesis.")
}

set.seed(0)
help("rpois")
data <- rpois(n =100, lambda = 3)
s_test <- shapiro.test(data)
if(s_test$p.value < 0.05){
  print("Since the data value is less than 0.05, we reject the null hypothesis and conclude that the population data is not normally distributed.")
}else{
  print("Since the data value is not less than 0.05, we assume that the sample value comes from population that is normally distributed.hence, we fail to reject the null hypothesis.")
}
hist(data, col ='yellow')

# Anderson-Darling test
help("ad.test")
library(nortest)
set.seed(1)
x <- rnorm(100, 0, 1)
ad_test <- ad.test(x)
#interpretetion
if(ad_test$p.value < 0.05){
  print("Since the data value is less than 0.05, we reject the null hypothesis and conclude that the population data is not normally distributed.")
}else{
  print("Since the data value is not less than 0.05, we assume that the sample value comes from population that is normally distributed.hence, we fail to reject the null hypothesis.")
}

# uniform distribution
set.seed(1)
help("runif")
x <- runif(100, 0, 1)
ad_test <- ad.test(x)
#interpretetion
if(ad_test$p.value < 0.05){
  print("Since the data value is less than 0.05, we reject the null hypothesis and conclude that the population data is not normally distributed.")
}else{
  print("Since the data value is not less than 0.05, we assume that the sample value comes from population that is normally distributed.hence, we fail to reject the null hypothesis.")
}


