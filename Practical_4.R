#Practical 4

#Exercise Question

# 1. Calculate the mean, median, mode, and standard deviation of Petal.Width from iris.

mean(iris$Petal.Width)
median(iris$Petal.Width)
mode<-names(sort(table(iris$Petal.Width),decreasing = TRUE))[1]
print(mode)
sd(iris$Petal.Width)

# 2. Draw a histogram of mpg from the mtcars dataset.

hist(mtcars$mpg,
     main= "Histogram of MPG" ,
     xlab="mpg",
     col="red")

# 3. Create a scatterplot of hp vs mpg from mtcars.

plot(mtcars$hp,mtcars$mpg,
     main="Scatterplot for hp and mpg ",
     xlab="hp",
     ylab="mpg",
     col="red",
     pch=18
     )

# 4. Generate a boxplot for Ozone in the airquality dataset.

boxplot(airquality$Ozone,
        main="Boxplot for Ozone",
        ylab="Ozone",
        col="red"
        )

# 5. Find the variance of Sepal.Width in the iris dataset.

var(iris$Sepal.Width)

