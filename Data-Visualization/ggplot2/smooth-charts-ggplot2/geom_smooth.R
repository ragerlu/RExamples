#The purpose of the geom_smooth.R file is to provide examples of
#bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_smooth.html

library(tidyverse)

geo <- ggplot(mpg, aes(x = displ, y = hwy))
geo + geom_smooth()

#basic
geo + geom_smooth()

#frame weight
geo + geom_smooth(weight = TRUE)
geo + geom_smooth(weight = FALSE)

#line size
geo + geom_smooth(size = .5)
geo + geom_smooth(size = 1.5)
geo + geom_smooth(size = 2.5)

#fill point with a color.
geo + geom_smooth(size = 1.5, fill = "pink")

#Example with group fill with stack.
geo <- ggplot(mtcars, aes(x = mpg, y = disp, fill = factor(cyl)))
geo + geom_smooth(orientation = "y", size = 1.5)
