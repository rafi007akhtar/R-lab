# Explore the murders dataset in dslabs package

# Load the "murders" dataset from dslabs package
library(dslabs)
data(murders)

# murders # display the entire dataset in table-form

paste("The murders dataset is of the class", class(murders), "with the following structure.")

# Display its strucutre
str(murders)

# Show the first 6 entries of this dataset
head(murders)

regions = murders$region 
class(regions) # factor -- used to store categorical data