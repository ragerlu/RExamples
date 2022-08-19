#The purpose of the r-code-atomic-vectors.R file is to provide examples of atomic vectors and their use in the R code language. 
#The lines of code below can be typed into an R Interactive Terminal to produce the desired result which is displayed in a comment line below in [].
#**A note on Attributes: An attribute is a piece of information that you can attach to an atomic vector or object in R. You can see which attributes
#an object has with attributes. attributes will return NULL if an object has no attributes.**

#Atomic Vector: Simple vector of data.
#Such as...:
die <- c(1,2,3,4,5,6)
die
#[1 2 3 4 5 6]
is.vector(die)
#[True]

#Each atomic vector stores its values as a one-dimensional vector, and each atomic vector can only store one type of data.

#R recognizes six basic types of atomic vectors: doubles, integers, characters, logicals, complex, and raw. 

#R will do math with vectors that contain numbers and not with vectors that contain character strings. 
#For instance...:
integ <-  c(1L, 3L)
charac <- c("string1", "string2")
sum(integ)
#[4]
sum(charac)
#[Error in sum(charac) : invalid 'type' (character) of argument]

#Doubles: Stores regular numbers which can be positive or negative, large or small,  and have digits to the right of the 
#decimal place or not.
#**Generally, R will save any numbers that you type in R as a double.**
#**R functions refer to doubles as "numerics".**
#For instance...:
die2 <- c(1,2,3,4,5,6)
die2
#[1 2 3 4 5 6]
typeof(die2)
#["double"]

#Integers: Stores numbers that can be written without a decimal component. 
#R allows you to specifically  create an integer by typing a number followed by an uppercase L.
#R will not save a number as an integer unless you include the L. Integer numbers without the L will be saved as doubles.  
#For instance...:
integ2 <- c(2L, -4L, -6L, 7L)
integ2
#[2 -4 -6 7]

#Characters: Stores small pieces of text. 
#**The individual elemnts of a character vector are known as strings. A string can contain more than just letters. You can 
#assemble a character string from numbers or symbols as well.**
text2 <- c("hello", "user")
text2
#["hello" "user"]
typeof(text2)
#"character"

#Logicals: Stores TRUEs and FALSEs. 
#**R assumes that T and F are shorthand for TRUE and FALSE.**
#For instance...:
logicV <- c(TRUE, TRUE, FALSE)
logicV
#TRUE TRUE FALSE
typeof(logicV)
#["logical"]
typeof(T)
#["logical"]

#Complex and Raw: Doubles, integers, characters, and logicals are the most common types of atomic vectors in R, 
#but R also recognizes two more types: complex and raw.
#**To create a complex vector, add an imaginary term to a number with i.**
#For instance...:
compl <- c(1 + 1i, 1 + 2i)
compl
#[1+1i,1+2i]
typeof(compl)
#["complex"]
raw(4)
#[00 00 00 00]
typeof(raw(4))
#["raw"]
