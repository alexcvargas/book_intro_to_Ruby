a = 5

def some_method
  a = 3
end

puts a

# => 5
# Note: method definitions create their own scope outside the regular flow of execution.
# This is why local vars within a method def cannot be ref from outside the method def.
# Since `a = 3` is definined within the scope of the method definition...
#   When we type `puts a` ...the system will reference the initialize on line 1.
# If we wanted the value of a to be 3...we would have
#   to pass a parameter into the method `some_method` to get access to the a = 3 line of code on line 4.

# In short, method definitions create their own scope that's entirely
#   outside of the execution flow.