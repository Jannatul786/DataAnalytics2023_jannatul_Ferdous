library(rpart)
library(rpart.plot) # for rpart plot
library(cluster)    # for hclust 
library(partykit)   # for ctree

# Load the data
data(Titanic)
Titanic
# Check rows and columns
dim(Titanic)
# Check the structure of the dataset
str(Titanic)
# Print first 6rows of the dataset
head(Titanic)

# Convert the table to a data frame
Titanic_df <- as.data.frame(as.table(Titanic))

# Check the dimensions and structure of the Titanic data frame
dim(Titanic_df)
str(Titanic_df)

# Convert the 'Freq' column to numeric (optional)
Titanic_df$Freq <- as.numeric(Titanic_df$Freq)

# creating a sample from the Titanic dataset
set.seed(300)  # Set seed for reproducibility
help("sample")
# Create a sample index for training (70%) and testing (30%)
s_Titanic <- sample(1:nrow(Titanic_df), 0.7 * nrow(Titanic_df))
s_Titanic

# create testing and training sets
Titanic_train <- Titanic_df[s_Titanic, ] 
Titanic_test <- Titanic_df[-s_Titanic, ] 

dim(Titanic_train)
dim(Titanic_test)

# Generate the decision tree model
decisionTreeModel <- rpart(Survived~., Titanic_train, method = "class")
decisionTreeModel
#plotting the decision tree model using rpart.plot() function
rpart.plot(decisionTreeModel)

# Generate the decision tree model using ctree
decisionTreeModel_ctree <- ctree(Survived ~ ., data = Titanic_train)
decisionTreeModel_ctree
# plotting the decision tree model from ctree
plot(decisionTreeModel_ctree)









