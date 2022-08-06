#The purpose of the r-code-while-loops.R file is to provide examples of while loops in R code language. 
#The lines of code below can be typed into an R Interactive Terminal to produce the desired result which is displayed in a comment line below in [].

#While loops are used to iterate until a specific condition is met.

#General template for a while loop:
#while (test_expression)
#{
#statement
#}

#While loop example:
#While loop which counts how many cars are "red" in a list called dealer_ship:
dealer_ship = ["red","blue","red"]
count = 0
for (car in dealer_ship)
{
    while (car == "red")
    {
        count = count + 1
    }
}
print(count)
#[2]

#While loop which prints "even" when a number is even:
for (num in 10)
{
    while (num%2==0)
    {
        print("even")
    }
}
#["even"]
#["even"]
#["even"]
#["even"]
#["even"]