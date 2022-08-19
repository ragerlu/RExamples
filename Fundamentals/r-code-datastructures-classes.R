#The purpose of the r-code-datastructures.R file is to provide examples of datastructures and their use in the R code language. 
#The lines of code below can be typed into an R Interactive Terminal to produce the desired result which is displayed in a comment line below in [].

#Matrices: Stores values in a two-dimensional array just like a matrix from linear algebra. 
#To create a matrix you first need to give the function matrix an atomic vector to reorganize into a matrix. 
#**Matrix will organize your vector of values into a matrix with the specified number of rows.**
#For instance...:
die <- c(1,2,3,4,5,6)
mat <- matrix(die, nrow=2)
mat
#   [,1][,2][,3]
#[1,]1  3   5
#[2,]2  4   6
#**Matrix can be filled row by row if you include the argument byrow = TRUE.**
#For instance...:
mat <- matrix(die, nrow=2, byrow=TRUE)
mat
#   [,1][,2][,3]
#[1,]1  3   5
#[2,]2  4   6

#Arrays: The array function creates an n-dimensional array.
#**Arrays are not as customizable as matrix and basically does the same thing as setting the dim attribute. To use array, provide an atomic vector as 
#the first argument, and a vector of dimensions as the second argument, called dim.**
arr <- array(c(11:14, 21:24, 31:34), dim=c(2,2,3))
arr
# , , 1
#
#   [,1][,2]
#[1,]11 13
#[2,]12 14
#
# , , 2
#
#   [,1][,2]
#[1,]21 23
#[2,]22 24
#
# , , 3
#
#   [,1][,2]
#[1,]31 33
#[2,]32 34

#Class: A special case of an atomic vector. 
#**Changing the dimension of your object will not change the type of the object, but it will change the object's class attribute.**
#For instance...: 
dim(die) <- c(2, 3)
typeof(die)
#"double"
class(die)
#"matrix"
#**The objects class attribute will not always appear when you run attributes; you may need to specifically search for it with class.**
attributes(die)
$dim
#[1], 2, 3

#Dates and Times: R uses a special class to represent dates and times. To see this, rune Sys.time() which will return the current time
#on your computer.
#**The time given by Sys.time() looks like a character string when it is dispalyed. The data type is a double and its class is "POSIXct",
# "POSIXt".**
#For instance...:
now <- Sys.time()
now
#"2021-01-01 12:00:00 UTC"
typeof(now)
#"double"
class(now)
#"POSIXct" "POSIXt"

#Factors: Are R's way of sorting categorical information.
#**R will add a levels attribute to the integer, which contains a set of labels for displaying the factor values, and a class attribute, 
#which contains the class factor.**
#For instance...:
gender <- factor(c("female", "male", "female"))
typeof(gender)
#integer
attributes(gender)
#$levels
#[1] "female" "male"
#
#$class
#[1] "factor"
#**R will try to convert character strings to factors when you laod and create data. You can convert a factor to a character string with 
#the as.character function.**

#Coercion: R has coercion behavior, this may seem inconvenient, but it is not arbitrary.
#**R coerces a data type if a character string is present in an atomic vector, R will convert everything else in the vector to character 
#strings. If a vector only contains logicals and numbers, R will convert the logicals to numbers; every TRUE becomes a 1, and every FALSE 
#becomes a 0.**

#Lists: Are like atomic vectors because they group data into a one-dimensional set. However, lists do not group together individual values; 
#lists group together R objects, such as atomic vectors and other lists.
# For Instance...:
list1 <- list(100:110, "R", list(TRUE, FALSE))
list1
#[[1]]
#[1]100 101 102 103 104 105 106 107 108 109
#[2]110
#
#[[2]]
#[1] "R"

#Data Frames: A two dimensional version of a list.
#**R supplies users with the data.frame funcion which given any number of vectors, each 
#seperated with a comma the function will turn each vector into a column of the new data frame.**
df<- data.frame(face=c("ace", "two", "three"), 
    suit=c("hearts", "hearts", "hearts"), value=c(1,2,3))
df
#face  suit value
#ace   hearts 1
#two   hearts 2
#three hearts 3

#**Each data frame is a list with class data.frame.**
#**R will save character strings as factors, to prevent this behavior the argument stringAsFactors = FALSE to data.frame.**
#Such as...:
df<- data.frame(face=c("ace", "two", "three"), 
    suit=c("hearts", "hearts", "hearts"), value=c(1,2,3), 
    stringsAsFactors = FALSE)