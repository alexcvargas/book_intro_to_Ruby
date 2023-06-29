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