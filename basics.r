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