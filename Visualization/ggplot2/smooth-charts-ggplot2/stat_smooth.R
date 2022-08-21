#The purpose of the geom_smooth.R file is to provide examples of bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_smooth.html

library(tidyverse)

geo <- ggplot(mpg, aes(x = displ, y = hwy))
geo + stat_smooth()

#basic
geo + stat_smooth()

#frame weight
geo + stat_smooth(weight = TRUE)
geo + stat_smooth(weight = FALSE)

#line size
geo + stat_smooth(size = .5)
geo + stat_smooth(size = 1.5)
geo + stat_smooth(size = 2.5)

#fill point with a color.
geo + stat_smooth(size = 1.5, fill = "pink")

#Example with group fill with stack.
geo <- ggplot(mtcars, aes(x = mpg, y = disp, fill = factor(cyl)))
geo + stat_smooth(orientation = "y", size = 1.5)
