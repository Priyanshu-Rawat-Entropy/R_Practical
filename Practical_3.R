#Practical 3

#Exercise Question

# 1. Count how many missing values are present in airquality

sum(is.na(airquality))

# 2. Replace missing values in Ozone with the median instead of mean

median_ozone <- median(airquality$Ozone, na.rm=TRUE)
airquality$Ozone[is.na(airquality$Ozone)] <- median_ozone

# 3. Create a duplicate dataset from mtcars and remove the duplicates

duplicate_mtcars=rbind(mtcars,mtcars)
unique(duplicate_mtcars)  

# 4. Convert all car names in mtcars row names to uppercase

rownames(mtcars)<-toupper(rownames(mtcars))

# 5. Convert the Species column in iris dataset into numeric codes (1, 2, 3)

iris$species_numaric <- as.numeric(iris$Species)
View(iris)
