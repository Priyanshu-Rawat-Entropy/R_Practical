#Practical 5

#Exercise Question


# 1. Perform binning on Sepal.Length from iris into categories: Short, Medium, Long.

iris$Sepal.Length_category <- cut(iris$Sepal.Length,
  breaks=3,
  labels=c("Short","Medium","Long")
)

table(iris$Sepal.Length_category)

head(iris)

View(iris)


# 2. Convert Species column in iris into dummy variables (One-Hot Encoding).


iris_dummy <- model.matrix(~ Species-1 , data = iris)

head(iris_dummy)

# 3. Normalize the mpg column in mtcars dataset.

mtcars$mpg_normalized <- (mtcars$mpg - min(mtcars$mpg)) / 
  (max(mtcars$mpg) - min(mtcars$mpg))

View(mtcars)

mtcars[,c("mpg","mpg_normalized")]

# 4. Standardize the Sepal.Width column in iris.

iris$Sepal.Width_Standardized <- (iris$Sepal.Width - mean(iris$Sepal.Width)) /
  sd(iris$Sepal.Width)


head(iris[, c("Sepal.Width", "Sepal.Width.Standardized")])

# 5. Create a new feature in mtcars: efficiency = mpg / hp.

mtcars$efficiency <- mtcars$mpg / mtcars$hp

View(mtcars)


