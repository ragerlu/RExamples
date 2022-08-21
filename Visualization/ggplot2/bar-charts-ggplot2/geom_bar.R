#The purpose of the geom_bar.R file is to provide examples of bar geom visuals.

#Reference: https://ggplot2.tidyverse.org/reference/geom_bar.html

library(tidyverse)

geo <- ggplot(mpg, aes(class))
geo + geom_bar()

geo + geom_bar(aes(weight = displ))
geo + geom_bar(aes(weight = hwy))

ggplot(mpg) + geom_bar(aes(x = class))
ggplot(mpg) + geom_bar(aes(y = class))

geo + geom_bar(aes(fill = drv))

ggplot(mpg, aes(x = class)) +
    geom_bar(aes(fill = drv))
ggplot(mpg, aes(y = class)) +
    geom_bar(aes(fill = drv))

ggplot(mpg, aes(x = class)) +
    geom_bar(aes(fill = drv)) +
    theme(legend.position = "top")
