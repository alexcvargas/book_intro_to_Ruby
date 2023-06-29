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

# => Hi Lex Vargs, welcome!

=begin
puts "What is your name?"
name = gets.chomp
puts "Hello " + name
=end

# => Hello Lex Vargs


# 2. Write a program called `age.rb` that asks a user how old they are and then
#   tells them how old they will be in 10, 20, 30, and 40 years.
# Below is the output for someone 20 years old.
# Output of age.rb for someone 20 years old

# => How old are you?
# => In 10 years you will be:
# => 30
# => In 20 years you will be:
# => 40
# => In 30 years you will be:
# => 50
# => In 40 years you will be:
# => 60

# age.rb

puts "How old are you?"
age = gets.chomp.to_i
age_plus_ten = age + 10
age_plus_twenty = age + 20
age_plus_thirty = age + 30
age_plus_forty = age + 40

puts "In 10 years you will be #{age_plus_ten} years old."
puts "In 20 years you will be #{age_plus_twenty} years old."
puts "In 20 years you will be #{age_plus_thirty} years old."
puts "In 20 years you will be #{age_plus_forty} years young."



=begin
puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40
=end

# => How old are you?
# => 20
# => In 10 years you will be:
# => 30
# => In 20 years you will be:
# => 40
# => In 30 years you will be:
# => 50
# => In 40 years you will be:
# => 60


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

# => Lex Vargs
# => ... (9 more times)


# 4. Modify `name.rb` again so that it first asks the user for their first name,
#   then saves it into a variable, and then does the same for the last name.
# Lastly, the program should output their full name all at once.

# We basically already have done this but are missing one step...
full_name = first_name + " " + last_name

# puts "Hi #{first_name} #{last_name}, welcome!"
# 10.times { puts full_name }
puts full_name


# 5a. Look at the following program and answer:
#   What does x print to the screen?
#   Compare your results to that of 5b and tell us why they are the same/different? Why?

# 5a.
x = 0
3.times do
  x += 1
end
puts x
# initial thought is x = 3 
# => 3
# you are correct!!
# `x` was init'd on line 138 in the outer scope
# `x` was accessible inside the inner scope of the block on line 140
#   and was successfully output on line 142 in the outer scope.


# 5b. Look at the following program and answer:
#   What does x print to the screen?
#   Compare your results to that of 5a and tell us why they are the same/different? Why?

#5b.
y = 0
3.times do
  y += 1
  x = :y
end
puts x
# my initial thought is this puts out an undefined error because you are out of scope
# The rule is: inner scope can access vars init'd in an outer scope, but not visa versa.
# In this example ...you have an outer scope trying to access a variable `x`
#   that was initialized in an inner scope, which results in an error.



# In  conclusion, 5a. yiels x = 3 which is expected...
# In 5b. you get an error because we try to access x which was only definined in the inner scope.
# In 5b. the program throws an error `undefined local variable or method`
#   because `x` is not available as it is created within the scope of the `do/end` block.
# In other words...x was initialized within the `do/end` block.
# We know that blocks create an inner scope.
# Variables initialized within an inner scope are not avail in an outer scope.
# So when we see `puts x` outside of the block ...we get an error.
# Because x was init'd in that inner scope,
#   Ruby cannot see what `x` is on line 157 when it reads `puts x`.
# However, we can output `y`. Which we will assume is y = 3
# Inner scopes can access vars init'd in the outer scope...
#   but the outer scope cannot access vars init'd in the inner scope.
