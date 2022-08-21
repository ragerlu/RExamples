#The purpose of the geom_dotplot.R file is to provide examples of bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_dotplot.html

library(tidyverse)

geo <- ggplot(mpg, aes(x = class))
geo <- ggplot(mtcars, aes(x = mpg))

#basic
geo + geom_dotplot()

#bin size. 
geo + geom_dotplot(binwidth = .5)
geo + geom_dotplot(binwidth = 1)
geo + geom_dotplot(binwidth = 1.5)
geo + geom_dotplot(binwidth = 2)

#method
geo + geom_dotplot(method = "histodot")
geo + geom_dotplot(method = "histodot", binwidth = .2)

#stack direction
geo + geom_dotplot(stackdir = "center")
geo + geom_dotplot(stackdir = "up")
geo + geom_dotplot(stackdir = "down")
geo + geom_dotplot(stackdir = "centerwhole")

#dot size
geo + geom_dotplot(dotsize = .5)
geo + geom_dotplot(dotsize = 1.5)
geo + geom_dotplot(dotsize = 2.5)

#fill dot with a color.
geo + geom_dotplot(dotsize = .5, fill = "white")

#Example with group fill with stack.
geo <- ggplot(mtcars, aes(x = mpg, fill = factor(cyl)))
geo + geom_dotplot(stackgroups = TRUE, dotsize = .5)
