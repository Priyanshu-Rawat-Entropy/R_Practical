#Practical 7

#Exercise Question

# 1. Perform a one-sample t-test to check if the mean mpg in mtcars differs from 20.

t.test(mtcars$mpg, mu = 20)

# 2. Compare Petal.Width across species in iris using ANOVA.

aov(Petal.Width ~ Species, data = iris)

# 3. Find the correlation between mpg and hp in mtcars.

cor.test(mtcars$mpg, mtcars$hp)

# 4. Perform a paired t-test on Sepal.Length and Sepal.Width in iris.

t.test(iris$Sepal.Length, iris$Sepal.Width, paired = TRUE)

# 5. Check if Ozone and Temp in airquality are significantly correlated.

aq <- na.omit(airquality[, c("Ozone", "Temp")])
cor.test(aq$Ozone, aq$Temp)

