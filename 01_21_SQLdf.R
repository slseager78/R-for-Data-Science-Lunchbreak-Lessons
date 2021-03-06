# link to LinkedIn Lesson: https://linkedin-learning.pxf.io/rweekly_sqldf
# Description: Example file for SQLdf

# main idea: crossover between R data.frames and SQL

# get some data to play with
data("ChickWeight")


# Set up SQLdf -----------------------------------------------------------

# import necessary libraries
install.packages("sqldf")

library(sqldf)

# let's say:
# I wanted the median weight of all chicks
# ... AND I know SQL

# sqldf allows us to run an SQL call against a data.frame 
sqldf("Select Chick, median(weight) 
      from ChickWeight 
      group by Chick 
      order by cast(Chick as int)")

# documentation -----------------------------------------------------------
browseURL("https://cran.r-project.org/web/packages/RSQLite/RSQLite.pdf")
