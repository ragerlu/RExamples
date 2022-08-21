#The purpose of the geom_label.R file is to provide examples of bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_text.html

library(tidyverse)

geo <- ggplot(mpg, aes(displ, hwy, label = year))
geo + geom_label()

#basic
geo + geom_label()

#alpha
geo + geom_label(alpha = TRUE)
geo + geom_label(alpha = FALSE)

#size
geo + geom_label(size = .5)
geo + geom_label(size = 1.5)
geo + geom_label(size = 2.5)

#lineheight
geo + geom_label(size = 1.5, lineheight = .5)
geo + geom_label(size = 1.5, lineheight = 1)
geo + geom_label(size = 1.5, lineheight = 2)
geo + geom_label(size = 1.5, lineheight = 3)

#Example with group fill with stack.
geo <- ggplot(mtcars, aes(mpg, disp, label = rownames(mtcars)))
geo + geom_label(size = 3.5)
