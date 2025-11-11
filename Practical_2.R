#Practical 2

#Exercise Question

# 1. Import the airquality dataset and check its structure using str()

data(airquality)

str(airquality)

# 2. Find the number of missing values in airquality

sum(is.na(airquality$Ozone))

# 3. Use summary() on the mtcars dataset and interpret the output

summary(mtcars)

# Interpretation
# we can say that the fist 25% mpg avg is 15.43 in the dataset mtcars

# 4. Find the mean horsepower (hp) in the mtcars dataset

mean(mtcars$hp)

# 5. Group the iris dataset by species and calculate the average Sepal.Width

aggregate(Sepal.Width ~ Species, iris, mean)

