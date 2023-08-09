# Chapter 4 Exercises
# 1. Write down whether the following expression returns `true` or `false`.
# Then type the expressions into `irb` to see the results.
# 1a.
(32 * 4) >= 129
# step-by-step solution:
128 >= 129
# => false

# 1b.
false != !true
# step-by-step solution:
false != false # false does not equal false... is not true
# => false

# 1c.
true == 4
# => false
# 4 is a truthy value but it is not equal to the boolean of true.
# therefore, the answer is false

# 1d.
false == (847 == '847')
# step-by-step solution:
false == (false)
# the integer 847 does not equal the string '847'
false == false  # false does equal false... is true
# => true

# 1e.
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# step-by-step solution:
(false || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
(false || (!(true) || ((328 / 4) == 82)) || false
(false || (!(true) || ((true)) || false
(false || (!(true) || ((true)) || false
(false || (false   || ((true)) || false
(false || (false   || ((true)) || false
(false ||              (true)) || false
(false || true)                || false
true                           || false
true || false
# => true


# chapter 4 - exercise 2
# Write a method that takes a string as an argument.
# The method should return a new, all-caps version of the string, 
#   only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD".
# Hint: Ruby's string class has a few methods that would be helpful.
# Be sure to check out https://ruby-doc.org/3.2.0/String.html
def caps(string='')
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("one name")
puts caps("who are you seal?")



# 3. Write a program that takes a number from the user between 0 and 100
#   and reports back whether the number is between
#   0 and 50, 51 and 100, or above 100.

# The following was my answer...but this could be simplified even further
=begin
puts "type in a number and hit enter"
a = gets.chomp.to_i
  

if ((a >= 0) == true) && ((a <= 50) == true)
  puts "you entered #{a}, a number between 0 and 50"
elsif ((a > 0) == true) && ((a <= 100) == true)
  puts "you entered a positive number between 51 and 100"
elsif ((a > 0) == true) && ((a > 100) == true)
  puts "you entered a positive number above 100"
else
  puts "you entered a negative number"
end
=end

puts "type in a number between 0 and 100 and hit enter"
a = gets.chomp.to_i

# answer refactored
if a < 0
  puts "you entered a negative number, please restart and try again."
elsif a <= 50
  puts "you entered #{a}, a number between 0 and 50."
elsif a <= 100
  puts "you entered #{a}, a number between 51 and 100."
else
  puts "you entered #{a}, a positive number above 100."
end



# 4. What will each block of code below print to the screen?
# Write your answer on a piece of paper or in a text editor and then run
#   each block of code to see if you were correct.

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# since the string of 4 does not equal the integer of 4...this is false
#   so the output will be the 2nd option ...basically the else part of this code
#   where the code reads puts("FALSE")
# => "FALSE"

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

# Let's break down the if statement
# step-by-step:
if ((x * 3) / 2) == (4 + 4 - x - 3)
if ((2 * 3) / 2) == (4 + 4 - 2 - 3)
if (     (6)/ 2) == (3)
if (          3) == (3)
if 3 == 3 # this is true
# answer is:
# => "Did you get it right?"

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW"
else
  puts "Alrighty!"
end

# Let's break this down the if/elsif/else statement
# step-by-step:
y = 9
x = 10
if (10 + 1) <= (9)
  puts "Alright."
elsif (10 + 1) >= (9)
  puts "Alright now!"
elsif (9 + 1) == 10
  puts "ALRIGHT NOW"
else
  puts "Alrighty!"
end
# and then further...
y = 9
x = 10
if 11 <= 9             # this is false
  puts "Alright."
elsif 11 >= 9          # this is true:
  puts "Alright now!"  # thus, program stop after this line is executed
elsif 10 == 10
  puts "ALRIGHT NOW"   # this is true
else                
  puts "Alrighty!"
end
# => "Alright now!"



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



# 6. Write down whether the expressions return `true` or `false` or raise an error.
#   Then, type the expressions into `irb` to see the results.

# 6a.
(32 * 4) >= "129"
# step-by-step:
128 >= "129"
# integer compared to string in double quotes raises the following error:
#   comparison of Integer with String failed (ArgumentError)
# => false
# even if we changed 128 >= "128" we still get the same error
#   you cannot compare an integer with a string in double quotes


# 6b.
847 == '847'
# => false - integer compared to a string in single quotes results in false

# 6c.
'847' < '846'
# step-by-step:
# 1st char eval: 8 < 8  # false..go Next
# 2nd char eval: 4 < 4  # false..go Next
# 3rd char eval: 7 < 6  # false ..end of string
# => false

# 6d.
'847' > '846'
# 1st char eval: 8 > 8  # false..go Next
# 2nd char eval: 4 > 4  # false..go Next
# 3rd char eval: 7 > 6  # true..end of string
# => true

# 6e.
'847' > '8478'
# 1st char eval: 8 > 8  # false..go Next
# 2nd char eval: 4 > 4  # false..go Next
# 3rd char eval: 7 > 7  # false..end of shortest length string
                        # and Thus, the rule is now:
                        # the shorter string < longer string
# in our case...the shorter string is said to be greater than the longer string
#   which is false
# => false

# 6f.
'847' < '8478'
# 1st char eval: 8 < 8  # false..go Next
# 2nd char eval: 4 < 4  # false..go Next
# 3rd char eval: 7 < 7  # false..end of shortest length string
                        # and Thus, the rule is now:
                        # the shorter string < longer string
# in our case...the shorter string is said to be < longer string
# which is true
# => true
