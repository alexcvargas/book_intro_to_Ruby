# 3. Write a program that takes a number from the user between 0 and 100
#   and reports back whether the number is between
#   0 and 50, 51 and 100, or above 100.

# The following was my answer...but this could be simplified even further
=begin
puts "type in a number and hit enter"
a = gets.chomp.to_i
  

if ((a >= 0) == true) && ((a <= 50) == true)
  puts "you entered #{a}, a number between 0 and 50"
elsif ((a > 0) == true) && ((a <= 100) == true)
  puts "you entered a positive number between 51 and 100"
elsif ((a > 0) == true) && ((a > 100) == true)
  puts "you entered a positive number above 100"
else
  puts "you entered a negative number"
end
=end

puts "type in a number between 0 and 100 and hit enter"
a = gets.chomp.to_i

# answer refactored
if a < 0
  puts "you entered a negative number, please restart and try again."
elsif a <= 50
  puts "you entered #{a}, a number between 0 and 50."
elsif a <= 100
  puts "you entered #{a}, a number between 51 and 100."
else
  puts "you entered #{a}, a positive number above 100."
end