#The purpose of the geom_col.R file is to provide examples of bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_bar.html

library(tidyverse)

geo <- ggplot(mpg, aes(x = displ, y = hwy))
geo + geom_col()

geo + geom_col(aes(weight = displ))
geo + geom_col(aes(weight = hwy))

geo + geom_col(aes(fill = drv))

ggplot(mpg, aes(x = class, y = hwy)) +
    geom_col(aes(fill = drv)) +
    theme(legend.position = "top")
