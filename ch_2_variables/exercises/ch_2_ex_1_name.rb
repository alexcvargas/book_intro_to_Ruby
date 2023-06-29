# 1. Write a program called name.rb that asks the user to type in their name and then
#   prints out a greeting message with their name included.

# name.rb

print "Please type in your first name: "
first_name = gets.chomp
first_name.capitalize!

print "Please type in your last name: "
last_name = gets.chomp
last_name.capitalize!

puts "Hi #{first_name} #{last_name}, welcome!"


=begin
puts "What is your name?"
name = gets.chomp
puts "Hello " + name
=end