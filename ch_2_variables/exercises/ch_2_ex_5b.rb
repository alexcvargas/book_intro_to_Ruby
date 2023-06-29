=begin
# 5a.

x = 0
3.times do
  x += 1
end
puts x

# initial thought is x = 3 
=end


# 5b. Look at the following program and answer:
#   What does x print to the screen?
#   Compare your results to that of 5a and tell us why they are the same/different? Why?

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