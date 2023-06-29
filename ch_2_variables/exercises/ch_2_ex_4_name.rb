# 4. Modify `name.rb` again so that it first asks the user for their first name,
#   then saves it into a variable, and then does the same for the last name.
# Lastly, the program should output their full name all at once.


# name.rb cont.

print "Please type in your first name: "
first_name = gets.chomp
first_name.capitalize!

print "Please type in your last name: "
last_name = gets.chomp
last_name.capitalize!

full_name = first_name + " " + last_name

# puts "Hi #{first_name} #{last_name}, welcome!"
# 10.times { puts full_name }
puts full_name



=begin
# name.rb cont.

puts "What is your name?"
name = gets.chomp
10.times do
#  puts "Hello " + name  (just testing this out and this does work as well)
puts name
end

=end