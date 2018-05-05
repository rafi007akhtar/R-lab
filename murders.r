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
states = murders$state[orders] # access the state column in murders, and index them as per their total murders order. Also: VECTORS CAN BE INDEXED WITH LOGICALS!
print("States from lowest murder rate till highest")
print(states)

# Create a sub-table (data-frame) from the murders table with state names and their total murders in ascending order
sub_murders = data.frame(state_name = states, total_murders = totals[orders])
head(sub_murders) # display the first 6 entries
tail(sub_murders) # display the last 6 entries

# ANALYSIS BEGINS HERE
# MURDER RATE: Number of murders per capita, that is per 100000 people of population
pops = murders$population
murder_rate = (totals / pops) * 100000
print("State names are per their murder rates in descending order")
states = murders$state
states[order(murder_rate, decreasing=TRUE)] # print the state names in the order of their murder rates in decreasing order

# Print those states whose murder rates are less than 1
test_cond = murder_rate < 1
print("States with low murder rates")
states [test_cond]

# Find the indices of Nevada, Maine and Kansas using match(...), and then find their murder rates
reqd_states = c("Nevada", "Maine", "Kansas")
ind = match(reqd_states, states) # returns the indices of the first parameter present in the second parameter
data.frame(state = reqd_states, "murder rate" = murder_rate[ind])

# Check if Vermont, California and Dakota are present in the state attributes, using %in%
reqd_states = c("Vermont", "California", "Dakota")
ind = reqd_states %in% states
paste("Present for", reqd_states[ind])
paste("Absent for", reqd_states[!ind])

# Data-wrangling -- will need dplyr package for that
library(dplyr) # NOTE: Be sure to install this package via install.packages("dplyr") from the console

# Add the murder_rate column to the murders dataset using dplyr's mutate
murders = mutate(murders, rate = murder_rate)

# Select those tuples from the new murders dataset that have a murder rate less than or equal to 0.75, using dplyr's filter
filter(murders, rate <= 0.75)

# Make a new table from murders dataset with state, population and rate columns, using dplyr's select
new_table = select(murders, state, population, rate)
head(new_table)

# From the murders dataset, select state, population and total, and print the tuples with rate <= 0.71, in one line 
murders %>% select(state, population, rate) %>% filter(rate <= 0.71)
