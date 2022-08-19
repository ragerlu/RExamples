#The purpose of the r-code-na.R file is to provide examples of atomic vectors and their use in the R code language. 
#The lines of code below can be typed into an R Interactive Terminal to produce the desired result which is displayed in a comment line below in [].

#The NA character in R is a special symbol which stands for "not available" and can be used as a placeholder for missing information.
#**Generally, NAs will propogate whenever you use them in an R operation or function.**

#Examples of NA in use:
1 + NA
#[NA]
1 == NA
#[NA]

#Now, if a calculation is made with even one of the values being NA, your result will be NA. To avoid this a function argument na.rm
#is provided by most functions which will cause a funcion to ignore any NAs.
#For instance...:
range1 <- c(NA, 1:10)
range1
#NA 1 2 3 4 5 6 7 8 9
#10
mean(range1)
#[NA]
mean(range1, na.rm = TRUE)
#[5.5]

#Also, there will be times when you want to locate NA values in your data. Utilizing the is.na() function will permit you to locate
#those values. 
#For instance...:
is.na(NA)
#[TRUE]
vect <- c(1, 2, NA, 4)
is.na(vect)
#[FALSE FALSE TRUE FALSE]
