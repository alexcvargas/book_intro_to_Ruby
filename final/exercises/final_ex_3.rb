# 3. Using the following array [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   use the the `select` method to extract all the 
#   odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a1 = arr.select do |num|
  num.odd?
end

p a1



# book answer below:
=begin

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |number|
  number % 2 != 0
end

p new_array

=end