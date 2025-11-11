#Practical 8

#Exercise Question

# 1. Build a regression model predicting Petal.Length from Sepal.Length in iris.

model1 <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model1)
plot(main = "Regression of Ozone on Temperature",
     xlab="Petal Length",ylab="Sepal Length",
     iris$Petal.Length,iris$Sepal.Length,pch=16)
abline(model1,col="red",lwd=4)


# 2. Create a multiple regression model predicting mpg using wt, hp, and drat in mtcars

model2 <- lm(mpg ~ wt + hp + drat, data = mtcars)
summary(model2)

# 3: Check the R² and Adjusted R² of the model in Q2

r_squared <- summary(model2)$r.squared
adj_r_squared <- summary(model2)$adj.r.squared
r_squared
adj_r_squared

# 4: Plot residuals of your regression model in Q1 and interpret the result

par(mfrow = c(2,2))
plot(model1)

# 5: Build a regression model predicting Ozone using Temp from the airquality dataset

airquality <- na.omit(airquality)
model3 <- lm(Ozone ~ Temp, data = airquality)
summary(model3)


plot(airquality$Temp, airquality$Ozone,
     main = "Regression of Ozone on Temperature",
     xlab = "Temperature", ylab = "Ozone", pch = 20, col = "blue")
abline(model3, col = "red", lwd = 2)

