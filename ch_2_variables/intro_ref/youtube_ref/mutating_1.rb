# mutating_1.rb
arr = [1, 2, 3, 4]
x = arr.pop

puts x == arr.pop
# the answer will be a boolean
# x = [1, 2, 3]
# arr.pop IS destructive and has already been changed to [1, 2, 3]
#   so when we compare the value of x to arr.pop
#   this will read as [1, 2, 3] == [1, 2] which is False


# => false