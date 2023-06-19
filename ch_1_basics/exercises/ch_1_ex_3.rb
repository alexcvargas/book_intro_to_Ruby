# 3. Write a program that uses a hash to store a list of movie titles with the year they came out.
#   Then use the `puts` command to make your program print out the year of each movie to the screen.
#   The output for your program should look something like this:
# => 1975
# => 2004
# => 2013
# => 2001
# => 1981

movies = {"Jaws" => 1975, "Shrek 2" => 2004, "The Hunger Games: Catching Fire" => 2013, "Harry Potter and the Sorcerer's Stone" => 2001, "Superman II" => 1981}
puts movies["Jaws"]
puts movies["Shrek 2"]
puts movies["The Hunger Games: Catching Fire"]
puts movies["Harry Potter and the Sorcerer's Stone"]
puts movies["Superman II"]

# Other ways to solve this:
=begin
movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]
=end

# and another way to solve this that uses the new syntax for creating hashes (as of Ruby 1.9):
=begin
movies = { jaws: 1975,
           anchorman: 2004,
           man_of_steel: 2013,
           a_beautiful_mind: 2001,
           the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]
=end
