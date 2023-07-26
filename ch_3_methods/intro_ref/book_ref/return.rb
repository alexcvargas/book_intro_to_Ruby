# return.rb
=begin

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value


# Here we're assigning the `returned_value` to the value returned
#   by the `add_three` method.
# Then we print `returned_value` to the output to see what it has inside it.
# Your output should print the value of `7`
#   because that's what the method call returned.
# Ruby methods ALWAYS return the evaluated result of the last line of an expression
#   unless an explicit return comes before it.


# return.rb
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value
# Your output should still be the same right?
# => 7

# Let's try a different option...
# return.rb
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
# Your output should still output `7` which is the number you told it to return.

# When you place a `return` in the middle of the `add_three` method definition,
#   it just returns the evaluated result of `number + 3`
#   which is 7 without executing the next line.


=end

def add_three(n)
  puts n + 3
end

p add_three(5)
#add_three(5).times { puts "will this work?" }