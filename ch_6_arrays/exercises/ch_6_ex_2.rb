# 6.2 What will the following programs return?
# What is the value of `arr` after each?

#1. 
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
# for our example the last line is the same as arr.first.delete(1)

# first we create the array arr = ["b", "a"]
# then we combine the following two arrays
# ["b", "a"]      .product    [1, 2, 3]
# which yields the following arrays...
# [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
# the last line: arr.first.delete(arr.first.last)
# meaning look at the first array of arr and delete the following (arr.first.last)
# so look at the first array and remove the element (0, 1)

# part 1 returns => 1
# and latest value for arr will be:
# arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]


#2
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

# first we create the array arr = ["b", "a"]
# then we combine the following two arrays
# ["b", "a"]      .product    [[1, 2, 3]]
# we have square brackets around this code that we use an argument to the product method.
# it wraps the return value of generating an array of elements 1-3 into
#   an array itself.
# The sub-array has 3 elements ...the integers 1,2, and 3.
# this will yield in a returned array that is three levels deep...
# The outer array contains two elements...both of which are arrays:
# Element 1: ["b", [1, 2, 3]]   # combination of a string and another array
# Element 2: ["a", [1, 2, 3]]   # combination of a string and another array
# so this results in the new value of arr =
# [[["b", [1, 2, 3]], ["a", [1, 2, 3]]]
# then arr.first.delete will look at the very first element in the array
# i.e. [["b", [1, 2, 3]]
# and (arr.first.last) in our case will refer to the element [1, 2, 3]

# part 2 returns => [1, 2, 3]
# and latest value for arr will be:
# arr = ["b", ["a", [1, 2, 3]]]