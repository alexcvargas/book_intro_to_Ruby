# 3. Add another section onto name.rb that prints the name of the user 10 times.
# You must do this without explicitly writing the puts method 10x in a row.
# Hint: you can use the `times` method to do something repeatedly.


# name.rb cont.

print "Please type in your first name: "
first_name = gets.chomp
first_name.capitalize!

print "Please type in your last name: "
last_name = gets.chomp
last_name.capitalize!

full_name = first_name + " " + last_name

puts "Hi #{first_name} #{last_name}, welcome!"
10.times { puts full_name }


=begin
# name.rb cont.

puts "What is your name?"
name = gets.chomp
10.times do
#  puts "Hello " + name  (just testing this out and this does work as well)
puts name
end

=end