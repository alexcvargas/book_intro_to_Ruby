#   Chapter 6 Exercises:
# 6.1 Below we have given you an array and a number.
#   Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

=begin
arr.include?(3)
# => true
=end

=begin
arr.each do |num|
  if num == number
    puts "the number 3 is included in the array"
  else
    puts "the number 3 is not included in the array"
  
  end
end
=end

if arr.include?(number)
  puts "the number #{number} is included in the array"
else
  puts "the number #{number} is not included in the array"
end

# => the number 3 is included in the array

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




# 6.3 How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]


#b = arr.select { |ex| ex == ["example", "mem"] }
# this is incomplete because it only returns the last array
# the following two are just hard coded methods to just complete the task with
#   no flexibility if the "example" were to move positions within the array.

arr.last.first
arr[1][0]





# 6.4 What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 6.4.1
arr.index(5)
# => 3
# the index method is going to return the index of the first object
#   in the array that is equal to the argument
#   in our case we have passed in the argument 5


# 6.4.2
arr.index[5]
# => undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError


# 6.4.3
arr[5]
# => 8
# this gives you the 5th element in this array...so position 0, 1, 2, 3, 4



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




# 6.6 You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] =  'jody'

# and get the following error message:
=begin


TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
  
  
=end

# What is the problem and how can it be fixed?
# We get this error because because we are passing
#   ['margaret'] (an element of the 'names' array)
#   instead of an index of that element in the given array.
# When we use array element reference or element assignment, 
#   we need to place the index of the element in square brackets 
#   and not the element itself.


# What we can do to achieve the intended result is to type the following:
names[3] = 'jody'

# this will change the position 3 element in the array to be changed to the string 'jody'




# 6.7 Use the 'each_with_index' method to iterate through an array of your
#   creation that prints each index and value of the array.

alphabet = ["Aa", "Bb", "Cc", "Dd", "Ee"]
alphabet.each_with_index do |letter_pair, idx|
  puts "#{letter_pair} is at  #{idx} index"
end

# each_with_index iterates through each element in an array, and extracts
#   the element, as well as the index, where index is the second argument
#   of a block.



# => Aa is at  0 index
# => Bb is at  1 index
# => Cc is at  2 index
# => Dd is at  3 index
# => Ee is at  4 index



# 6.8
# Write a program that iterates over an array and builds a new array
#   that is the result of incrementing each value in the original array
#   by a value of 2.
# You should have two arrays at the end of this program...
# a) The original array
# b) The new array you have created.

# Print both arrays to the screen using the `p` method instead of `puts`.

# Solution one way
=begin
nums = [1, 2, 3, 4, 5]
nums2 = nums.map {|x| 2+x}

p nums
p nums2
=end


# Solution a different way
=begin
nums = [1, 2, 3, 4, 5]
nums2 = []

nums.each do |n|
  nums2 << n + 2
end

p nums
p nums2
=end


# Solution another different way
nums = [1, 2, 3, 4, 5]
nums2 = nums.map do |n|
  n + 2
end

p nums
p nums2

# => [1, 2, 3, 4, 5]
# => [3, 4, 5, 6, 7]