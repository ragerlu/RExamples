#The purpose of the r-code-library-package.R file is to provide examples on
#installing packages and libraries in the R code language. The lines of
#code below can be typed into an R Interactive Terminal to produce the desired
#result which is displayed in a comment line below in [].
#**Packages are the collection of functions, data and compiled code. Libraries
#are the location where those packages are stored.**

#Packages: A package is an extension to the R statistical programming language
#which contain code, data, and documentation in a standardised collection
#format that can be installed by users of R, normally through the CRAN.

#Package Install through command line:
install.packages("ggplot2")

#Libraries: A library is the location where the packages are stored.
#To use a library you must first install its respective package.

#Library use in an R file:
library("ggplot2")