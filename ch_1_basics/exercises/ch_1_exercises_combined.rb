# CHAPTER 1 EXERCISES:
# 1. Add two strings together that, when concatenated, return
#   your first and last name as your full name in one string.
first_name_one = 'Lex'
last_name_one = 'Vargs'
full_name = first_name_one + ' ' + last_name_one
puts full_name
# simple string concatenation

first_name_two = 'Ralph'
last_name_two = 'Ion'
full_name_two = "#{first_name_two} #{last_name_two}"
puts full_name_two
# using string interpolation

# => Lex Vargs
# => Ralph Ion



# 2. Use the modulo operator, division, or a combination of both to take a 4 digit
#   number and find the digit in the:
#   1) thousands place
#   2) hundreds place
#   3) tens place
#   4) ones place

nums = 4321
thousands = nums / 1000
puts "Thousands digit = #{thousands}"
hundreds = (nums % 1000) / 100
puts "Hundreds digit = #{hundreds}"
tens = (nums % 100) / 10
puts "Tens digit = #{tens}"
ones = (nums % 10)
puts "Ones digit = #{ones}"

# => Thousands digit = 4
# => Hundreds digit = 3
# => Tens digit = 2
# => Ones digit = 1




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

# => 1975
# => 2004
# => 2013
# => 2001
# => 1981


# 4. Use the dates from the previous example and store them in an array.
#   Then make your program output the same thing as exercise 3.

dates = [1975, 2004, 2013, 2001, 1981]
puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

# => 1975
# => 2004
# => 2013
# => 2001
# => 1981


# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# 5! = 5 x 4 x 3 x 2 x 1
five_factorial = 5 * 4 * 3 * 2 * 1
six_factorial = 6 * five_factorial
seven_factorial = 7 * six_factorial
eight_factorial = 8 * seven_factorial

puts five_factorial
puts six_factorial
puts seven_factorial
puts eight_factorial

# => 120
# => 720
# => 5040
# => 40320


# 6. Write a program that calculates the squares of 3 float numbers
#   of your choosing and outputs the result to the screen.

pi_num = 3.14159
golden_ratio_num = 1.6180
euler_num = 2.7182

square_pi_num = pi_num * pi_num
square_golden_ratio_num = golden_ratio_num * golden_ratio_num
square_euler_num = euler_num * euler_num

puts "pi_num = #{pi_num} and it's square is #{square_pi_num}"
puts "golden_ratio_num = #{golden_ratio_num} and it's square is #{square_golden_ratio_num}"
puts "euler_num = #{euler_num} and it's square is #{square_euler_num}"

# you can also  do the following to calculate the square
# square_pi_num = pi_num**2

# => pi_num = 3.14159 and it's square is 9.869587728099999
# => golden_ratio_num = 1.618 and it's square is 2.6179240000000004
# => euler_num = 2.7182 and it's square is 7.3886112399999995


# 7. What does the following error message tell you?
puts "the following error: "
puts " SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>' "

puts "This means is the system was expecting a '}' to end what I think was "
puts "an array or hash being created. There is an open bracket with no closed bracket afterwards."