#data types
#numerical, character, logical
temperatures<- 4.5 #degrees in F
class(temperatures)
RPI <- "Rensslear Polytechnic Institute"
class(RPI)
pi <- 3.14159265359
class(pi)
isSnowing <- FALSE
class(isSnowing)
R <- FALSE
class(R)


#Vectors
num_vec <- c(1,3,5,99)
class(num_vec)

char_vec <- c("R", "P", "I")
class(char_vec)

bool_vec <- c(T, FALSE, F) 
class(bool_vec)
# mixed variable types
vec_mixed <- c("RPI", 3.5, 18)
vec_mixed
class(vec_mixed)# Note: the 1824 and 3.14 are converted to characters

vec_mixed_bool <- c("RPI", T, 3.5, 18, F)
vec_mixed_bool
class(vec_mixed_bool)

vec_numeric_bool <- c(3.5, 18, TRUE)
vec_numeric_bool
class(vec_numeric_bool)

temperature <- c(80,81.3,83,84.2,82.5)
names(temperature) <- c("Mon", "Tue", "Wed", "Thur", "Fri")
temperature
#OR, the same thing doing this
week_days <- c("Mon", "Tue", "Wed", "Thur", "Fri")
names(temperature) <- week_days
temperature

# Indexing Vectors 
# indexing in R starts with 1, in python programming language indexing start with 0.
vec1 <- c("R","P", "I")
vec2 <- c(1,8,2,4)
vec1[1]
vec2[2]

# Matrix 
m <- c(1:10)
m
matrix(m, nrow = 2)
matrix(1:12, byrow = FALSE, nrow = 4)
matrix(1.12, byrow = TRUE, nrow = 4)

# stock prices
goog <- c(560,564,563,562,561)
msft <- c(480,482,484,483,482)
stocks <- c(goog,msft)
stocks 
print(stocks)

stock.matrix <- matrix(stocks, byrow = T,nrow = 2)
stock.matrix
days <- c("Mon","Tue","Wed","Thur","Fri")
st.names <- c("goog","msft")
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
print(stock.matrix)

mat <- matrix(1:25,byrow = T, nrow = 5)
mat
mat*2
mat/2
mat^2
1/mat
mat>15
mat[mat>15]
mat+mat
mat/mat
#calculate the sum of the values in each column of a matrix or data frame in R.
colSums(stock.matrix)
#calculate the sum of each row of a numeric array, matrix, or dataframe.
rowSums(stock.matrix)
#rowMeans() finds out the mean of each row of a data frame, matrix, or array.
rowMeans(stock.matrix)

#Bind the columns
FB <- c(223,224,225,223.5,222)
tech.stocks <- rbind(stock.matrix, FB) #row bind
tech.stocks
avg <- rowMeans(tech.stocks)
avg

tech.stocks <- cbind(tech.stocks,avg) #col bind
tech.stocks
mat <- matrix(1:50, nrow = 5, byrow = T)
mat[1,] # first row with all the columns
mat[,1] # first column and all the rows
mat[1:3,]
mat[1:2, 1:3]
mat[,9:10]
mat[2:3,5:6]

#factor and categorical variables
animals <- c('dog','cat','dog','cat','cat')
id <- c(1,2,3,4,5)
temps <- c('cold','med','hot','hot','hot','cold','med')
temps
fact.temps <- factor(temps,ordered = TRUE,levels = c('cold','med','hot'))
summary(fact.temps)
summary(temps)

undergrads <- c('Freshman','Junior', 'Sophomore','Junior','Senior','Sophomore','Junior','Freshman','Senior','Junior')
undergrads
factor.undergrads <- factor(undergrads, ordered = TRUE, levels = c('Freshman','Sophomore','Junior','Senior'))
factor.undergrads

summary(factor.undergrads)

#Excercise
A <- c(1,2,3)
B <- c(4,5,6)
A <- rbind(A,B)
A

mat <- matrix(1:9,nrow =3)
mat
is.matrix(mat)
mat2 <- matrix(1:25, byrow = T, nrow = 5)
mat2
mat2[2:3,2:3]
mat2[4:5,4:5]
sum(mat2)
help("runif")
#These functions provide information about the uniform 
#distribution on the interval from min to max.
#runif generates random deviates.
u <- runif(20) 
u
runif(matrix(20))
matrix(runif(20), nrow = 4)



