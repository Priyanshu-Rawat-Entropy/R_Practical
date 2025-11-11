#Practical 6

#Exercise Question

# 1. Create a histogram of mpg from the mtcars dataset.

hist(mtcars$mpg,
     main = "Histogram of Miles per Gallon (mpg)",
     xlab = "Miles per Gallon",
     col = "grey")

# 2. Generate a scatterplot of hp vs wt from mtcars.

plot(mtcars$wt, mtcars$hp,
     main = "Scatterplot of Horsepower vs Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Horsepower",
     col = "red",
     pch = 20)

# 3. Draw a boxplot of Ozone values from the airquality dataset.

boxplot(airquality$Ozone,
        main = "Boxplot of Ozone Levels",
        ylab = "Ozone (ppb)",
        col = "gray",
        border = "black")
# 4. Find the correlation between Sepal.Length and Sepal.Width in iris.

correlation <- cor(iris$Sepal.Length, iris$Sepal.Width)
correlation

# 5. Create a pair plot of the first four columns of mtcars.

pairs(mtcars[, 1:4],
      main = "Pair Plot of First Four Columns in mtcars",
      col = "orange",
      pch = 19)
