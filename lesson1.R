# Console R Programming

## arithmetic operations (use R like a calculator)

219 + 774 #addition
912 - 1004 #subtraction
23 * 14 # multiplication
21 / 4 # division
2 ^ 6 # power
(2187 + 1144) * (12 - 4) # combination
log(60) # example of a function: log
exp(3) # example of a function: exponent
abs(-364) # example of a function: absolute
350 %% 17 # Mod, remainder after division of 2 numbers.






## variable assignments

# variable assignment

addition1 <- 219 + 774 ;

# print output to screen

print(addition1)

print(paste("Sum =", addition1))


# variable assignment

total_weight <- 45
total_area <- 10

density_measure <- total_weight / total_area

# print output to screen
density_measure


### remember, variable assignments are case-sensitive

amsterdam <- 100

Amsterdam <- 250

AMSTERDAM <- 700

amsterdam + Amsterdam - AMSTERDAM


## know your variable types

### numeric

# numeric

var1 <- 117.2; var1

class(var1)

typeof(var1)

length(var1)

# print and paste (also, paste0)

print(
  paste(
    "The variable", var1, "is a", class(var1), 
    "variable with a type", typeof(var1), 
    "and a length of", length(var1)
  )
)


### numeric: integer

# numeric: integer

var2 <- 77L; var2

class(var2)

typeof(var2)

length(var2)


### character

# character

var3 <- "A"; var3

class(var3)

typeof(var3)

length(var3)


### string

# character

var4 <- "BUS 622: Development Tooks in Business Analytics"; var4

class(var4)

typeof(var4)

length(var4)


### boolean

# boolean

var5 <- TRUE; var5

class(var5)

typeof(var5)

length(var5)

# boolean abbreviations

var5a <- T; var5a

class(var5a)

typeof(var5a)

length(var5a)


## vectors

### series of numbers: numeric vector

# vector

var6 <- c(1, 2, 3, 5, 8, 13, 21, 34, 55); var6

class(var6)

typeof(var6)

length(var6)


### series of strings: character vector

# vector

var7 <- c(
  "BUS 622: Development Tooks in Business Analytics", 
  "R Programming", 
  "Python Programming", 
  "MBA", 
  "Baldwin Wallace University"
); var7

class(var7)

typeof(var7)

length(var7)


### series of boolean values: boolean vector

# vector

var8 <- c(TRUE, FALSE, TRUE, FALSE, TRUE); var8

class(var8)

typeof(var8)

length(var8)


### more on vectors

#### vector operations

# list first 100 numbers - ascending
numList1 <- c(1:100); numList1


# perform operations on the vector
numList1 + 100
numList1 > 50


# list first 100 numbers - descending
numList2 <- c(100:1); numList2


# element-wise addition / multiplication etc.

vec1 <- c(1:10); vec1
vec2 <- c(10:1); vec2

vec1 + vec2 # addition

vec1 * vec2 # multiplication

vec2 / vec1 # division

vec1 ^ vec2 # power


#### indexing

# vector of letters
letterList1 <- LETTERS ; letterList1
letterList2 <- LETTERS[1:5] ; letterList2


# indexing
homework_scores <- c(28, 22, 21, 32, 13, 22, 40, 12, 17, 22, 18, 26, 38, 40, 40, 39, 37)

project_scores <- c(33, 28, 19, 29, 25, 17, 16, 15, 24, 12, 26, 27, 37, 40, 35, 23, 29)


# What is first element of the Homework vector?
homework_scores[1]

# What is last element of the Project Writen Report vector?
last_index <- length(project_scores)
project_scores[last_index]

# Everything except for the first element of the Project Presentation vector?
project_scores[-1]

# Second and Third Homework Scores...
homework_scores[2:3]

# Assign student names to te above score vectors #1
names(homework_scores) <- c("Alan Beaney", "Luke Driscoll", "Jesse Franklin", "Roula Gemelas", "John Haberman", "Michael Hostacky", "Seth Johnson", "Oliver Kelleher", "Mason Kooyman", "Gurleen Matharu", "Joe Meadows", "Zach Ottenweller", "Robby Palmieri", "Juliet Penrod", "Kade Swisher", "Seth Tofil", "Marley Wilder")

names(project_scores) <- c("Alan Beaney", "Luke Driscoll", "Jesse Franklin", "Roula Gemelas", "John Haberman", "Michael Hostacky", "Seth Johnson", "Oliver Kelleher", "Mason Kooyman", "Gurleen Matharu", "Joe Meadows", "Zach Ottenweller", "Robby Palmieri", "Juliet Penrod", "Kade Swisher", "Seth Tofil", "Marley Wilder")

# What is Oliver Kelleher's Homework Score?
homework_scores["Oliver Kelleher"]

# What is Zach Ottenweller's Total Score?
homework_scores["Zach Ottenweller"] + project_scores["Zach Ottenweller"]

