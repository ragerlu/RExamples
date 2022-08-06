#The purpose of the r-code-for-loops.R file is to provide examples of for loops in R code language. 
#The lines of code below can be typed into an R Interactive Terminal to produce the desired result which is displayed in a comment line below in [].

#A for loop is used to iterate over a vector in R code.

#General template for a for loop:
#for (val in sequence)
#{
#statement
#}

#For loop examples:
#For loop which prints every integer from 1 to 10:
for (num in 10)
{
    print(num)
}
#[1]
#[2]
#[3]
#[4]
#[5]
#[6]
#[7]
#[8]
#[9]
#[10]

#For loop which counts and prints count:
count = 0
for ("a" in ["a", "a", "b", "a", "c"])
{
    count = count + 1
}
print(count)
#[3]