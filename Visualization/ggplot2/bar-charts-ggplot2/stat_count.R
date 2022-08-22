#The purpose of the stat_count.R file is to provide examples of
#bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_bar.html

library(tidyverse)

geo <- ggplot(mpg, aes(x = displ))
geo + stat_count()

geo + stat_count(aes(weight = displ))
geo + stat_count(aes(weight = hwy))

geo + stat_count(aes(fill = drv))

ggplot(mpg, aes(x = class)) +
    stat_count(aes(fill = drv)) +
    theme(legend.position = "top")