# What is Alan Beaney's, Juliet Penrod's and Marley Wilder's Project scores?
project_scores[c("Alan Beaney", "Juliet Penrod", "Marley Wilder")]

# Who earned full Homework score?
full_hw_score <- homework_scores == 40
homework_scores[full_hw_score]

# Assign student names to te above score vectors #2
full_names <- c("Alan Beaney", "Luke Driscoll", "Jesse Franklin", "Roula Gemelas", "John Haberman", "Michael Hostacky", "Seth Johnson", "Oliver Kelleher", "Mason Kooyman", "Gurleen Matharu", "Joe Meadows", "Zach Ottenweller", "Robby Palmieri", "Juliet Penrod", "Kade Swisher", "Seth Tofil", "Marley Wilder")

names(homework_scores) <- full_names

names(project_scores) <- full_names

# What is Project score for John Haberman?
project_scores["John Haberman"]

# What is total Project score for the class?
sum(project_scores)

# ... same as 
project_scores[1] + project_scores[2] + project_scores[3] + project_scores[4] + project_scores[5] + project_scores[6] + project_scores[7] + project_scores[8] + project_scores[9] + project_scores[10] + project_scores[11] + project_scores[12] + project_scores[13]

# ... same as
project_scores["Alan Beaney"] + project_scores["Luke Driscoll"] + project_scores["Jesse Franklin"] + project_scores["Roula Gemelas"] + project_scores["John Haberman"] + project_scores["Michael Hostacky"] + project_scores["Seth Johnson"] + project_scores["Oliver Kelleher"] + project_scores["Mason Kooyman"] + project_scores["Gurleen Matharu"] + project_scores["Joe Meadows"] + project_scores["Zach Ottenweller"] + project_scores["Robby Palmieri"] + project_scores["Juliet Penrod"] + project_scores["Kade Swisher"] + project_scores["Seth Tofil"] + project_scores["Marley Wilder"]

# What is the mean, min, and max Homework Score for the class?
mean(homework_scores)

min(homework_scores)

max(homework_scores)

sd(homework_scores)

# Did the class score in the Homework or in the Project?
sum(homework_scores) > sum(project_scores)

# Did the class score in the Homework or in the Project?
# assign and fancy it
check <- sum(homework_scores) > sum(project_scores)

ifelse(
  check == TRUE,
  "Class scored more in the Homeworks than in the Project.",
  "Class scored more in the Project than in the Homeworks."
)


## relational and logical operators:

## \>, \<, ==, \<=, \>=, &, \|, !=

num1 <- 100
num2 <- 200
num3 <- 100

# greater than
num1 > num2

# less than
num1 < num2

# greater than or equal to
num1 >= num3

# less than or equal to
num3 <= num2

# equal to
num1 == num3

# not equal to
num1 != num2 # (or) !(num1 == num2)

# AND operator
num1 < num2 & num1 <= num3

# OR operator
num1 == num2 | num1 == num3

# compound operations
num1 + num3 == num2


## factor operators

# educational classification
edu_class <- c("HS", "UG", "MBA", "HS", "MBA", "UG",
               "HS", "HS", "UG", "MA", "MBA", "HS", 
               "UG", "MA", "UG", "MA", "MA", "MBA")

# convert edu_class to a factor
factor_edu_class <- factor(edu_class)
factor_edu_class

# convert edu_class to a factor with levels
factor_edu_class1 <- factor(edu_class, order = TRUE, levels = c("HS", "UG", "MA", "MBA"))
factor_edu_class1

# summary
summary(factor_edu_class1)

# is someone more qualified than another? 
factor_edu_class1[5]
factor_edu_class1[9]

factor_edu_class1[5] > factor_edu_class1[9]

## simple computations

### e.g., Celsius to Fahrenheit conversion
# Celsius to Fahrenheit conversion

tempCelsius <- 40

tempFahrenheit <- (tempCelsius * 1.8) + 32 

print(tempFahrenheit)

### e.g., Fahrenheit to Celsius conversion
# Fahrenheit to Celsius conversion

tempFahrenheit <- c(55:70)

tempCelsius <- (tempFahrenheit - 32) * 5/9 

print(tempCelsius)

### Rounding

# rounding to the nearest 2 decimal places

round(tempCelsius, digits = 2)

### Floor

# rounding to the lowest integer

floor(tempCelsius)

### Ceiling

# rounding to the highest integer

ceiling(tempCelsius)

### e.g., compute Future Value

int <- 0.08 # 8% annual rate

nterms <- 7 # number of years

amount <- 1000 # present value

# compute future value
fv <- amount * ((1 + int)^nterms); fv

# modular calculation

fv1 <- (1 + int)^nterms;

fv1 <- fv1 * amount; fv1

### e.g., compute Future Value for a vector of interest rates

int1 <- c(0.06, 0.08, 0.10, 0.12); int1 

# compute future value
fv2 <- amount * ((1 + int1)^nterms); fv2
