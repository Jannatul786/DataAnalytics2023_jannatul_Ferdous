# ISLR Package (ISRL 7th Eidtion Textbook )
# KMeans example with Iris dataset
# KMeans is an Unsupervised technique 
library(ISLR)
head(iris)
str(iris)
# visually inspecting the three factors: Species clusters with a plot
plot1 <- ggplot(iris, aes(Petal.Length, Petal.Width, color=Species))
print(plot1+geom_point(size=3))

# set seed for the random numbers
set.seed(101)
help("kmeans")

# Applying K-means algorithm
iClusters <- kmeans(iris[,1:4], 3, nstart = 20) # nstart is the number of random start
print(iClusters)
#Table function (table())in R performs a tabulation of categorical variable and 
#gives its frequency as output
table(iClusters$cluster, iris$Species)

# plotting the clusters
library(cluster)
help("clusplot")
#The clusplot() function is typically used to visualize clusters in multivariate data.
#The labels and lines arguments control the display of labels and lines on the plot.
clusplot(iris, iClusters$cluster, color = TRUE, shade = TRUE, labels = 0,lines = 0)
