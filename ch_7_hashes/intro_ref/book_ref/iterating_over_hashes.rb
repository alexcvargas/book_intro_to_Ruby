# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown' }

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# We use the `each` method like before, 
#   but this time we assign a variable to both the key and the value. 
#   In this example we are setting the key to the `key` variable and the value to the value variable. 
#   Run this program at the command line with ruby iterating_over_hashes.rb 
#   to see the results. 
#   The output is:

# => Bob's name is bob
# => Bob's height is 6 ft
# => Bob's weight is 160 lbs
# => Bob's hair is brown