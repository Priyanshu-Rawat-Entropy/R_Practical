# Variables & Data Types 
# 
# 1. Create variables to store:
#   - Your name (character)

name<-"Entropy_AGO"
name

# - Your age (numeric)

age<-20
age

# - Whether you are a student (logical)

is_student<-TRUE
is_student

# 2. Create a vector containing the numbers 1 to 10.

numbers<- 1:10:6
numbers

# 3. Create a sequence from 5 to 50 with a step size of 5.

seq_vect<- seq(5,50,5)
seq_vect

# 4. Store the names of 5 fruits in a character vector and display the second and fourth fruit.

fruits<-c("banana","apple","pineapple","cherry","tangerine")
fruits[c(2,4)]

# 5. Create a numeric vector of 10 random numbers between 1 and 100, then find:

random_num<-sample(1:100,10)

#   1. Maximum value

max(random_num)

# 2. Minimum value

min(random_num)

# 3. Mean

mean(random_num)

# 6. Create a data frame with columns: Name, Age, Marks. Enter at least 5 records.

student<-data.frame(
  Name<-c("A","B","C","D","E"),
  Age<-c(20,19,19,20,20),
  Marks<-c(95,78,89,90,98)
)

# 7. Write code to sort the data frame by Marks in descending order.

student[order(student$Marks....c.95..78..89..90..98.),]

#   Operators in R#   Operators in R#   Operators in R
# 
# 1. Perform the following operations:
#   1. 10 + 5

10+5 

# 2. 10 - 5

10-5

# 3. 10 * 5

10*5

# 4. 10 / 5

10/5

# 5. 10 %% 3

10%%3

# 6. 10 %/% 3

10%/%3

# 2. Compare if 15 is greater than 10, and if 7 is equal to 7.

15>10
7==7

# 3. Create two vectors:
#   1. a <- c(2, 4, 6, 8)

a <- c(2, 4, 6, 8)

# 2. b <- c(1, 3, 5, 7)

b <- c(1, 3, 5, 7)

# Perform:
#   1. Addition

a+b

# 2. Subtraction

a-b

# 3. Element-wise multiplication

a*b

# 4. Use logical operators to check:
#   1. Which elements of a are greater than 5?

a[which(a>5)]

#   2. Which elements of b are less than or equal to 4?

b[which(b<=4)]

#   5. Use %in% to check if the number 5 exists in vector a.

5 %in% a

# 6. Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply:
x <- c(TRUE, FALSE, TRUE, FALSE)
y <- c(TRUE, TRUE, FALSE, FALSE)

#   1. &

x&y

#   2. |

x|y

#   3. !

!x
!y

#   Loops in R
# 
# 1. Write a for loop to print numbers from 1 to 10.

for(i in 1:10){
  cat(i ,"\n")
}

# 2. Write a while loop to sum numbers from 1 to 100.

while(i<=100){
  cat(i,"\n")
  i<-i+1
}

# 3. Write a loop to print only even numbers between 1 and 50.


for(i in 1:50){
  if(i%%2==0){
    cat(i,"\n")
  }
}

# 4. Write a loop to print the multiplication table of 7.

for(i in 1:10){
    cat(7,"X",i,"=",i*7,"\n")}

# 5. Create a loop to calculate the factorial of a given number n.

num<-readline("Enter the number : ")
fact<-1
for(i in 2:num){
  fact<-fact*i
}
cat("factorial of ",num," is ", fact )

# 6. Write a nested loop to print a star pattern:
#   ```
#   *
#   **
#   ***
#   ****
#   ```
for(i in 1:4){
  for(i in 1:i){
    cat("*")
  }
  cat("\n")
} 


#   Conditionals in R
# 
# 1. Write an if statement to check if a number is positive or negative.

num <- as.numeric(readline("Enter a number: "))

if (num > 0) {
  print("Number is positive")
} else if (num < 0) {
  print("Number is negative")
} else {
  print("Number is zero")
}

# 2. Write an if-else statement to check if a given number is even or odd.

install.packages("glue")  
library(glue)

number<-as.integer(readline("Enter a number : "))

glue(ifelse(number%%2==0,"{number} is a even number ", "{number} is a odd number "))

# 3. Write a program to check if a given year is a leap year.

year <- as.integer(readline("Enter a year: "))

if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  glue( "{year} is a leap year.\n")
} else {
  glue( "{year} is not a leap year.\n")
}


# 4. Take a numeric input for marks and print:
#   1. “Pass” if marks >= 40
# 2. “Fail” otherwise

marks<-as.integer(readline("Enter your score : "))
glue(ifelse(marks>=40,"Pass","Fail"))

# 5. Using nested if-else, assign grades:
#   1. Marks >= 90 → A
# 2. 75–89 → B
# 3. 60–74 → C
# 4. <60 → Fail

marks <- as.integer(readline( "Enter marks: "))

if (marks >= 90) {
  cat("Grade: A\n")
} else if (marks >= 75) {
  cat("Grade: B\n")
} else if (marks >= 60) {
  cat("Grade: C\n")
} else {
  cat("Grade: Fail\n")
}

