# 7.3a-7.3d
# Using some of Ruby's built-in Hash methods, 
# a) write a program that loops through a hash and prints all of the keys
# b) Then write a program that does the same thing except printing the values.
# c) Finally, write a program that prints both

# 7.3a
# write a program that loops through a hash and prints all of the keys

h = {one: 1, two: 2, three: 3, four: 4, five: 5}



h.each do |key, value|
  puts "#{key}"
end
