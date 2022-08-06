#The purpose of the r-code-functions.R file is to provide examples of functions in R code language. 
#The lines of code below can be typed into an R Interactive Terminal to produce the desired result which is displayed in a comment line below in [].

# A function is used to break our code into simpler parts which become easy to maintain 
#and understand.

#General template for a function:
#func_name <- function (argument) {
#statement
#}

#Function examples:
#Sum function:
a=2
b=2
sum_function <- function(a, b){
    a+b
}
print(sum_function())
#[4]

#Truth function:
truth_function <- function(){
    user_input = bool(readline())
    if user_input == true {
        print(true)
    }
    else{
        print(false)
    }
}
truth_function()
# user inputs true then [true].