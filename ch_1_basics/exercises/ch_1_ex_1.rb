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