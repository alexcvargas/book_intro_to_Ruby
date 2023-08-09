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
if 11 <= 9             # this is false ..Ruby will move on to line 61
  puts "Alright."
elsif 11 >= 9          # this is true:
  puts "Alright now!"  # thus, program stop after this line is executed
elsif 10 == 10
  puts "ALRIGHT NOW"   # this is true
else                
  puts "Alrighty!"
end
# => "Alright now!"
