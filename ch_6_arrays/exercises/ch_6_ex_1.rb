#   Chapter 6 Exercises:
# 1. Below we have given you an array and a number.
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