#   Functions in R
# 
# 1. Write a function add_numbers(a, b) to return the sum of two numbers.


add_numbers <- function(a, b) {
  return(a + b)
}

glue("The sum is: {add_numbers(2, 4)}")


# 2. Write a function square(n) to return the square of a number.

square <- function(n) {
  return(n^2)
}

glue("The square is: {square(2)}")

# 3. Write a function to calculate the factorial of a number using recursion.

fact <- function(n) {
  if(n==0 || n==1){
    return(1)
  }else{
    return(n*fact(n-1))
  }
}

glue("The factorial is: {fact(5)}")

# 4. Write a function to check if a number is prime.

# 4. Write a function to check if a number is prime.

is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  } else if (n == 2) {
    return(TRUE)
  } else {
    for (i in 2:sqrt(n)) {
      if (n %% i == 0) {
        return(FALSE)
      }
    }
    return(TRUE)
  }
}


if (is_prime(10)) {
  cat( " a prime number.\n")
} else {
  cat(" not a prime number.\n")
}


# 5. Write a function that takes a vector and returns:
#   1. Mean
# 2. Median
# 3. Standard Deviation

analyze_vector <- function(v) {
  mean_val <- mean(v)
  median_val <- median(v)
  sd_val <- sd(v)
  

  return(list(
    Mean = mean_val,
    Median = median_val,
    Standard_Deviation = sd_val
  ))
}


numbers <- c(10, 12, 67,34, 101)
print(analyze_vector(numbers))

# 6. Write a function that accepts a data frame and a column name, and returns the top 5 highest values in that column.
# ---
#   
#   Data Analysis – Adult Census Dataset (adult-data.txt)

# 1. Load the Adult dataset into 

file<-file.choose("adult-data.txt")

data<-read.csv(file)

# 2. Display the first 10 rows.

head(data,10)

# 3. Find the structure of the dataset.

str(data)

# 4. Find the average age of all individuals.

mean(data$X39)

# 5. Count how many individuals earn >50K and how many earn <=50K.

table(data$X..50K)

# 6. Find the most common occupation.


names(sort(table(data$Adm.clerical), decreasing = TRUE))[1]

max(table((data$Adm.clerical)))


# 7. Calculate the average hours-per-week for people earning >50K vs <=50K.

tapply(data$X..50K, data$X13, mean, na.rm = TRUE)


# 8. Create a bar chart showing the distribution of education levels. 

edu_counts <- table(data$Bachelors)

barplot(edu_counts,
        main = "Distribution of Education Levels",
        xlab = "Education Level",
        ylab = "Count")


# 9. Find which native country has the highest percentage of people earning >50K.

tab <- table(data$United.States, trimws(data$X..50K) == ">50K")
true_values <- tab[, "TRUE"]
names(sort(true_values,decreasing = TRUE))[1]


#   Data Analysis – IPL Dataset (batting_bowling_ipl_bat.csv)
# 
# 1. Load the IPL dataset into R.

ipl <- read.csv("D:/R/data_set/batting_bowling_ipl_bat.csv",
                header = TRUE, strip.white = TRUE, stringsAsFactors = FALSE, na.strings = c("-", "NA", "?"))

ipl
ipl_clean<- na.omit(ipl)


# 2. Display the first 10 rows.

head(ipl_clean,10)

# 3. Find the top 5 players with the highest total runs.

total_runs <- tapply(ipl$Runs, ipl$Name,sum)
top5_runs <- sort(total_runs, decreasing = TRUE)[1:5]
top5_runs

# 4. Find the player with the highest batting average.

avg_runs <- tapply(ipl$Ave, ipl$Name, mean, na.rm = TRUE)
avg_runs
best_avg_player <- names(which.max(avg_runs))
best_avg_player
best_avg_value  <- max(avg_runs, na.rm = TRUE)
best_avg_value

# 5. Create a bar chart for the top 10 players by strike rate.

sr <- tapply(ipl$SR, ipl$Name, mean, na.rm = TRUE)
top10_sr <- sort(sr, decreasing = TRUE)[1:10]

barplot(top10_sr,
        main = "Top 10 Players by Strike Rate",
        ylab = "Strike Rate",col = "lightgreen")

# 6. Find the correlation between matches played and runs scored.

ipl_clean <- ipl[!is.na(ipl$Name) & ipl$Name != "", ]

ipl_clean$Runs  <- suppressWarnings(as.numeric(ipl_clean$Runs))
ipl_clean$Fours <- suppressWarnings(as.numeric(ipl_clean$Fours))

fours <- tapply(ipl_clean$Fours, ipl_clean$Name, sum, na.rm = TRUE)
runs  <- tapply(ipl_clean$Runs,  ipl_clean$Name, sum, na.rm = TRUE)

common_players <- intersect(names(fours), names(runs))
fours <- fours[common_players]
runs  <- runs[common_players]

correlation <- cor(fours, runs, use = "complete.obs")
cat("Correlation between Fours hit and Runs scored:", correlation, "\n")
