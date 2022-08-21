#The purpose of the intro-ggplot2.R file is to provide examples of the basics -of ggplot2 visuals.

#First you want to ensure the package which contains ggplot2 is installed. In your commmand line you want to
#run the line 'install.packages("tidyverse")'.

#Secondly ensure the library tidyverse is referenced in this file for use. 
library(tidyverse)

#Visuals in ggplot2 use data input in the form of data frames. A data frame is a rectangular collection of 
#variables (in the columns) and observations (in the rows).                                            

#Now, within the tidyverse library there are datasets provided for use such as mpg, which has columns with names 
#displ (engine size in liters) and hwy (a car's fuel efficiency in mpg). To learn more about mpg open its help
#page by running the command '?mpg'.

#Using ggplot2 you must use the function ggplot() to begin the plot of and data. The function geom_point() adds 
#a layer of points to your plot. The mapping argument is always paired with the function aes(), and the x and y 
#arguments of aes() specify which variables to map to the x-axis and y-axis.  

#Basic plot template for ggplot2:
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy))

#AES:
#A third variable which can be added to a two-dimensional scatterplot by mapping into an aesthetic would be class. 
#One great way to convey informationa bout your data is to map the aesthetics in your plot to the variables in your 
#dataset.

ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy, color = class))

#**ggplot2 automatically assigns a unique level of the aesthetic to each unique value of the variable, which is a 
#process known as scaling. A helpful outcome of scaling is that ggplot2 also adds a legend that explains which levels 
#correspond to which values.**

#**Be careful of mapping an unordered variable to an unordered aesthetic, this can result in a visual which is illegible.**

#Alpha controls the transparency of points. 
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#Shape controls the shape of points.
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#**For the x-axis and y-axis aesthetics, ggplot2 will not create a legend, but it does creat an axis line with tick marks and
#a label. The axis line acts as a legend; it explains the mapping between locations and values. 

#FACETS:
#Facets are subplots that each display one subset of the data.
#To facet your plot on a single variable you use the facet_wrap() functions. The first argument of this functions should be a 
#data structure, which you create with ~ followed by a variable name. 
#For instance...:
ggplot(data = mpg) +
    geom_plot(mapping = aes(x = displ, y= hwy)) +
    facet_wrap(~ class, nrow = 2)

#When faceting a plot on two variables, use facet_grid(). The first argument of facet grid is a data structure, the data 
#structure should contain two variable names seperated by ~.
ggplot(data = mpg) +
    geom_plot(mapping = aes(x = displ, y= hwy)) +
    facet_grid(drv ~ cyl)

#**If you do not want to facet in the rows or columns dimension, use a . instead of a variable as the first argument 
#in facet_grid().**
ggplot(data = mpg) +
    geom_plot(mapping = aes(x = displ, y= hwy)) +
    facet_grid(. ~ cyl)

#GEOMETRIC ObJECTS:
#A geom is the geometrical object that a plut uses to represent data. Normally plots are descibed by the type of geom 
#that the plot uses. 
#**Not every aesthetic works with every geom.**
#**ggplot2 provides over 30 geoms.**
#To learn more about each geom simply use ?geom_name.

#Here are two examples of ggplot2 geoms we haven't seen yet in this file:
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y= hwy))
ggplot(data = mpg) +
    geom_smooth(mapping = aes(x = displ, y= hwy))

#By passing mappings to ggplot() you can avoid repetitin and even produce legends for specific mappings. 
#Try the two plots below and note the difference.
ggplot(data = mpg, mapping = aes(x = displ, y= hwy)) +
    geom_smooth() +
    geom_point()
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y= hwy)) +
    geom_smooth()

#COORDINATE SYSTEMS:
#The default coordinate system is the Cartesian coordinate system where the x and y position act independently
#to find the location of each point.
#**The function coord_flip() will switch the x and y axes.**
ggplot(data = mpg, mapping = aes(x = class, y= hwy)) +
    geom_boxplot() + 
    coord_flip()
#**The function coord_quickmap() sets the aspect ratio correctly for maps.**
nz <- map_data("nz")
ggplot(nz, aes(long, lat, group = group)) +
    geom_polygon(fill = "white", color = "black") + 
    coord_quickmap()
#**The function coord_polar() uses polar coordinates.**
bar <- ggplot(data = diamonds) +
    geom_bar(
        mapping = aes(x = cut, fill = cut), 
        show.legend = FALSE,
        width = 1
    ) +
    theme(aspect.ratio = 1) +
    labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()


#All information provided in this file is from [Grolemund, G., Wickham, H. (2017). R for Data Science. O'Reilly Media, Inc.]