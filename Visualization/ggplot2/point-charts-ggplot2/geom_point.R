#The purpose of the geom_point.R file is to provide examples of
#bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_point.html

library(tidyverse)

geo <- ggplot(mpg, aes(x = displ, y = hwy))
geo + geom_point()

#basic
geo + geom_dotplot()

#stack direction
geo + geom_point(stroke = TRUE)
geo + geom_point(stroke = FALSE)

#point size
geo + geom_point(size = .5)
geo + geom_point(size = 1.5)
geo + geom_point(size = 2.5)

#fill point with a color.
geo + geom_point(size = .5, fill = "white")

#Example with group fill with stack.
geo <- ggplot(mtcars, aes(x = mpg, y = disp, fill = factor(cyl)))
geo + geom_point(stackgroups = TRUE, size = 1.5)
