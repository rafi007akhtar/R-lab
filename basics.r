# ZERO: Import dependencies
library(dslabs)
data(na_example)

# ONE: Print a quadratic eqn., and show its solutions
a = 3
b = 5
c = 2

print("The quadratic equation is:")
paste(a, "x^2 + ", b, "x + ", c)

root1 = (-b + sqrt(b^2 - 4*a*c)) / (2*a)
root2 = (-b - sqrt(b^2 - 4*a*c)) / (2*a)

paste("Solutions:", root1, root2)

print("---------") # endling line


# TWO: Sum of first n natural numbers
n <- 100 # NOTE: alternative assignment operator (<-)
sum = n*(n+1)/2
paste("Sum of first", n, "natural numbers:", sum)

print("---------") # endling line


# THREE: Class (datatypes) of objects (variables)
class(n) # returns the class of object n ("numeric" in this case)
class("this is a string")
class(5 == 3) # logicals

print("---------") # endling line


# FOUR: Work with sequences
seq = c(1, 2, 3, 4) # creates a sequence (array) containing these values
seq 
class(seq)
seq = c(1, "a", FALSE)
seq
class(seq) # character, as non-characters gets casted into characters

my_landline = c(0,3,3,2,2,8,4,4,2,9,8)
table(my_landline) # prints the freqeuency of each entry in a sequence
seq = c('e','x','a','g','a','r','r','a','t','i','o','n')
table(seq)
class(seq)

print("---------") # endling line


# FIVE: Work with sequences (2)
s1 = seq(1,10) # creates a sequence 1,2,3,...,10
s2 = 1:10 # does the same as above
s3 = c(1,2,3,4,5,6,7,8,9,10) # same as the above two
s1
s2
s3
paste("s1 == s2:", identical(s1,s2)) # TRUE as both are numeric sequences
paste("s2 == s3:", identical(s3,s2)) # FALSE as s3 is possible to contain character in it
paste("s3 == s1:", identical(s1,s3)) # FALSE, same reason

s1 = seq(1,20,2) # sequence from 1 no more than 20 incrementing by 2 each time
s1

s2 = seq(0, 100, length.out = 5) # length of s2 should be 5 and it should evenly occupy elements 1 through 100, that is, elements should be incremented by the same amount
s2 # (1, 25, 50, 75, 100)

print("---------") # endling line


# SIX: Work with sequences (3)
alter_egos = c("Batman", "Superman", "Wonder Woman")
personas = c("Bruce Wayne", "Clark Kent", "Diana Prince")
# assign persona names to alter egos, thus creating a table with personas as columns and alter_egos as values
names(alter_egos) <- personas
alter_egos

# another way to do this is by assigning names=values while sequence creation itself
alter_egos_new = c("Steve Rogers" = "Captain America", "Tony Stark" = "Ironman", Wanda = "Scarlet Witch", Vision = "Vision")
alter_egos_new

# access elements from the vector
paste("Second element:", alter_egos_new[2]) # Ironman (access one element)
paste("Elements one and three:", alter_egos_new[c(1,3)]) # Captain America, Scarlet Witch (grab two elements using multi-element vector)
print("Elements 2 through 4:")
alter_egos_new[2:4] # use sequence of nums to access the elements
print("Elements 1 through 3")
alter_egos_new[seq(1,3)]
paste("Bruce Wayne:", alter_egos["Bruce Wayne"]) # finally, access using names

print("---------") # endling line


# SEVEN: Remove NA's from a dataset
print("First 50 entries before NA-cleaning")
print(na_example[1:50])

# now perform the cleaning
na_index = is.na(na_example) # returns TRUE if NA present; FALSE otherwise
na_example_cleaned = na_example[!na_index] # values without NA's
print("First 50 entries after NA-cleaning")
print(na_example_cleaned[1:50]) # return the first 6 entries of those values that are not NA

print("---------") # endling line


# EIGHT: Logicals
# they perform on number as well as vectors
num1 = 12
num2 = 0
num3 = 15
vec = c(1, 2, 3)
print("Some logical operations on numbers")
paste(num1, "&", num2, "=", num1&num2)
paste(num2, "|", num3, "=", num3|num2)
paste("!", num2, "=", !num2)
print("Some logical operations on vectors")
res = c("1 2 3 < 2 = ", vec < 2) # a logical operation on vector gets applied to all items of the vector
print(res)

vec = c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE)
c(which(vec), "of vec are true") # return the indices in vec where it is TRUE (1,4)
# other logical operations: <=, >, >=, ==, !=

