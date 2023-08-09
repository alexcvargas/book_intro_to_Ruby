# 5. When you run the following code...
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end
equal_to_four(5)

# You get the following error message..
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# Question:
# Why do you get this error and how can you fix it?

# Answer:
# You get this error because the method equal_to_four with parameter x
#   does not have the expected keyword `end`
# The code is written such that you think the final end on line 7 belongs to
#   the method definition but that is not true.
# We need one more end on line 8 to fix this issue.
# Moreover, we need to add a tab to the end on line 7 to fix the syntax.

# The result of running this code is:
# => nope
# The code also no longer results in an error when run.