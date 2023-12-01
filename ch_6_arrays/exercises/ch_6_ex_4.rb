# 6.4 What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 6.4.1
arr.index(5)
# => 3
# here 5 is sent as a parameter through the method index
# it searched for the number 5 and returned the given index of that number
#   in the given array...position 4 so 0, 1, 2, 3


# 6.4.2
arr.index[5]
# => undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError


# 6.4.3
arr[5]
# => 8
# this gives you the 5th element in this array...so position 0, 1, 2, 3, 4