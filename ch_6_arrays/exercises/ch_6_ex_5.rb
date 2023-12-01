# 6.5 What is the value of a, b, and c in the following program?
string = "Welcome to America!"
a = string[6]
# => e

b = string[11]
# => A

c = string[19]
# => nil
# when you ask Ruby to reference an index of a string that is beyond
#   the length of the string, Ruby returns `nil` and doesn't
#   throw an error.