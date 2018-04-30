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

# Print the regions class
regions = murders$region 
class(regions) # FACTOR -- used to store categorical data

# Sort the total murders in ascending order
totals = murders$total
print("Total murders")
totals
print("Sorted murders")
sort(totals)

# Display the state names according to their total murders in ascending order
orders = order(totals) # returns the multivalued index vector required to sort the integers
states = murders$state[orders] # access the state column in murders, and index them as per their total murders order
print("States from lowest murder rate till highest")
print(states)


