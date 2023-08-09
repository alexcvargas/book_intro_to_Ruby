# case statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
    puts "a is 6"
else
    puts "a is neither 5, nor 6"
end

# This example is roughly equivalent to the following if/elsif/else statement:

# if_statement.rb

a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# The chief differences are that we only need to specify the variable we want
#   to test once (as the argument to `case`) and we don't specify `a ==` on
#   the individual `when` statements.

# You can also save the result of a case statement into a variable.
# Let's refactor the code above to do just that.
# This way we don't have to write `puts` so many times.
