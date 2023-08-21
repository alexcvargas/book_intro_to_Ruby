#   Chapter 5 exercises
# 1. What does the `each` method in the following program return after
#   it's finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# putting this into irb..we see that the `each` method returns
# => [1, 2, 3, 4, 5]
# Note: each will always return the original array for the array that it was called on.