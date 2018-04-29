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


